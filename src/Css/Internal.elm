module Css.Internal exposing (AnimationProperty(..), ColorValue, ExplicitLength, IncompatibleUnits(..), Length, LengthOrAutoOrCoverOrContain, TimingFunction, compileKeyframes, cubicBezier, ease, easeIn, easeInOut, easeOut, getOverloadedProperty, lengthConverter, lengthForOverloadedProperty, linear, stepEnd, stepStart, timingFunctionToString)

import Css.Preprocess as Preprocess exposing (Style)
import Css.String
import Css.Structure as Structure exposing (Compatible(..))


type IncompatibleUnits
    = IncompatibleUnits


type alias ColorValue compatible =
    { compatible | value : String, color : Compatible }


type alias LengthOrAutoOrCoverOrContain compatible =
    { compatible | value : String, lengthOrAutoOrCoverOrContain : Compatible }


type alias Length compatible units =
    { compatible
        | value : String
        , length : Compatible
        , numericValue : Float
        , units : units
        , unitLabel : String
    }


type alias ExplicitLength units =
    { value : String
    , numericValue : Float
    , units : units
    , unitLabel : String
    , length : Compatible
    , lengthOrAuto : Compatible
    , lengthOrNumber : Compatible
    , lengthOrNone : Compatible
    , lengthOrMinMaxDimension : Compatible
    , lengthOrNoneOrMinMaxDimension : Compatible
    , lineHeight : Compatible
    , textIndent : Compatible
    , flexBasis : Compatible
    , absoluteLength : Compatible
    , lengthOrNumberOrAutoOrNoneOrContent : Compatible
    , fontSize : Compatible
    , lengthOrAutoOrCoverOrContain : Compatible
    , calc : Compatible
    }


type AnimationProperty
    = Property String


type TimingFunction
    = Ease
    | Linear
    | EaseIn
    | EaseOut
    | EaseInOut
    | StepStart
    | StepEnd
    | CubicBezier Float Float Float Float


{-| CSS ease timing function
-}
ease : TimingFunction
ease =
    Ease


{-| CSS linear timing function
-}
linear : TimingFunction
linear =
    Linear


{-| CSS easeIn timing function
-}
easeIn : TimingFunction
easeIn =
    EaseIn


{-| CSS easeOut timing function
-}
easeOut : TimingFunction
easeOut =
    EaseOut


{-| CSS easeInOut timing function
-}
easeInOut : TimingFunction
easeInOut =
    EaseInOut


{-| CSS stepStart timing function
-}
stepStart : TimingFunction
stepStart =
    StepStart


{-| CSS stepEnd timing function
-}
stepEnd : TimingFunction
stepEnd =
    StepEnd


{-| CSS cubicBezier timing function
-}
cubicBezier : Float -> Float -> Float -> Float -> TimingFunction
cubicBezier f1 f2 f3 f4 =
    CubicBezier f1 f2 f3 f4


timingFunctionToString : TimingFunction -> String
timingFunctionToString tf =
    case tf of
        Ease ->
            "ease"

        Linear ->
            "linear"

        EaseIn ->
            "ease-in"

        EaseOut ->
            "ease-out"

        EaseInOut ->
            "ease-in-out"

        StepStart ->
            "step-start"

        StepEnd ->
            "step-end"

        CubicBezier float float2 float3 float4 ->
            "cubic-bezier("
                ++ String.fromFloat float
                ++ " , "
                ++ String.fromFloat float2
                ++ " , "
                ++ String.fromFloat float3
                ++ " , "
                ++ String.fromFloat float4
                ++ ")"


{-| Used only for compiling keyframes. This does not compile to valid standalone
CSS, but rather to the body of an @keyframes at-rule.

It will be up to other parts of the stystem to generate the @keyframes rule
itself, including the keyframe name. Since keyframe name is generated from a
hash of the string body, we need to be able to compile the body independently.

**NOTE:** This ignores !important, selectors (including pseudo-class and
pseudo-element selectors), and media queries, because those are not supported
in keyframe declarations.

-}
compileKeyframes : List ( Int, List AnimationProperty ) -> String
compileKeyframes tuples =
    Css.String.mapJoin printKeyframeSelector "" tuples


printKeyframeSelector : ( Int, List AnimationProperty ) -> String
printKeyframeSelector ( percentage, properties ) =
    let
        percentageStr =
            String.fromInt percentage ++ "%"

        propertiesStr =
            Css.String.mapJoin (\(Property prop) -> prop ++ ";") "" properties
    in
    percentageStr ++ "{" ++ propertiesStr ++ "}"


{-| Caution: trickery ahead!

This is for use with overloaded CSS properties like `left` that need to be keys
in some places and values in othes. You give it a Style that evaluates to the
relevant key, and then use that key as your value.

For example, `left` is a Style that takes a Length and adds a property like
"left: 3px". What this does is take `left`, pass it `zero` (to create a
"left: 0" definition), then inspects that definition that it just created to
extract the key (in this case the string "left"), then uses that key as the
value for this property.

In this way you can use this function to define textAlign, and allow textAlign
to accept `left` as a value, in which case it will construct "text-align: left"
as the end user expects.

Other notes:

`desiredKey` is the key of the property.
`functionName` is just for better error messages.

-}
getOverloadedProperty : String -> String -> Style -> Style
getOverloadedProperty functionName desiredKey style =
    case style of
        Preprocess.AppendProperty (Structure.Property str) ->
            let
                key =
                    String.split ":" str
                        |> List.head
                        |> Maybe.withDefault ""
            in
            -- Use the given style's Key as the resulting property's value.
            property desiredKey key

        Preprocess.ExtendSelector selector _ ->
            property desiredKey ("elm-css-error-cannot-apply-" ++ functionName ++ "-with-inapplicable-Style-for-selector")

        Preprocess.NestSnippet combinator _ ->
            property desiredKey ("elm-css-error-cannot-apply-" ++ functionName ++ "-with-inapplicable-Style-for-combinator")

        Preprocess.WithPseudoElement pseudoElement _ ->
            property desiredKey ("elm-css-error-cannot-apply-" ++ functionName ++ "-with-inapplicable-Style-for-pseudo-element setter")

        Preprocess.WithMedia _ _ ->
            property desiredKey ("elm-css-error-cannot-apply-" ++ functionName ++ "-with-inapplicable-Style-for-media-query")

        Preprocess.WithKeyframes _ ->
            property desiredKey ("elm-css-error-cannot-apply-" ++ functionName ++ "-with-inapplicable-Style-for-keyframes")

        Preprocess.ApplyStyles [] ->
            property desiredKey ("elm-css-error-cannot-apply-" ++ functionName ++ "-with-empty-Style")

        Preprocess.ApplyStyles (only :: []) ->
            getOverloadedProperty functionName desiredKey only

        Preprocess.ApplyStyles (first :: rest) ->
            getOverloadedProperty functionName desiredKey (Preprocess.ApplyStyles rest)


{-| Define a custom property.

    css [ property "-webkit-font-smoothing" "none" ]

...outputs

    -webkit-font-smoothing: none;

-}
property : String -> String -> Style
property key value =
    (key ++ ":" ++ value)
        |> Structure.Property
        |> Preprocess.AppendProperty


lengthForOverloadedProperty : ExplicitLength IncompatibleUnits
lengthForOverloadedProperty =
    lengthConverter IncompatibleUnits "" 0


lengthConverter : units -> String -> Float -> ExplicitLength units
lengthConverter units unitLabel numericValue =
    { value = String.fromFloat numericValue ++ unitLabel
    , numericValue = numericValue
    , units = units
    , unitLabel = unitLabel
    , length = Compatible
    , lengthOrAuto = Compatible
    , lengthOrNumber = Compatible
    , lengthOrNone = Compatible
    , lengthOrMinMaxDimension = Compatible
    , lengthOrNoneOrMinMaxDimension = Compatible
    , textIndent = Compatible
    , flexBasis = Compatible
    , lengthOrNumberOrAutoOrNoneOrContent = Compatible
    , fontSize = Compatible
    , absoluteLength = Compatible
    , lengthOrAutoOrCoverOrContain = Compatible
    , lineHeight = Compatible
    , calc = Compatible
    }
