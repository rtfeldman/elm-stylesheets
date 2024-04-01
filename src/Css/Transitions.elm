module Css.Transitions exposing
    ( Transition, transition
    , ease, linear, easeIn, easeOut, easeInOut, stepStart, stepEnd, cubicBezier
    , background, background2, background3, backgroundColor, backgroundColor2, backgroundColor3, backgroundPosition, backgroundPosition2, backgroundPosition3, backgroundSize, backgroundSize2, backgroundSize3, border, border2, border3, borderBottom, borderBottom2, borderBottom3, borderBottomColor, borderBottomColor2, borderBottomColor3, borderBottomLeftRadius, borderBottomLeftRadius2, borderBottomLeftRadius3, borderBottomRightRadius, borderBottomRightRadius2, borderBottomRightRadius3, borderBottomWidth, borderBottomWidth2, borderBottomWidth3, borderColor, borderColor2, borderColor3, borderLeft, borderLeft2, borderLeft3, borderLeftColor, borderLeftColor2, borderLeftColor3, borderLeftWidth, borderLeftWidth2, borderLeftWidth3, borderRadius, borderRadius2, borderRadius3, borderRight, borderRight2, borderRight3, borderRightColor, borderRightColor2, borderRightColor3, borderRightWidth, borderRightWidth2, borderRightWidth3, borderTop, borderTop2, borderTop3, borderTopColor, borderTopColor2, borderTopColor3, borderTopLeftRadius, borderTopLeftRadius2, borderTopLeftRadius3, borderTopRightRadius, borderTopRightRadius2, borderTopRightRadius3, borderTopWidth, borderTopWidth2, borderTopWidth3, borderWidth, borderWidth2, borderWidth3, bottom, bottom2, bottom3, boxShadow, boxShadow2, boxShadow3, caretColor, caretColor2, caretColor3, clip, clip2, clip3, clipPath, clipPath2, clipPath3, color, color2, color3, columnCount, columnCount2, columnCount3, columnGap, columnGap2, columnGap3, columnRule, columnRule2, columnRule3, columnRuleColor, columnRuleColor2, columnRuleColor3, columnRuleWidth, columnRuleWidth2, columnRuleWidth3, columnWidth, columnWidth2, columnWidth3, columns, columns2, columns3, filter, filter2, filter3, flex, flex2, flex3, flexBasis, flexBasis2, flexBasis3, flexGrow, flexGrow2, flexGrow3, flexShrink, flexShrink2, flexShrink3, font, font2, font3, fontSize, fontSize2, fontSize3, fontSizeAdjust, fontSizeAdjust2, fontSizeAdjust3, fontStretch, fontStretch2, fontStretch3, fontVariationSettings, fontVariationSettings2, fontVariationSettings3, fontWeight, fontWeight2, fontWeight3, gridColumnGap, gridColumnGap2, gridColumnGap3, gridGap, gridGap2, gridGap3, gridRowGap, gridRowGap2, gridRowGap3, height, height2, height3, left, left2, left3, letterSpacing, letterSpacing2, letterSpacing3, lineHeight, lineHeight2, lineHeight3, margin, margin2, margin3, marginBottom, marginBottom2, marginBottom3, marginLeft, marginLeft2, marginLeft3, marginRight, marginRight2, marginRight3, marginTop, marginTop2, marginTop3, mask, mask2, mask3, maskPosition, maskPosition2, maskPosition3, maskSize, maskSize2, maskSize3, maxHeight, maxHeight2, maxHeight3, maxWidth, maxWidth2, maxWidth3, minHeight, minHeight2, minHeight3, minWidth, minWidth2, minWidth3, objectPosition, objectPosition2, objectPosition3, offset, offset2, offset3, offsetAnchor, offsetAnchor2, offsetAnchor3, offsetDistance, offsetDistance2, offsetDistance3, offsetPath, offsetPath2, offsetPath3, offsetRotate, offsetRotate2, offsetRotate3, opacity, opacity2, opacity3, order, order2, order3, outline, outline2, outline3, outlineColor, outlineColor2, outlineColor3, outlineOffset, outlineOffset2, outlineOffset3, outlineWidth, outlineWidth2, outlineWidth3, padding, padding2, padding3, paddingBottom, paddingBottom2, paddingBottom3, paddingLeft, paddingLeft2, paddingLeft3, paddingRight, paddingRight2, paddingRight3, paddingTop, paddingTop2, paddingTop3, right, right2, right3, tabSize, tabSize2, tabSize3, textIndent, textIndent2, textIndent3, textShadow, textShadow2, textShadow3, top, top2, top3, transform, transform2, transform3, transformOrigin, transformOrigin2, transformOrigin3, verticalAlign, verticalAlign2, verticalAlign3, visibility, visibility2, visibility3, width, width2, width3, wordSpacing, wordSpacing2, wordSpacing3, zIndex, zIndex2, zIndex3
    )

{-| Define [CSS transitions](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Transitions).

    import Css exposing (..)
    import Css.Transitions exposing (easeInOut, transition)
    import Html
    import Html.Styled exposing (..)
    import Html.Styled.Attributes exposing (css)

    {-| In this case we are specifying a transition such that:

      - When the backgroundColor changes will interpolate between the current value and
        the new value over 1000 milliseconds with no delay and a default (ease) easing function
      - When the transform changes will interpolate between the current value and the
        new value over 500 milliseconds with no delay and an easeInOut easing function

    We are then using the `hover` function to specify that the backgroundColor and transform change on hover

    -}
    primaryButton =
        styled button
            [ backgroundColor (rgb 241 241 241)
            , transform (scaleX 1)
            , hover
                [ backgroundColor (rgb 220 220 220)
                , transform (scaleX 1.2)
                ]
            , transition
                [ Css.Transitions.backgroundColor 1000
                , Css.Transitions.transform3 500 0 easeInOut
                ]
            ]


# Transition

@docs Transition, transition


# Timing functions

These functions are used to specify the [CSS timing function](https://developer.mozilla.org/en-US/docs/Web/CSS/transition-timing-function)
which describes how the animation speeds up or slows down over time.

@docs ease, linear, easeIn, easeOut, easeInOut, stepStart, stepEnd, cubicBezier


# Properties

These functions are used to create a transition, generally they come in three flavours, allowing you to specify:

  - Duration, delay and timing function
  - Duration and delay with default timing function (ease)
  - Just duration (default timing function and no delay)

An example of this would be the [`background3`](#background3), [`background2`](#background2) and [`background`](#background) functions

@docs background, background2, background3, backgroundColor, backgroundColor2, backgroundColor3, backgroundPosition, backgroundPosition2, backgroundPosition3, backgroundSize, backgroundSize2, backgroundSize3, border, border2, border3, borderBottom, borderBottom2, borderBottom3, borderBottomColor, borderBottomColor2, borderBottomColor3, borderBottomLeftRadius, borderBottomLeftRadius2, borderBottomLeftRadius3, borderBottomRightRadius, borderBottomRightRadius2, borderBottomRightRadius3, borderBottomWidth, borderBottomWidth2, borderBottomWidth3, borderColor, borderColor2, borderColor3, borderLeft, borderLeft2, borderLeft3, borderLeftColor, borderLeftColor2, borderLeftColor3, borderLeftWidth, borderLeftWidth2, borderLeftWidth3, borderRadius, borderRadius2, borderRadius3, borderRight, borderRight2, borderRight3, borderRightColor, borderRightColor2, borderRightColor3, borderRightWidth, borderRightWidth2, borderRightWidth3, borderTop, borderTop2, borderTop3, borderTopColor, borderTopColor2, borderTopColor3, borderTopLeftRadius, borderTopLeftRadius2, borderTopLeftRadius3, borderTopRightRadius, borderTopRightRadius2, borderTopRightRadius3, borderTopWidth, borderTopWidth2, borderTopWidth3, borderWidth, borderWidth2, borderWidth3, bottom, bottom2, bottom3, boxShadow, boxShadow2, boxShadow3, caretColor, caretColor2, caretColor3, clip, clip2, clip3, clipPath, clipPath2, clipPath3, color, color2, color3, columnCount, columnCount2, columnCount3, columnGap, columnGap2, columnGap3, columnRule, columnRule2, columnRule3, columnRuleColor, columnRuleColor2, columnRuleColor3, columnRuleWidth, columnRuleWidth2, columnRuleWidth3, columnWidth, columnWidth2, columnWidth3, columns, columns2, columns3, filter, filter2, filter3, flex, flex2, flex3, flexBasis, flexBasis2, flexBasis3, flexGrow, flexGrow2, flexGrow3, flexShrink, flexShrink2, flexShrink3, font, font2, font3, fontSize, fontSize2, fontSize3, fontSizeAdjust, fontSizeAdjust2, fontSizeAdjust3, fontStretch, fontStretch2, fontStretch3, fontVariationSettings, fontVariationSettings2, fontVariationSettings3, fontWeight, fontWeight2, fontWeight3, gridColumnGap, gridColumnGap2, gridColumnGap3, gridGap, gridGap2, gridGap3, gridRowGap, gridRowGap2, gridRowGap3, height, height2, height3, left, left2, left3, letterSpacing, letterSpacing2, letterSpacing3, lineHeight, lineHeight2, lineHeight3, margin, margin2, margin3, marginBottom, marginBottom2, marginBottom3, marginLeft, marginLeft2, marginLeft3, marginRight, marginRight2, marginRight3, marginTop, marginTop2, marginTop3, mask, mask2, mask3, maskPosition, maskPosition2, maskPosition3, maskSize, maskSize2, maskSize3, maxHeight, maxHeight2, maxHeight3, maxWidth, maxWidth2, maxWidth3, minHeight, minHeight2, minHeight3, minWidth, minWidth2, minWidth3, objectPosition, objectPosition2, objectPosition3, offset, offset2, offset3, offsetAnchor, offsetAnchor2, offsetAnchor3, offsetDistance, offsetDistance2, offsetDistance3, offsetPath, offsetPath2, offsetPath3, offsetRotate, offsetRotate2, offsetRotate3, opacity, opacity2, opacity3, order, order2, order3, outline, outline2, outline3, outlineColor, outlineColor2, outlineColor3, outlineOffset, outlineOffset2, outlineOffset3, outlineWidth, outlineWidth2, outlineWidth3, padding, padding2, padding3, paddingBottom, paddingBottom2, paddingBottom3, paddingLeft, paddingLeft2, paddingLeft3, paddingRight, paddingRight2, paddingRight3, paddingTop, paddingTop2, paddingTop3, right, right2, right3, tabSize, tabSize2, tabSize3, textIndent, textIndent2, textIndent3, textShadow, textShadow2, textShadow3, top, top2, top3, transform, transform2, transform3, transformOrigin, transformOrigin2, transformOrigin3, verticalAlign, verticalAlign2, verticalAlign3, visibility, visibility2, visibility3, width, width2, width3, wordSpacing, wordSpacing2, wordSpacing3, zIndex, zIndex2, zIndex3

-}

import Css
import Css.Internal

type alias TimingFunction
    = Css.Internal.TimingFunction


{-| CSS ease timing function
-}
ease : TimingFunction
ease =
    Css.Internal.ease


{-| CSS linear timing function
-}
linear : TimingFunction
linear =
    Css.Internal.linear


{-| CSS easeIn timing function
-}
easeIn : TimingFunction
easeIn =
    Css.Internal.easeIn


{-| CSS easeOut timing function
-}
easeOut : TimingFunction
easeOut =
    Css.Internal.easeOut


{-| CSS easeInOut timing function
-}
easeInOut : TimingFunction
easeInOut =
    Css.Internal.easeInOut


{-| CSS stepStart timing function
-}
stepStart : TimingFunction
stepStart =
    Css.Internal.stepStart


{-| CSS stepEnd timing function
-}
stepEnd : TimingFunction
stepEnd =
    Css.Internal.stepEnd


{-| CSS cubicBezier timing function
-}
cubicBezier : Float -> Float -> Float -> Float -> TimingFunction
cubicBezier =
    Css.Internal.cubicBezier


{-| This describes all of the aspects of a [CSS transition](https://developer.mozilla.org/en-US/docs/Web/CSS/transition), which will then be
compiled down to a string and added as a style property on elements

  - [animation](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_animated_properties): Which property to animate
  - [duration](https://developer.mozilla.org/en-US/docs/Web/CSS/transition-duration): The total time that the animation should take from start to end
  - [delay](https://developer.mozilla.org/en-US/docs/Web/CSS/transition-delay): Delay before the animation starts
  - [timing](https://developer.mozilla.org/en-US/docs/Web/CSS/transition-timing-function): CSS timing function which dictates how the animation speed varies over time

-}
type Transition
    = Transition
        { animation : Animatable
        , duration : Float
        , delay : Maybe Float
        , timing : Maybe TimingFunction
        }


{-| Create a [`Transition`](#Transition) for the [background](https://developer.mozilla.org/en-US/docs/Web/CSS/background)
property specifying duration, delay and timing function
-}
background3 : Float -> Float -> TimingFunction -> Transition
background3 =
    fullTransition Background


{-| Create a [`Transition`](#Transition) for the [background-color](https://developer.mozilla.org/en-US/docs/Web/CSS/background-color)
property specifying duration, delay and timing function
-}
backgroundColor3 : Float -> Float -> TimingFunction -> Transition
backgroundColor3 =
    fullTransition BackgroundColor


{-| Create a [`Transition`](#Transition) for the [background-position](https://developer.mozilla.org/en-US/docs/Web/CSS/background-position)
property specifying duration, delay and timing function
-}
backgroundPosition3 : Float -> Float -> TimingFunction -> Transition
backgroundPosition3 =
    fullTransition BackgroundPosition


{-| Create a [`Transition`](#Transition) for the [background-size](https://developer.mozilla.org/en-US/docs/Web/CSS/background-size)
property specifying duration, delay and timing function
-}
backgroundSize3 : Float -> Float -> TimingFunction -> Transition
backgroundSize3 =
    fullTransition BackgroundSize


{-| Create a [`Transition`](#Transition) for the [border](https://developer.mozilla.org/en-US/docs/Web/CSS/border)
property specifying duration, delay and timing function
-}
border3 : Float -> Float -> TimingFunction -> Transition
border3 =
    fullTransition Border


{-| Create a [`Transition`](#Transition) for the [border-bottom](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom)
property specifying duration, delay and timing function
-}
borderBottom3 : Float -> Float -> TimingFunction -> Transition
borderBottom3 =
    fullTransition BorderBottom


{-| Create a [`Transition`](#Transition) for the [border-bottom-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-color)
property specifying duration, delay and timing function
-}
borderBottomColor3 : Float -> Float -> TimingFunction -> Transition
borderBottomColor3 =
    fullTransition BorderBottomColor


{-| Create a [`Transition`](#Transition) for the [border-bottom-left-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-left-radius)
property specifying duration, delay and timing function
-}
borderBottomLeftRadius3 : Float -> Float -> TimingFunction -> Transition
borderBottomLeftRadius3 =
    fullTransition BorderBottomLeftRadius


{-| Create a [`Transition`](#Transition) for the [border-bottom-right-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-right-radius)
property specifying duration, delay and timing function
-}
borderBottomRightRadius3 : Float -> Float -> TimingFunction -> Transition
borderBottomRightRadius3 =
    fullTransition BorderBottomRightRadius


{-| Create a [`Transition`](#Transition) for the [border-bottom-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-width)
property specifying duration, delay and timing function
-}
borderBottomWidth3 : Float -> Float -> TimingFunction -> Transition
borderBottomWidth3 =
    fullTransition BorderBottomWidth


{-| Create a [`Transition`](#Transition) for the [border-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-color)
property specifying duration, delay and timing function
-}
borderColor3 : Float -> Float -> TimingFunction -> Transition
borderColor3 =
    fullTransition BorderColor


{-| Create a [`Transition`](#Transition) for the [border-left](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left)
property specifying duration, delay and timing function
-}
borderLeft3 : Float -> Float -> TimingFunction -> Transition
borderLeft3 =
    fullTransition BorderLeft


{-| Create a [`Transition`](#Transition) for the [border-left-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left-color)
property specifying duration, delay and timing function
-}
borderLeftColor3 : Float -> Float -> TimingFunction -> Transition
borderLeftColor3 =
    fullTransition BorderLeftColor


{-| Create a [`Transition`](#Transition) for the [border-left-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left-width)
property specifying duration, delay and timing function
-}
borderLeftWidth3 : Float -> Float -> TimingFunction -> Transition
borderLeftWidth3 =
    fullTransition BorderLeftWidth


{-| Create a [`Transition`](#Transition) for the [border-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius)
property specifying duration, delay and timing function
-}
borderRadius3 : Float -> Float -> TimingFunction -> Transition
borderRadius3 =
    fullTransition BorderRadius


{-| Create a [`Transition`](#Transition) for the [border-right](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right)
property specifying duration, delay and timing function
-}
borderRight3 : Float -> Float -> TimingFunction -> Transition
borderRight3 =
    fullTransition BorderRight


{-| Create a [`Transition`](#Transition) for the [border-right-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right-color)
property specifying duration, delay and timing function
-}
borderRightColor3 : Float -> Float -> TimingFunction -> Transition
borderRightColor3 =
    fullTransition BorderRightColor


{-| Create a [`Transition`](#Transition) for the [border-right-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right-width)
property specifying duration, delay and timing function
-}
borderRightWidth3 : Float -> Float -> TimingFunction -> Transition
borderRightWidth3 =
    fullTransition BorderRightWidth


{-| Create a [`Transition`](#Transition) for the [border-top](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top)
property specifying duration, delay and timing function
-}
borderTop3 : Float -> Float -> TimingFunction -> Transition
borderTop3 =
    fullTransition BorderTop


{-| Create a [`Transition`](#Transition) for the [border-top-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-color)
property specifying duration, delay and timing function
-}
borderTopColor3 : Float -> Float -> TimingFunction -> Transition
borderTopColor3 =
    fullTransition BorderTopColor


{-| Create a [`Transition`](#Transition) for the [border-top-left-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-left-radius)
property specifying duration, delay and timing function
-}
borderTopLeftRadius3 : Float -> Float -> TimingFunction -> Transition
borderTopLeftRadius3 =
    fullTransition BorderTopLeftRadius


{-| Create a [`Transition`](#Transition) for the [border-top-right-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-right-radius)
property specifying duration, delay and timing function
-}
borderTopRightRadius3 : Float -> Float -> TimingFunction -> Transition
borderTopRightRadius3 =
    fullTransition BorderTopRightRadius


{-| Create a [`Transition`](#Transition) for the [border-top-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-width)
property specifying duration, delay and timing function
-}
borderTopWidth3 : Float -> Float -> TimingFunction -> Transition
borderTopWidth3 =
    fullTransition BorderTopWidth


{-| Create a [`Transition`](#Transition) for the [border-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-width)
property specifying duration, delay and timing function
-}
borderWidth3 : Float -> Float -> TimingFunction -> Transition
borderWidth3 =
    fullTransition BorderWidth


{-| Create a [`Transition`](#Transition) for the [bottom](https://developer.mozilla.org/en-US/docs/Web/CSS/bottom)
property specifying duration, delay and timing function
-}
bottom3 : Float -> Float -> TimingFunction -> Transition
bottom3 =
    fullTransition Bottom


{-| Create a [`Transition`](#Transition) for the [box-shadow](https://developer.mozilla.org/en-US/docs/Web/CSS/box-shadow)
property specifying duration, delay and timing function
-}
boxShadow3 : Float -> Float -> TimingFunction -> Transition
boxShadow3 =
    fullTransition BoxShadow


{-| Create a [`Transition`](#Transition) for the [caret-color](https://developer.mozilla.org/en-US/docs/Web/CSS/caret-color)
property specifying duration, delay and timing function
-}
caretColor3 : Float -> Float -> TimingFunction -> Transition
caretColor3 =
    fullTransition CaretColor


{-| Create a [`Transition`](#Transition) for the [clip](https://developer.mozilla.org/en-US/docs/Web/CSS/clip)
property specifying duration, delay and timing function
-}
clip3 : Float -> Float -> TimingFunction -> Transition
clip3 =
    fullTransition Clip


{-| Create a [`Transition`](#Transition) for the [clip-path](https://developer.mozilla.org/en-US/docs/Web/CSS/clip-path)
property specifying duration, delay and timing function
-}
clipPath3 : Float -> Float -> TimingFunction -> Transition
clipPath3 =
    fullTransition ClipPath


{-| Create a [`Transition`](#Transition) for the [color](https://developer.mozilla.org/en-US/docs/Web/CSS/color)
property specifying duration, delay and timing function
-}
color3 : Float -> Float -> TimingFunction -> Transition
color3 =
    fullTransition Color


{-| Create a [`Transition`](#Transition) for the [column-count](https://developer.mozilla.org/en-US/docs/Web/CSS/column-count)
property specifying duration, delay and timing function
-}
columnCount3 : Float -> Float -> TimingFunction -> Transition
columnCount3 =
    fullTransition ColumnCount


{-| Create a [`Transition`](#Transition) for the [column-gap](https://developer.mozilla.org/en-US/docs/Web/CSS/column-gap)
property specifying duration, delay and timing function
-}
columnGap3 : Float -> Float -> TimingFunction -> Transition
columnGap3 =
    fullTransition ColumnGap


{-| Create a [`Transition`](#Transition) for the [column-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/column-rule)
property specifying duration, delay and timing function
-}
columnRule3 : Float -> Float -> TimingFunction -> Transition
columnRule3 =
    fullTransition ColumnRule


{-| Create a [`Transition`](#Transition) for the [column-rule-color](https://developer.mozilla.org/en-US/docs/Web/CSS/column-rule-color)
property specifying duration, delay and timing function
-}
columnRuleColor3 : Float -> Float -> TimingFunction -> Transition
columnRuleColor3 =
    fullTransition ColumnRuleColor


{-| Create a [`Transition`](#Transition) for the [column-rule-width](https://developer.mozilla.org/en-US/docs/Web/CSS/column-rule-width)
property specifying duration, delay and timing function
-}
columnRuleWidth3 : Float -> Float -> TimingFunction -> Transition
columnRuleWidth3 =
    fullTransition ColumnRuleWidth


{-| Create a [`Transition`](#Transition) for the [column-width](https://developer.mozilla.org/en-US/docs/Web/CSS/column-width)
property specifying duration, delay and timing function
-}
columnWidth3 : Float -> Float -> TimingFunction -> Transition
columnWidth3 =
    fullTransition ColumnWidth


{-| Create a [`Transition`](#Transition) for the [columns](https://developer.mozilla.org/en-US/docs/Web/CSS/columns)
property specifying duration, delay and timing function
-}
columns3 : Float -> Float -> TimingFunction -> Transition
columns3 =
    fullTransition Columns


{-| Create a [`Transition`](#Transition) for the [filter](https://developer.mozilla.org/en-US/docs/Web/CSS/filter)
property specifying duration, delay and timing function
-}
filter3 : Float -> Float -> TimingFunction -> Transition
filter3 =
    fullTransition Filter


{-| Create a [`Transition`](#Transition) for the [flex](https://developer.mozilla.org/en-US/docs/Web/CSS/flex)
property specifying duration, delay and timing function
-}
flex3 : Float -> Float -> TimingFunction -> Transition
flex3 =
    fullTransition Flex


{-| Create a [`Transition`](#Transition) for the [flex-basis](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-basis)
property specifying duration, delay and timing function
-}
flexBasis3 : Float -> Float -> TimingFunction -> Transition
flexBasis3 =
    fullTransition FlexBasis


{-| Create a [`Transition`](#Transition) for the [flex-grow](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-grow)
property specifying duration, delay and timing function
-}
flexGrow3 : Float -> Float -> TimingFunction -> Transition
flexGrow3 =
    fullTransition FlexGrow


{-| Create a [`Transition`](#Transition) for the [flex-shrink](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-shrink)
property specifying duration, delay and timing function
-}
flexShrink3 : Float -> Float -> TimingFunction -> Transition
flexShrink3 =
    fullTransition FlexShrink


{-| Create a [`Transition`](#Transition) for the [font](https://developer.mozilla.org/en-US/docs/Web/CSS/font)
property specifying duration, delay and timing function
-}
font3 : Float -> Float -> TimingFunction -> Transition
font3 =
    fullTransition Font


{-| Create a [`Transition`](#Transition) for the [font-size](https://developer.mozilla.org/en-US/docs/Web/CSS/font-size)
property specifying duration, delay and timing function
-}
fontSize3 : Float -> Float -> TimingFunction -> Transition
fontSize3 =
    fullTransition FontSize


{-| Create a [`Transition`](#Transition) for the [font-size-adjust](https://developer.mozilla.org/en-US/docs/Web/CSS/font-size-adjust)
property specifying duration, delay and timing function
-}
fontSizeAdjust3 : Float -> Float -> TimingFunction -> Transition
fontSizeAdjust3 =
    fullTransition FontSizeAdjust


{-| Create a [`Transition`](#Transition) for the [font-stretch](https://developer.mozilla.org/en-US/docs/Web/CSS/font-stretch)
property specifying duration, delay and timing function
-}
fontStretch3 : Float -> Float -> TimingFunction -> Transition
fontStretch3 =
    fullTransition FontStretch


{-| Create a [`Transition`](#Transition) for the [font-variation-settings](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variation-settings)
property specifying duration, delay and timing function
-}
fontVariationSettings3 : Float -> Float -> TimingFunction -> Transition
fontVariationSettings3 =
    fullTransition FontVariationSettings


{-| Create a [`Transition`](#Transition) for the [font-weight](https://developer.mozilla.org/en-US/docs/Web/CSS/font-weight)
property specifying duration, delay and timing function
-}
fontWeight3 : Float -> Float -> TimingFunction -> Transition
fontWeight3 =
    fullTransition FontWeight


{-| Create a [`Transition`](#Transition) for the [grid-column-gap](https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-gap)
property specifying duration, delay and timing function
-}
gridColumnGap3 : Float -> Float -> TimingFunction -> Transition
gridColumnGap3 =
    fullTransition GridColumnGap


{-| Create a [`Transition`](#Transition) for the [grid-gap](https://developer.mozilla.org/en-US/docs/Web/CSS/grid-gap)
property specifying duration, delay and timing function
-}
gridGap3 : Float -> Float -> TimingFunction -> Transition
gridGap3 =
    fullTransition GridGap


{-| Create a [`Transition`](#Transition) for the [grid-row-gap](https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-gap)
property specifying duration, delay and timing function
-}
gridRowGap3 : Float -> Float -> TimingFunction -> Transition
gridRowGap3 =
    fullTransition GridRowGap


{-| Create a [`Transition`](#Transition) for the [height](https://developer.mozilla.org/en-US/docs/Web/CSS/height)
property specifying duration, delay and timing function
-}
height3 : Float -> Float -> TimingFunction -> Transition
height3 =
    fullTransition Height


{-| Create a [`Transition`](#Transition) for the [left](https://developer.mozilla.org/en-US/docs/Web/CSS/left)
property specifying duration, delay and timing function
-}
left3 : Float -> Float -> TimingFunction -> Transition
left3 =
    fullTransition Left


{-| Create a [`Transition`](#Transition) for the [letter-spacing](https://developer.mozilla.org/en-US/docs/Web/CSS/letter-spacing)
property specifying duration, delay and timing function
-}
letterSpacing3 : Float -> Float -> TimingFunction -> Transition
letterSpacing3 =
    fullTransition LetterSpacing


{-| Create a [`Transition`](#Transition) for the [line-height](https://developer.mozilla.org/en-US/docs/Web/CSS/line-height)
property specifying duration, delay and timing function
-}
lineHeight3 : Float -> Float -> TimingFunction -> Transition
lineHeight3 =
    fullTransition LineHeight


{-| Create a [`Transition`](#Transition) for the [margin](https://developer.mozilla.org/en-US/docs/Web/CSS/margin)
property specifying duration, delay and timing function
-}
margin3 : Float -> Float -> TimingFunction -> Transition
margin3 =
    fullTransition Margin


{-| Create a [`Transition`](#Transition) for the [margin-bottom](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-bottom)
property specifying duration, delay and timing function
-}
marginBottom3 : Float -> Float -> TimingFunction -> Transition
marginBottom3 =
    fullTransition MarginBottom


{-| Create a [`Transition`](#Transition) for the [margin-left](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-left)
property specifying duration, delay and timing function
-}
marginLeft3 : Float -> Float -> TimingFunction -> Transition
marginLeft3 =
    fullTransition MarginLeft


{-| Create a [`Transition`](#Transition) for the [margin-right](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-right)
property specifying duration, delay and timing function
-}
marginRight3 : Float -> Float -> TimingFunction -> Transition
marginRight3 =
    fullTransition MarginRight


{-| Create a [`Transition`](#Transition) for the [margin-top](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-top)
property specifying duration, delay and timing function
-}
marginTop3 : Float -> Float -> TimingFunction -> Transition
marginTop3 =
    fullTransition MarginTop


{-| Create a [`Transition`](#Transition) for the [mask](https://developer.mozilla.org/en-US/docs/Web/CSS/mask)
property specifying duration, delay and timing function
-}
mask3 : Float -> Float -> TimingFunction -> Transition
mask3 =
    fullTransition Mask


{-| Create a [`Transition`](#Transition) for the [mask-position](https://developer.mozilla.org/en-US/docs/Web/CSS/mask-position)
property specifying duration, delay and timing function
-}
maskPosition3 : Float -> Float -> TimingFunction -> Transition
maskPosition3 =
    fullTransition MaskPosition


{-| Create a [`Transition`](#Transition) for the [mask-size](https://developer.mozilla.org/en-US/docs/Web/CSS/mask-size)
property specifying duration, delay and timing function
-}
maskSize3 : Float -> Float -> TimingFunction -> Transition
maskSize3 =
    fullTransition MaskSize


{-| Create a [`Transition`](#Transition) for the [max-height](https://developer.mozilla.org/en-US/docs/Web/CSS/max-height)
property specifying duration, delay and timing function
-}
maxHeight3 : Float -> Float -> TimingFunction -> Transition
maxHeight3 =
    fullTransition MaxHeight


{-| Create a [`Transition`](#Transition) for the [max-width](https://developer.mozilla.org/en-US/docs/Web/CSS/max-width)
property specifying duration, delay and timing function
-}
maxWidth3 : Float -> Float -> TimingFunction -> Transition
maxWidth3 =
    fullTransition MaxWidth


{-| Create a [`Transition`](#Transition) for the [min-height](https://developer.mozilla.org/en-US/docs/Web/CSS/min-height)
property specifying duration, delay and timing function
-}
minHeight3 : Float -> Float -> TimingFunction -> Transition
minHeight3 =
    fullTransition MinHeight


{-| Create a [`Transition`](#Transition) for the [min-width](https://developer.mozilla.org/en-US/docs/Web/CSS/min-width)
property specifying duration, delay and timing function
-}
minWidth3 : Float -> Float -> TimingFunction -> Transition
minWidth3 =
    fullTransition MinWidth


{-| Create a [`Transition`](#Transition) for the [object-position](https://developer.mozilla.org/en-US/docs/Web/CSS/object-position)
property specifying duration, delay and timing function
-}
objectPosition3 : Float -> Float -> TimingFunction -> Transition
objectPosition3 =
    fullTransition ObjectPosition


{-| Create a [`Transition`](#Transition) for the [offset](https://developer.mozilla.org/en-US/docs/Web/CSS/offset)
property specifying duration, delay and timing function
-}
offset3 : Float -> Float -> TimingFunction -> Transition
offset3 =
    fullTransition Offset


{-| Create a [`Transition`](#Transition) for the [offset-anchor](https://developer.mozilla.org/en-US/docs/Web/CSS/offset-anchor)
property specifying duration, delay and timing function
-}
offsetAnchor3 : Float -> Float -> TimingFunction -> Transition
offsetAnchor3 =
    fullTransition OffsetAnchor


{-| Create a [`Transition`](#Transition) for the [offset-distance](https://developer.mozilla.org/en-US/docs/Web/CSS/offset-distance)
property specifying duration, delay and timing function
-}
offsetDistance3 : Float -> Float -> TimingFunction -> Transition
offsetDistance3 =
    fullTransition OffsetDistance


{-| Create a [`Transition`](#Transition) for the [offset-path](https://developer.mozilla.org/en-US/docs/Web/CSS/offset-path)
property specifying duration, delay and timing function
-}
offsetPath3 : Float -> Float -> TimingFunction -> Transition
offsetPath3 =
    fullTransition OffsetPath


{-| Create a [`Transition`](#Transition) for the [offset-rotate](https://developer.mozilla.org/en-US/docs/Web/CSS/offset-rotate)
property specifying duration, delay and timing function
-}
offsetRotate3 : Float -> Float -> TimingFunction -> Transition
offsetRotate3 =
    fullTransition OffsetRotate


{-| Create a [`Transition`](#Transition) for the [opacity](https://developer.mozilla.org/en-US/docs/Web/CSS/opacity)
property specifying duration, delay and timing function
-}
opacity3 : Float -> Float -> TimingFunction -> Transition
opacity3 =
    fullTransition Opacity


{-| Create a [`Transition`](#Transition) for the [order](https://developer.mozilla.org/en-US/docs/Web/CSS/order)
property specifying duration, delay and timing function
-}
order3 : Float -> Float -> TimingFunction -> Transition
order3 =
    fullTransition Order


{-| Create a [`Transition`](#Transition) for the [outline](https://developer.mozilla.org/en-US/docs/Web/CSS/outline)
property specifying duration, delay and timing function
-}
outline3 : Float -> Float -> TimingFunction -> Transition
outline3 =
    fullTransition Outline


{-| Create a [`Transition`](#Transition) for the [outline-color](https://developer.mozilla.org/en-US/docs/Web/CSS/outline-color)
property specifying duration, delay and timing function
-}
outlineColor3 : Float -> Float -> TimingFunction -> Transition
outlineColor3 =
    fullTransition OutlineColor


{-| Create a [`Transition`](#Transition) for the [outline-offset](https://developer.mozilla.org/en-US/docs/Web/CSS/outline-offset)
property specifying duration, delay and timing function
-}
outlineOffset3 : Float -> Float -> TimingFunction -> Transition
outlineOffset3 =
    fullTransition OutlineOffset


{-| Create a [`Transition`](#Transition) for the [outline-width](https://developer.mozilla.org/en-US/docs/Web/CSS/outline-width)
property specifying duration, delay and timing function
-}
outlineWidth3 : Float -> Float -> TimingFunction -> Transition
outlineWidth3 =
    fullTransition OutlineWidth


{-| Create a [`Transition`](#Transition) for the [padding](https://developer.mozilla.org/en-US/docs/Web/CSS/padding)
property specifying duration, delay and timing function
-}
padding3 : Float -> Float -> TimingFunction -> Transition
padding3 =
    fullTransition Padding


{-| Create a [`Transition`](#Transition) for the [padding-bottom](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-bottom)
property specifying duration, delay and timing function
-}
paddingBottom3 : Float -> Float -> TimingFunction -> Transition
paddingBottom3 =
    fullTransition PaddingBottom


{-| Create a [`Transition`](#Transition) for the [padding-left](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-left)
property specifying duration, delay and timing function
-}
paddingLeft3 : Float -> Float -> TimingFunction -> Transition
paddingLeft3 =
    fullTransition PaddingLeft


{-| Create a [`Transition`](#Transition) for the [padding-right](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-right)
property specifying duration, delay and timing function
-}
paddingRight3 : Float -> Float -> TimingFunction -> Transition
paddingRight3 =
    fullTransition PaddingRight


{-| Create a [`Transition`](#Transition) for the [padding-top](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-top)
property specifying duration, delay and timing function
-}
paddingTop3 : Float -> Float -> TimingFunction -> Transition
paddingTop3 =
    fullTransition PaddingTop


{-| Create a [`Transition`](#Transition) for the [padding-right](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-right)
property specifying duration, delay and timing function
-}
right3 : Float -> Float -> TimingFunction -> Transition
right3 =
    fullTransition Right


{-| Create a [`Transition`](#Transition) for the [tab-size](https://developer.mozilla.org/en-US/docs/Web/CSS/tab-size)
property specifying duration, delay and timing function
-}
tabSize3 : Float -> Float -> TimingFunction -> Transition
tabSize3 =
    fullTransition TabSize


{-| Create a [`Transition`](#Transition) for the [text-indent](https://developer.mozilla.org/en-US/docs/Web/CSS/text-indent)
property specifying duration, delay and timing function
-}
textIndent3 : Float -> Float -> TimingFunction -> Transition
textIndent3 =
    fullTransition TextIndent


{-| Create a [`Transition`](#Transition) for the [text-shadow](https://developer.mozilla.org/en-US/docs/Web/CSS/text-shadow)
property specifying duration, delay and timing function
-}
textShadow3 : Float -> Float -> TimingFunction -> Transition
textShadow3 =
    fullTransition TextShadow


{-| Create a [`Transition`](#Transition) for the [top](https://developer.mozilla.org/en-US/docs/Web/CSS/top)
property specifying duration, delay and timing function
-}
top3 : Float -> Float -> TimingFunction -> Transition
top3 =
    fullTransition Top


{-| Create a [`Transition`](#Transition) for the [transform](https://developer.mozilla.org/en-US/docs/Web/CSS/transform)
property specifying duration, delay and timing function
-}
transform3 : Float -> Float -> TimingFunction -> Transition
transform3 =
    fullTransition Transform


{-| Create a [`Transition`](#Transition) for the [transform-origin](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-origin)
property specifying duration, delay and timing function
-}
transformOrigin3 : Float -> Float -> TimingFunction -> Transition
transformOrigin3 =
    fullTransition TransformOrigin


{-| Create a [`Transition`](#Transition) for the [vertical-align](https://developer.mozilla.org/en-US/docs/Web/CSS/vertical-align)
property specifying duration, delay and timing function
-}
verticalAlign3 : Float -> Float -> TimingFunction -> Transition
verticalAlign3 =
    fullTransition VerticalAlign


{-| Create a [`Transition`](#Transition) for the [visibility](https://developer.mozilla.org/en-US/docs/Web/CSS/visibility)
property specifying duration, delay and timing function
-}
visibility3 : Float -> Float -> TimingFunction -> Transition
visibility3 =
    fullTransition Visibility


{-| Create a [`Transition`](#Transition) for the [width](https://developer.mozilla.org/en-US/docs/Web/CSS/width)
property specifying duration, delay and timing function
-}
width3 : Float -> Float -> TimingFunction -> Transition
width3 =
    fullTransition Width


{-| Create a [`Transition`](#Transition) for the [word-spacing](https://developer.mozilla.org/en-US/docs/Web/CSS/word-spacing)
property specifying duration, delay and timing function
-}
wordSpacing3 : Float -> Float -> TimingFunction -> Transition
wordSpacing3 =
    fullTransition WordSpacing


{-| Create a [`Transition`](#Transition) for the [z-index](https://developer.mozilla.org/en-US/docs/Web/CSS/z-index)
property specifying duration, delay and timing function
-}
zIndex3 : Float -> Float -> TimingFunction -> Transition
zIndex3 =
    fullTransition ZIndex



--------------------------------------------------------------------------------


{-| Create a [`Transition`](#Transition) for the [background](https://developer.mozilla.org/en-US/docs/Web/CSS/background)
property specifying duration and delay
-}
background2 : Float -> Float -> Transition
background2 =
    durationDelayTransition Background


{-| Create a [`Transition`](#Transition) for the [background-color](https://developer.mozilla.org/en-US/docs/Web/CSS/background-color)
property specifying duration and delay
-}
backgroundColor2 : Float -> Float -> Transition
backgroundColor2 =
    durationDelayTransition BackgroundColor


{-| Create a [`Transition`](#Transition) for the [background-position](https://developer.mozilla.org/en-US/docs/Web/CSS/background-position)
property specifying duration and delay
-}
backgroundPosition2 : Float -> Float -> Transition
backgroundPosition2 =
    durationDelayTransition BackgroundPosition


{-| Create a [`Transition`](#Transition) for the [background-size](https://developer.mozilla.org/en-US/docs/Web/CSS/background-size)
property specifying duration and delay
-}
backgroundSize2 : Float -> Float -> Transition
backgroundSize2 =
    durationDelayTransition BackgroundSize


{-| Create a [`Transition`](#Transition) for the [border](https://developer.mozilla.org/en-US/docs/Web/CSS/border)
property specifying duration and delay
-}
border2 : Float -> Float -> Transition
border2 =
    durationDelayTransition Border


{-| Create a [`Transition`](#Transition) for the [border-bottom](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom)
property specifying duration and delay
-}
borderBottom2 : Float -> Float -> Transition
borderBottom2 =
    durationDelayTransition BorderBottom


{-| Create a [`Transition`](#Transition) for the [border-bottom-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-color)
property specifying duration and delay
-}
borderBottomColor2 : Float -> Float -> Transition
borderBottomColor2 =
    durationDelayTransition BorderBottomColor


{-| Create a [`Transition`](#Transition) for the [border-bottom-left-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-left-radius)
property specifying duration and delay
-}
borderBottomLeftRadius2 : Float -> Float -> Transition
borderBottomLeftRadius2 =
    durationDelayTransition BorderBottomLeftRadius


{-| Create a [`Transition`](#Transition) for the [border-bottom-right-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-right-radius)
property specifying duration and delay
-}
borderBottomRightRadius2 : Float -> Float -> Transition
borderBottomRightRadius2 =
    durationDelayTransition BorderBottomRightRadius


{-| Create a [`Transition`](#Transition) for the [border-bottom-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-width)
property specifying duration and delay
-}
borderBottomWidth2 : Float -> Float -> Transition
borderBottomWidth2 =
    durationDelayTransition BorderBottomWidth


{-| Create a [`Transition`](#Transition) for the [border-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-color)
property specifying duration and delay
-}
borderColor2 : Float -> Float -> Transition
borderColor2 =
    durationDelayTransition BorderColor


{-| Create a [`Transition`](#Transition) for the [border-left](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left)
property specifying duration and delay
-}
borderLeft2 : Float -> Float -> Transition
borderLeft2 =
    durationDelayTransition BorderLeft


{-| Create a [`Transition`](#Transition) for the [border-left-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left-color)
property specifying duration and delay
-}
borderLeftColor2 : Float -> Float -> Transition
borderLeftColor2 =
    durationDelayTransition BorderLeftColor


{-| Create a [`Transition`](#Transition) for the [border-left-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left-width)
property specifying duration and delay
-}
borderLeftWidth2 : Float -> Float -> Transition
borderLeftWidth2 =
    durationDelayTransition BorderLeftWidth


{-| Create a [`Transition`](#Transition) for the [border-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius)
property specifying duration and delay
-}
borderRadius2 : Float -> Float -> Transition
borderRadius2 =
    durationDelayTransition BorderRadius


{-| Create a [`Transition`](#Transition) for the [border-right](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right)
property specifying duration and delay
-}
borderRight2 : Float -> Float -> Transition
borderRight2 =
    durationDelayTransition BorderRight


{-| Create a [`Transition`](#Transition) for the [border-right-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right-color)
property specifying duration and delay
-}
borderRightColor2 : Float -> Float -> Transition
borderRightColor2 =
    durationDelayTransition BorderRightColor


{-| Create a [`Transition`](#Transition) for the [border-right-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right-width)
property specifying duration and delay
-}
borderRightWidth2 : Float -> Float -> Transition
borderRightWidth2 =
    durationDelayTransition BorderRightWidth


{-| Create a [`Transition`](#Transition) for the [border-top](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top)
property specifying duration and delay
-}
borderTop2 : Float -> Float -> Transition
borderTop2 =
    durationDelayTransition BorderTop


{-| Create a [`Transition`](#Transition) for the [border-top-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-color)
property specifying duration and delay
-}
borderTopColor2 : Float -> Float -> Transition
borderTopColor2 =
    durationDelayTransition BorderTopColor


{-| Create a [`Transition`](#Transition) for the [border-top-left-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-left-radius)
property specifying duration and delay
-}
borderTopLeftRadius2 : Float -> Float -> Transition
borderTopLeftRadius2 =
    durationDelayTransition BorderTopLeftRadius


{-| Create a [`Transition`](#Transition) for the [border-top-right-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-right-radius)
property specifying duration and delay
-}
borderTopRightRadius2 : Float -> Float -> Transition
borderTopRightRadius2 =
    durationDelayTransition BorderTopRightRadius


{-| Create a [`Transition`](#Transition) for the [border-top-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-width)
property specifying duration and delay
-}
borderTopWidth2 : Float -> Float -> Transition
borderTopWidth2 =
    durationDelayTransition BorderTopWidth


{-| Create a [`Transition`](#Transition) for the [border-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-width)
property specifying duration and delay
-}
borderWidth2 : Float -> Float -> Transition
borderWidth2 =
    durationDelayTransition BorderWidth


{-| Create a [`Transition`](#Transition) for the [bottom](https://developer.mozilla.org/en-US/docs/Web/CSS/bottom)
property specifying duration and delay
-}
bottom2 : Float -> Float -> Transition
bottom2 =
    durationDelayTransition Bottom


{-| Create a [`Transition`](#Transition) for the [box-shadow](https://developer.mozilla.org/en-US/docs/Web/CSS/bottom)
property specifying duration and delay
-}
boxShadow2 : Float -> Float -> Transition
boxShadow2 =
    durationDelayTransition BoxShadow


{-| Create a [`Transition`](#Transition) for the [caret-color](https://developer.mozilla.org/en-US/docs/Web/CSS/bottom)
property specifying duration and delay
-}
caretColor2 : Float -> Float -> Transition
caretColor2 =
    durationDelayTransition CaretColor


{-| Create a [`Transition`](#Transition) for the [clip](https://developer.mozilla.org/en-US/docs/Web/CSS/clip)
property specifying duration and delay
-}
clip2 : Float -> Float -> Transition
clip2 =
    durationDelayTransition Clip


{-| Create a [`Transition`](#Transition) for the [clip-path](https://developer.mozilla.org/en-US/docs/Web/CSS/clip-path)
property specifying duration and delay
-}
clipPath2 : Float -> Float -> Transition
clipPath2 =
    durationDelayTransition ClipPath


{-| Create a [`Transition`](#Transition) for the [color](https://developer.mozilla.org/en-US/docs/Web/CSS/clip-path)
property specifying duration and delay
-}
color2 : Float -> Float -> Transition
color2 =
    durationDelayTransition Color


{-| Create a [`Transition`](#Transition) for the [column-count](https://developer.mozilla.org/en-US/docs/Web/CSS/column-count)
property specifying duration and delay
-}
columnCount2 : Float -> Float -> Transition
columnCount2 =
    durationDelayTransition ColumnCount


{-| Create a [`Transition`](#Transition) for the [column-gap](https://developer.mozilla.org/en-US/docs/Web/CSS/column-gap)
property specifying duration and delay
-}
columnGap2 : Float -> Float -> Transition
columnGap2 =
    durationDelayTransition ColumnGap


{-| Create a [`Transition`](#Transition) for the [column-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/column-rule)
property specifying duration and delay
-}
columnRule2 : Float -> Float -> Transition
columnRule2 =
    durationDelayTransition ColumnRule


{-| Create a [`Transition`](#Transition) for the [column-rule-color](https://developer.mozilla.org/en-US/docs/Web/CSS/column-rule-color)
property specifying duration and delay
-}
columnRuleColor2 : Float -> Float -> Transition
columnRuleColor2 =
    durationDelayTransition ColumnRuleColor


{-| Create a [`Transition`](#Transition) for the [column-rule-width](https://developer.mozilla.org/en-US/docs/Web/CSS/column-rule-width)
property specifying duration and delay
-}
columnRuleWidth2 : Float -> Float -> Transition
columnRuleWidth2 =
    durationDelayTransition ColumnRuleWidth


{-| Create a [`Transition`](#Transition) for the [column-width](https://developer.mozilla.org/en-US/docs/Web/CSS/column-width)
property specifying duration and delay
-}
columnWidth2 : Float -> Float -> Transition
columnWidth2 =
    durationDelayTransition ColumnWidth


{-| Create a [`Transition`](#Transition) for the [columns](https://developer.mozilla.org/en-US/docs/Web/CSS/columns)
property specifying duration and delay
-}
columns2 : Float -> Float -> Transition
columns2 =
    durationDelayTransition Columns


{-| Create a [`Transition`](#Transition) for the [filter](https://developer.mozilla.org/en-US/docs/Web/CSS/filter)
property specifying duration and delay
-}
filter2 : Float -> Float -> Transition
filter2 =
    durationDelayTransition Filter


{-| Create a [`Transition`](#Transition) for the [flex](https://developer.mozilla.org/en-US/docs/Web/CSS/flex)
property specifying duration and delay
-}
flex2 : Float -> Float -> Transition
flex2 =
    durationDelayTransition Flex


{-| Create a [`Transition`](#Transition) for the [flex-basis](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-basis)
property specifying duration and delay
-}
flexBasis2 : Float -> Float -> Transition
flexBasis2 =
    durationDelayTransition FlexBasis


{-| Create a [`Transition`](#Transition) for the [flex-grow](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-grow)
property specifying duration and delay
-}
flexGrow2 : Float -> Float -> Transition
flexGrow2 =
    durationDelayTransition FlexGrow


{-| Create a [`Transition`](#Transition) for the [flex-shrink](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-shrink)
property specifying duration and delay
-}
flexShrink2 : Float -> Float -> Transition
flexShrink2 =
    durationDelayTransition FlexShrink


{-| Create a [`Transition`](#Transition) for the [font](https://developer.mozilla.org/en-US/docs/Web/CSS/font)
property specifying duration and delay
-}
font2 : Float -> Float -> Transition
font2 =
    durationDelayTransition Font


{-| Create a [`Transition`](#Transition) for the [font-size](https://developer.mozilla.org/en-US/docs/Web/CSS/font-size)
property specifying duration and delay
-}
fontSize2 : Float -> Float -> Transition
fontSize2 =
    durationDelayTransition FontSize


{-| Create a [`Transition`](#Transition) for the [font-size-adjust](https://developer.mozilla.org/en-US/docs/Web/CSS/font-size-adjust)
property specifying duration and delay
-}
fontSizeAdjust2 : Float -> Float -> Transition
fontSizeAdjust2 =
    durationDelayTransition FontSizeAdjust


{-| Create a [`Transition`](#Transition) for the [font-stretch](https://developer.mozilla.org/en-US/docs/Web/CSS/font-stretch)
property specifying duration and delay
-}
fontStretch2 : Float -> Float -> Transition
fontStretch2 =
    durationDelayTransition FontStretch


{-| Create a [`Transition`](#Transition) for the [font-variation-settings](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variation-settings)
property specifying duration and delay
-}
fontVariationSettings2 : Float -> Float -> Transition
fontVariationSettings2 =
    durationDelayTransition FontVariationSettings


{-| Create a [`Transition`](#Transition) for the [font-weight](https://developer.mozilla.org/en-US/docs/Web/CSS/font-weight)
property specifying duration and delay
-}
fontWeight2 : Float -> Float -> Transition
fontWeight2 =
    durationDelayTransition FontWeight


{-| Create a [`Transition`](#Transition) for the [grid-column-gap](https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-gap)
property specifying duration and delay
-}
gridColumnGap2 : Float -> Float -> Transition
gridColumnGap2 =
    durationDelayTransition GridColumnGap


{-| Create a [`Transition`](#Transition) for the [grid-gap](https://developer.mozilla.org/en-US/docs/Web/CSS/grid-gap)
property specifying duration and delay
-}
gridGap2 : Float -> Float -> Transition
gridGap2 =
    durationDelayTransition GridGap


{-| Create a [`Transition`](#Transition) for the [grid-row-gap](https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-gap)
property specifying duration and delay
-}
gridRowGap2 : Float -> Float -> Transition
gridRowGap2 =
    durationDelayTransition GridRowGap


{-| Create a [`Transition`](#Transition) for the [height](https://developer.mozilla.org/en-US/docs/Web/CSS/height)
property specifying duration and delay
-}
height2 : Float -> Float -> Transition
height2 =
    durationDelayTransition Height


{-| Create a [`Transition`](#Transition) for the [left](https://developer.mozilla.org/en-US/docs/Web/CSS/left)
property specifying duration and delay
-}
left2 : Float -> Float -> Transition
left2 =
    durationDelayTransition Left


{-| Create a [`Transition`](#Transition) for the [letter-spacing](https://developer.mozilla.org/en-US/docs/Web/CSS/letter-spacing)
property specifying duration and delay
-}
letterSpacing2 : Float -> Float -> Transition
letterSpacing2 =
    durationDelayTransition LetterSpacing


{-| Create a [`Transition`](#Transition) for the [line-height](https://developer.mozilla.org/en-US/docs/Web/CSS/line-height)
property specifying duration and delay
-}
lineHeight2 : Float -> Float -> Transition
lineHeight2 =
    durationDelayTransition LineHeight


{-| Create a [`Transition`](#Transition) for the [margin](https://developer.mozilla.org/en-US/docs/Web/CSS/margin)
property specifying duration and delay
-}
margin2 : Float -> Float -> Transition
margin2 =
    durationDelayTransition Margin


{-| Create a [`Transition`](#Transition) for the [margin-bottom](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-bottom)
property specifying duration and delay
-}
marginBottom2 : Float -> Float -> Transition
marginBottom2 =
    durationDelayTransition MarginBottom


{-| Create a [`Transition`](#Transition) for the [margin-left](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-left)
property specifying duration and delay
-}
marginLeft2 : Float -> Float -> Transition
marginLeft2 =
    durationDelayTransition MarginLeft


{-| Create a [`Transition`](#Transition) for the [margin-right](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-right)
property specifying duration and delay
-}
marginRight2 : Float -> Float -> Transition
marginRight2 =
    durationDelayTransition MarginRight


{-| Create a [`Transition`](#Transition) for the [margin-top](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-top)
property specifying duration and delay
-}
marginTop2 : Float -> Float -> Transition
marginTop2 =
    durationDelayTransition MarginTop


{-| Create a [`Transition`](#Transition) for the [mask](https://developer.mozilla.org/en-US/docs/Web/CSS/mask)
property specifying duration and delay
-}
mask2 : Float -> Float -> Transition
mask2 =
    durationDelayTransition Mask


{-| Create a [`Transition`](#Transition) for the [mask-position](https://developer.mozilla.org/en-US/docs/Web/CSS/mask-position)
property specifying duration and delay
-}
maskPosition2 : Float -> Float -> Transition
maskPosition2 =
    durationDelayTransition MaskPosition


{-| Create a [`Transition`](#Transition) for the [mask-size](https://developer.mozilla.org/en-US/docs/Web/CSS/mask-size)
property specifying duration and delay
-}
maskSize2 : Float -> Float -> Transition
maskSize2 =
    durationDelayTransition MaskSize


{-| Create a [`Transition`](#Transition) for the [max-height](https://developer.mozilla.org/en-US/docs/Web/CSS/max-height)
property specifying duration and delay
-}
maxHeight2 : Float -> Float -> Transition
maxHeight2 =
    durationDelayTransition MaxHeight


{-| Create a [`Transition`](#Transition) for the [max-width](https://developer.mozilla.org/en-US/docs/Web/CSS/max-width)
property specifying duration and delay
-}
maxWidth2 : Float -> Float -> Transition
maxWidth2 =
    durationDelayTransition MaxWidth


{-| Create a [`Transition`](#Transition) for the [min-height](https://developer.mozilla.org/en-US/docs/Web/CSS/min-height)
property specifying duration and delay
-}
minHeight2 : Float -> Float -> Transition
minHeight2 =
    durationDelayTransition MinHeight


{-| Create a [`Transition`](#Transition) for the [min-width](https://developer.mozilla.org/en-US/docs/Web/CSS/min-width)
property specifying duration and delay
-}
minWidth2 : Float -> Float -> Transition
minWidth2 =
    durationDelayTransition MinWidth


{-| Create a [`Transition`](#Transition) for the [object-position](https://developer.mozilla.org/en-US/docs/Web/CSS/object-position)
property specifying duration and delay
-}
objectPosition2 : Float -> Float -> Transition
objectPosition2 =
    durationDelayTransition ObjectPosition


{-| Create a [`Transition`](#Transition) for the [offset](https://developer.mozilla.org/en-US/docs/Web/CSS/offset)
property specifying duration and delay
-}
offset2 : Float -> Float -> Transition
offset2 =
    durationDelayTransition Offset


{-| Create a [`Transition`](#Transition) for the [offset-anchor](https://developer.mozilla.org/en-US/docs/Web/CSS/offset-anchor)
property specifying duration and delay
-}
offsetAnchor2 : Float -> Float -> Transition
offsetAnchor2 =
    durationDelayTransition OffsetAnchor


{-| Create a [`Transition`](#Transition) for the [offset-distance](https://developer.mozilla.org/en-US/docs/Web/CSS/offset-distance)
property specifying duration and delay
-}
offsetDistance2 : Float -> Float -> Transition
offsetDistance2 =
    durationDelayTransition OffsetDistance


{-| Create a [`Transition`](#Transition) for the [offset-path](https://developer.mozilla.org/en-US/docs/Web/CSS/offset-path)
property specifying duration and delay
-}
offsetPath2 : Float -> Float -> Transition
offsetPath2 =
    durationDelayTransition OffsetPath


{-| Create a [`Transition`](#Transition) for the [offset-rotate](https://developer.mozilla.org/en-US/docs/Web/CSS/offset-rotate)
property specifying duration and delay
-}
offsetRotate2 : Float -> Float -> Transition
offsetRotate2 =
    durationDelayTransition OffsetRotate


{-| Create a [`Transition`](#Transition) for the [opacity](https://developer.mozilla.org/en-US/docs/Web/CSS/opacity)
property specifying duration and delay
-}
opacity2 : Float -> Float -> Transition
opacity2 =
    durationDelayTransition Opacity


{-| Create a [`Transition`](#Transition) for the [order](https://developer.mozilla.org/en-US/docs/Web/CSS/order)
property specifying duration and delay
-}
order2 : Float -> Float -> Transition
order2 =
    durationDelayTransition Order


{-| Create a [`Transition`](#Transition) for the [outline](https://developer.mozilla.org/en-US/docs/Web/CSS/outline)
property specifying duration and delay
-}
outline2 : Float -> Float -> Transition
outline2 =
    durationDelayTransition Outline


{-| Create a [`Transition`](#Transition) for the [outline-color](https://developer.mozilla.org/en-US/docs/Web/CSS/outline-color)
property specifying duration and delay
-}
outlineColor2 : Float -> Float -> Transition
outlineColor2 =
    durationDelayTransition OutlineColor


{-| Create a [`Transition`](#Transition) for the [outline-offset](https://developer.mozilla.org/en-US/docs/Web/CSS/outline-offset)
property specifying duration and delay
-}
outlineOffset2 : Float -> Float -> Transition
outlineOffset2 =
    durationDelayTransition OutlineOffset


{-| Create a [`Transition`](#Transition) for the [outline-width](https://developer.mozilla.org/en-US/docs/Web/CSS/outline-width)
property specifying duration and delay
-}
outlineWidth2 : Float -> Float -> Transition
outlineWidth2 =
    durationDelayTransition OutlineWidth


{-| Create a [`Transition`](#Transition) for the [padding](https://developer.mozilla.org/en-US/docs/Web/CSS/padding)
property specifying duration and delay
-}
padding2 : Float -> Float -> Transition
padding2 =
    durationDelayTransition Padding


{-| Create a [`Transition`](#Transition) for the [padding-bottom](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-bottom)
property specifying duration and delay
-}
paddingBottom2 : Float -> Float -> Transition
paddingBottom2 =
    durationDelayTransition PaddingBottom


{-| Create a [`Transition`](#Transition) for the [padding-left](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-left)
property specifying duration and delay
-}
paddingLeft2 : Float -> Float -> Transition
paddingLeft2 =
    durationDelayTransition PaddingLeft


{-| Create a [`Transition`](#Transition) for the [padding-right](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-right)
property specifying duration and delay
-}
paddingRight2 : Float -> Float -> Transition
paddingRight2 =
    durationDelayTransition PaddingRight


{-| Create a [`Transition`](#Transition) for the [padding-top](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-top)
property specifying duration and delay
-}
paddingTop2 : Float -> Float -> Transition
paddingTop2 =
    durationDelayTransition PaddingTop


{-| Create a [`Transition`](#Transition) for the [right](https://developer.mozilla.org/en-US/docs/Web/CSS/right)
property specifying duration and delay
-}
right2 : Float -> Float -> Transition
right2 =
    durationDelayTransition Right


{-| Create a [`Transition`](#Transition) for the [tab-size](https://developer.mozilla.org/en-US/docs/Web/CSS/tab-size)
property specifying duration and delay
-}
tabSize2 : Float -> Float -> Transition
tabSize2 =
    durationDelayTransition TabSize


{-| Create a [`Transition`](#Transition) for the [text-indent](https://developer.mozilla.org/en-US/docs/Web/CSS/text-indent)
property specifying duration and delay
-}
textIndent2 : Float -> Float -> Transition
textIndent2 =
    durationDelayTransition TextIndent


{-| Create a [`Transition`](#Transition) for the [text-shadow](https://developer.mozilla.org/en-US/docs/Web/CSS/text-shadow)
property specifying duration and delay
-}
textShadow2 : Float -> Float -> Transition
textShadow2 =
    durationDelayTransition TextShadow


{-| Create a [`Transition`](#Transition) for the [top](https://developer.mozilla.org/en-US/docs/Web/CSS/top)
property specifying duration and delay
-}
top2 : Float -> Float -> Transition
top2 =
    durationDelayTransition Top


{-| Create a [`Transition`](#Transition) for the [transform](https://developer.mozilla.org/en-US/docs/Web/CSS/transform)
property specifying duration and delay
-}
transform2 : Float -> Float -> Transition
transform2 =
    durationDelayTransition Transform


{-| Create a [`Transition`](#Transition) for the [transform-origin](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-origin)
property specifying duration and delay
-}
transformOrigin2 : Float -> Float -> Transition
transformOrigin2 =
    durationDelayTransition TransformOrigin


{-| Create a [`Transition`](#Transition) for the [vertical-align](https://developer.mozilla.org/en-US/docs/Web/CSS/vertical-align)
property specifying duration and delay
-}
verticalAlign2 : Float -> Float -> Transition
verticalAlign2 =
    durationDelayTransition VerticalAlign


{-| Create a [`Transition`](#Transition) for the [visibility](https://developer.mozilla.org/en-US/docs/Web/CSS/visibility)
property specifying duration and delay
-}
visibility2 : Float -> Float -> Transition
visibility2 =
    durationDelayTransition Visibility


{-| Create a [`Transition`](#Transition) for the [width](https://developer.mozilla.org/en-US/docs/Web/CSS/width)
property specifying duration and delay
-}
width2 : Float -> Float -> Transition
width2 =
    durationDelayTransition Width


{-| Create a [`Transition`](#Transition) for the [word-spacing](https://developer.mozilla.org/en-US/docs/Web/CSS/word-spacing)
property specifying duration and delay
-}
wordSpacing2 : Float -> Float -> Transition
wordSpacing2 =
    durationDelayTransition WordSpacing


{-| Create a [`Transition`](#Transition) for the [z-index](https://developer.mozilla.org/en-US/docs/Web/CSS/z-index)
property specifying duration and delay
-}
zIndex2 : Float -> Float -> Transition
zIndex2 =
    durationDelayTransition ZIndex



--------------------------------------------------------------------------------


{-| Create a [`Transition`](#Transition) for the [background](https://developer.mozilla.org/en-US/docs/Web/CSS/background)
property specifying only the duration
-}
background : Float -> Transition
background =
    durationTransition Background


{-| Create a [`Transition`](#Transition) for the [background-color](https://developer.mozilla.org/en-US/docs/Web/CSS/background-color)
property specifying only the duration
-}
backgroundColor : Float -> Transition
backgroundColor =
    durationTransition BackgroundColor


{-| Create a [`Transition`](#Transition) for the [background-position](https://developer.mozilla.org/en-US/docs/Web/CSS/background-position)
property specifying only the duration
-}
backgroundPosition : Float -> Transition
backgroundPosition =
    durationTransition BackgroundPosition


{-| Create a [`Transition`](#Transition) for the [background-size](https://developer.mozilla.org/en-US/docs/Web/CSS/background-size)
property specifying only the duration
-}
backgroundSize : Float -> Transition
backgroundSize =
    durationTransition BackgroundSize


{-| Create a [`Transition`](#Transition) for the [border](https://developer.mozilla.org/en-US/docs/Web/CSS/border)
property specifying only the duration
-}
border : Float -> Transition
border =
    durationTransition Border


{-| Create a [`Transition`](#Transition) for the [border-bottom](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom)
property specifying only the duration
-}
borderBottom : Float -> Transition
borderBottom =
    durationTransition BorderBottom


{-| Create a [`Transition`](#Transition) for the [border-bottom-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-color)
property specifying only the duration
-}
borderBottomColor : Float -> Transition
borderBottomColor =
    durationTransition BorderBottomColor


{-| Create a [`Transition`](#Transition) for the [border-bottom-left-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-left-radius)
property specifying only the duration
-}
borderBottomLeftRadius : Float -> Transition
borderBottomLeftRadius =
    durationTransition BorderBottomLeftRadius


{-| Create a [`Transition`](#Transition) for the [border-bottom-right-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-right-radius)
property specifying only the duration
-}
borderBottomRightRadius : Float -> Transition
borderBottomRightRadius =
    durationTransition BorderBottomRightRadius


{-| Create a [`Transition`](#Transition) for the [border-bottom-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-width)
property specifying only the duration
-}
borderBottomWidth : Float -> Transition
borderBottomWidth =
    durationTransition BorderBottomWidth


{-| Create a [`Transition`](#Transition) for the [border-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-color)
property specifying only the duration
-}
borderColor : Float -> Transition
borderColor =
    durationTransition BorderColor


{-| Create a [`Transition`](#Transition) for the [border-left](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left)
property specifying only the duration
-}
borderLeft : Float -> Transition
borderLeft =
    durationTransition BorderLeft


{-| Create a [`Transition`](#Transition) for the [border-left-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left-color)
property specifying only the duration
-}
borderLeftColor : Float -> Transition
borderLeftColor =
    durationTransition BorderLeftColor


{-| Create a [`Transition`](#Transition) for the [border-left-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left-width)
property specifying only the duration
-}
borderLeftWidth : Float -> Transition
borderLeftWidth =
    durationTransition BorderLeftWidth


{-| Create a [`Transition`](#Transition) for the [border-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius)
property specifying only the duration
-}
borderRadius : Float -> Transition
borderRadius =
    durationTransition BorderRadius


{-| Create a [`Transition`](#Transition) for the [border-right](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right)
property specifying only the duration
-}
borderRight : Float -> Transition
borderRight =
    durationTransition BorderRight


{-| Create a [`Transition`](#Transition) for the [border-right-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right-color)
property specifying only the duration
-}
borderRightColor : Float -> Transition
borderRightColor =
    durationTransition BorderRightColor


{-| Create a [`Transition`](#Transition) for the [border-right-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right-width)
property specifying only the duration
-}
borderRightWidth : Float -> Transition
borderRightWidth =
    durationTransition BorderRightWidth


{-| Create a [`Transition`](#Transition) for the [border-top](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top)
property specifying only the duration
-}
borderTop : Float -> Transition
borderTop =
    durationTransition BorderTop


{-| Create a [`Transition`](#Transition) for the [border-top-color](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-color)
property specifying only the duration
-}
borderTopColor : Float -> Transition
borderTopColor =
    durationTransition BorderTopColor


{-| Create a [`Transition`](#Transition) for the [border-top-left-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-left-radius)
property specifying only the duration
-}
borderTopLeftRadius : Float -> Transition
borderTopLeftRadius =
    durationTransition BorderTopLeftRadius


{-| Create a [`Transition`](#Transition) for the [border-top-right-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-right-radius)
property specifying only the duration
-}
borderTopRightRadius : Float -> Transition
borderTopRightRadius =
    durationTransition BorderTopRightRadius


{-| Create a [`Transition`](#Transition) for the [border-top-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-width)
property specifying only the duration
-}
borderTopWidth : Float -> Transition
borderTopWidth =
    durationTransition BorderTopWidth


{-| Create a [`Transition`](#Transition) for the [border-width](https://developer.mozilla.org/en-US/docs/Web/CSS/border-width)
property specifying only the duration
-}
borderWidth : Float -> Transition
borderWidth =
    durationTransition BorderWidth


{-| Create a [`Transition`](#Transition) for the [bottom](https://developer.mozilla.org/en-US/docs/Web/CSS/bottom)
property specifying only the duration
-}
bottom : Float -> Transition
bottom =
    durationTransition Bottom


{-| Create a [`Transition`](#Transition) for the [box-shadow](https://developer.mozilla.org/en-US/docs/Web/CSS/box-shadow)
property specifying only the duration
-}
boxShadow : Float -> Transition
boxShadow =
    durationTransition BoxShadow


{-| Create a [`Transition`](#Transition) for the [caret-color](https://developer.mozilla.org/en-US/docs/Web/CSS/caret-color)
property specifying only the duration
-}
caretColor : Float -> Transition
caretColor =
    durationTransition CaretColor


{-| Create a [`Transition`](#Transition) for the [clip](https://developer.mozilla.org/en-US/docs/Web/CSS/clip)
property specifying only the duration
-}
clip : Float -> Transition
clip =
    durationTransition Clip


{-| Create a [`Transition`](#Transition) for the [clip-path](https://developer.mozilla.org/en-US/docs/Web/CSS/clip-path)
property specifying only the duration
-}
clipPath : Float -> Transition
clipPath =
    durationTransition ClipPath


{-| Create a [`Transition`](#Transition) for the [color](https://developer.mozilla.org/en-US/docs/Web/CSS/color)
property specifying only the duration
-}
color : Float -> Transition
color =
    durationTransition Color


{-| Create a [`Transition`](#Transition) for the [column-count](https://developer.mozilla.org/en-US/docs/Web/CSS/column-count)
property specifying only the duration
-}
columnCount : Float -> Transition
columnCount =
    durationTransition ColumnCount


{-| Create a [`Transition`](#Transition) for the [column-gap](https://developer.mozilla.org/en-US/docs/Web/CSS/column-gap)
property specifying only the duration
-}
columnGap : Float -> Transition
columnGap =
    durationTransition ColumnGap


{-| Create a [`Transition`](#Transition) for the [column-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/column-rule)
property specifying only the duration
-}
columnRule : Float -> Transition
columnRule =
    durationTransition ColumnRule


{-| Create a [`Transition`](#Transition) for the [column-rule-color](https://developer.mozilla.org/en-US/docs/Web/CSS/column-rule-color)
property specifying only the duration
-}
columnRuleColor : Float -> Transition
columnRuleColor =
    durationTransition ColumnRuleColor


{-| Create a [`Transition`](#Transition) for the [column-rule-width](https://developer.mozilla.org/en-US/docs/Web/CSS/column-rule-width)
property specifying only the duration
-}
columnRuleWidth : Float -> Transition
columnRuleWidth =
    durationTransition ColumnRuleWidth


{-| Create a [`Transition`](#Transition) for the [column-width](https://developer.mozilla.org/en-US/docs/Web/CSS/column-width)
property specifying only the duration
-}
columnWidth : Float -> Transition
columnWidth =
    durationTransition ColumnWidth


{-| Create a [`Transition`](#Transition) for the [columns](https://developer.mozilla.org/en-US/docs/Web/CSS/columns)
property specifying only the duration
-}
columns : Float -> Transition
columns =
    durationTransition Columns


{-| Create a [`Transition`](#Transition) for the [filter](https://developer.mozilla.org/en-US/docs/Web/CSS/filter)
property specifying only the duration
-}
filter : Float -> Transition
filter =
    durationTransition Filter


{-| Create a [`Transition`](#Transition) for the [flex](https://developer.mozilla.org/en-US/docs/Web/CSS/flex)
property specifying only the duration
-}
flex : Float -> Transition
flex =
    durationTransition Flex


{-| Create a [`Transition`](#Transition) for the [flex-basis](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-basis)
property specifying only the duration
-}
flexBasis : Float -> Transition
flexBasis =
    durationTransition FlexBasis


{-| Create a [`Transition`](#Transition) for the [flex-grow](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-grow)
property specifying only the duration
-}
flexGrow : Float -> Transition
flexGrow =
    durationTransition FlexGrow


{-| Create a [`Transition`](#Transition) for the [flex-shrink](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-shrink)
property specifying only the duration
-}
flexShrink : Float -> Transition
flexShrink =
    durationTransition FlexShrink


{-| Create a [`Transition`](#Transition) for the [font](https://developer.mozilla.org/en-US/docs/Web/CSS/font)
property specifying only the duration
-}
font : Float -> Transition
font =
    durationTransition Font


{-| Create a [`Transition`](#Transition) for the [font-size](https://developer.mozilla.org/en-US/docs/Web/CSS/font-size)
property specifying only the duration
-}
fontSize : Float -> Transition
fontSize =
    durationTransition FontSize


{-| Create a [`Transition`](#Transition) for the [font-size-adjust](https://developer.mozilla.org/en-US/docs/Web/CSS/font-size-adjust)
property specifying only the duration
-}
fontSizeAdjust : Float -> Transition
fontSizeAdjust =
    durationTransition FontSizeAdjust


{-| Create a [`Transition`](#Transition) for the [font-size-stretch](https://developer.mozilla.org/en-US/docs/Web/CSS/font-size-stretch)
property specifying only the duration
-}
fontStretch : Float -> Transition
fontStretch =
    durationTransition FontStretch


{-| Create a [`Transition`](#Transition) for the [font-variation-settings](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variation-settings)
property specifying only the duration
-}
fontVariationSettings : Float -> Transition
fontVariationSettings =
    durationTransition FontVariationSettings


{-| Create a [`Transition`](#Transition) for the [font-weight](https://developer.mozilla.org/en-US/docs/Web/CSS/font-weight)
property specifying only the duration
-}
fontWeight : Float -> Transition
fontWeight =
    durationTransition FontWeight


{-| Create a [`Transition`](#Transition) for the [grid-column-gap](https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-gap)
property specifying only the duration
-}
gridColumnGap : Float -> Transition
gridColumnGap =
    durationTransition GridColumnGap


{-| Create a [`Transition`](#Transition) for the [grid-gap](https://developer.mozilla.org/en-US/docs/Web/CSS/grid-gap)
property specifying only the duration
-}
gridGap : Float -> Transition
gridGap =
    durationTransition GridGap


{-| Create a [`Transition`](#Transition) for the [grid-row-gap](https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-gap)
property specifying only the duration
-}
gridRowGap : Float -> Transition
gridRowGap =
    durationTransition GridRowGap


{-| Create a [`Transition`](#Transition) for the [height](https://developer.mozilla.org/en-US/docs/Web/CSS/height)
property specifying only the duration
-}
height : Float -> Transition
height =
    durationTransition Height


{-| Create a [`Transition`](#Transition) for the [left](https://developer.mozilla.org/en-US/docs/Web/CSS/left)
property specifying only the duration
-}
left : Float -> Transition
left =
    durationTransition Left


{-| Create a [`Transition`](#Transition) for the [letter-spacing](https://developer.mozilla.org/en-US/docs/Web/CSS/letter-spacing)
property specifying only the duration
-}
letterSpacing : Float -> Transition
letterSpacing =
    durationTransition LetterSpacing


{-| Create a [`Transition`](#Transition) for the [line-height](https://developer.mozilla.org/en-US/docs/Web/CSS/line-height)
property specifying only the duration
-}
lineHeight : Float -> Transition
lineHeight =
    durationTransition LineHeight


{-| Create a [`Transition`](#Transition) for the [margin](https://developer.mozilla.org/en-US/docs/Web/CSS/margin)
property specifying only the duration
-}
margin : Float -> Transition
margin =
    durationTransition Margin


{-| Create a [`Transition`](#Transition) for the [margin-bottom](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-bottom)
property specifying only the duration
-}
marginBottom : Float -> Transition
marginBottom =
    durationTransition MarginBottom


{-| Create a [`Transition`](#Transition) for the [margin-left](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-left)
property specifying only the duration
-}
marginLeft : Float -> Transition
marginLeft =
    durationTransition MarginLeft


{-| Create a [`Transition`](#Transition) for the [margin-right](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-right)
property specifying only the duration
-}
marginRight : Float -> Transition
marginRight =
    durationTransition MarginRight


{-| Create a [`Transition`](#Transition) for the [margin-top](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-top)
property specifying only the duration
-}
marginTop : Float -> Transition
marginTop =
    durationTransition MarginTop


{-| Create a [`Transition`](#Transition) for the [mask](https://developer.mozilla.org/en-US/docs/Web/CSS/mask)
property specifying only the duration
-}
mask : Float -> Transition
mask =
    durationTransition Mask


{-| Create a [`Transition`](#Transition) for the [mask-position](https://developer.mozilla.org/en-US/docs/Web/CSS/mask-position)
property specifying only the duration
-}
maskPosition : Float -> Transition
maskPosition =
    durationTransition MaskPosition


{-| Create a [`Transition`](#Transition) for the [mask-size](https://developer.mozilla.org/en-US/docs/Web/CSS/mask-size)
property specifying only the duration
-}
maskSize : Float -> Transition
maskSize =
    durationTransition MaskSize


{-| Create a [`Transition`](#Transition) for the [max-height](https://developer.mozilla.org/en-US/docs/Web/CSS/max-height)
property specifying only the duration
-}
maxHeight : Float -> Transition
maxHeight =
    durationTransition MaxHeight


{-| Create a [`Transition`](#Transition) for the [max-width](https://developer.mozilla.org/en-US/docs/Web/CSS/max-width)
property specifying only the duration
-}
maxWidth : Float -> Transition
maxWidth =
    durationTransition MaxWidth


{-| Create a [`Transition`](#Transition) for the [min-height](https://developer.mozilla.org/en-US/docs/Web/CSS/min-height)
property specifying only the duration
-}
minHeight : Float -> Transition
minHeight =
    durationTransition MinHeight


{-| Create a [`Transition`](#Transition) for the [min-width](https://developer.mozilla.org/en-US/docs/Web/CSS/min-width)
property specifying only the duration
-}
minWidth : Float -> Transition
minWidth =
    durationTransition MinWidth


{-| Create a [`Transition`](#Transition) for the [object-position](https://developer.mozilla.org/en-US/docs/Web/CSS/object-position)
property specifying only the duration
-}
objectPosition : Float -> Transition
objectPosition =
    durationTransition ObjectPosition


{-| Create a [`Transition`](#Transition) for the [offset](https://developer.mozilla.org/en-US/docs/Web/CSS/offset)
property specifying only the duration
-}
offset : Float -> Transition
offset =
    durationTransition Offset


{-| Create a [`Transition`](#Transition) for the [offset-anchor](https://developer.mozilla.org/en-US/docs/Web/CSS/offset-anchor)
property specifying only the duration
-}
offsetAnchor : Float -> Transition
offsetAnchor =
    durationTransition OffsetAnchor


{-| Create a [`Transition`](#Transition) for the [offset-distance](https://developer.mozilla.org/en-US/docs/Web/CSS/offset-distance)
property specifying only the duration
-}
offsetDistance : Float -> Transition
offsetDistance =
    durationTransition OffsetDistance


{-| Create a [`Transition`](#Transition) for the [offset-path](https://developer.mozilla.org/en-US/docs/Web/CSS/offset-path)
property specifying only the duration
-}
offsetPath : Float -> Transition
offsetPath =
    durationTransition OffsetPath


{-| Create a [`Transition`](#Transition) for the [offset-rotate](https://developer.mozilla.org/en-US/docs/Web/CSS/offset-rotate)
property specifying only the duration
-}
offsetRotate : Float -> Transition
offsetRotate =
    durationTransition OffsetRotate


{-| Create a [`Transition`](#Transition) for the [opacity](https://developer.mozilla.org/en-US/docs/Web/CSS/order)
property specifying only the duration
-}
opacity : Float -> Transition
opacity =
    durationTransition Opacity


{-| Create a [`Transition`](#Transition) for the [order](https://developer.mozilla.org/en-US/docs/Web/CSS/order)
property specifying only the duration
-}
order : Float -> Transition
order =
    durationTransition Order


{-| Create a [`Transition`](#Transition) for the [outline](https://developer.mozilla.org/en-US/docs/Web/CSS/outline)
property specifying only the duration
-}
outline : Float -> Transition
outline =
    durationTransition Outline


{-| Create a [`Transition`](#Transition) for the [outline-color](https://developer.mozilla.org/en-US/docs/Web/CSS/outline-color)
property specifying only the duration
-}
outlineColor : Float -> Transition
outlineColor =
    durationTransition OutlineColor


{-| Create a [`Transition`](#Transition) for the [outline-offset](https://developer.mozilla.org/en-US/docs/Web/CSS/outline-offset)
property specifying only the duration
-}
outlineOffset : Float -> Transition
outlineOffset =
    durationTransition OutlineOffset


{-| Create a [`Transition`](#Transition) for the [outline-width](https://developer.mozilla.org/en-US/docs/Web/CSS/outline-width)
property specifying only the duration
-}
outlineWidth : Float -> Transition
outlineWidth =
    durationTransition OutlineWidth


{-| Create a [`Transition`](#Transition) for the [padding](https://developer.mozilla.org/en-US/docs/Web/CSS/padding)
property specifying only the duration
-}
padding : Float -> Transition
padding =
    durationTransition Padding


{-| Create a [`Transition`](#Transition) for the [padding-bottom](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-bottom)
property specifying only the duration
-}
paddingBottom : Float -> Transition
paddingBottom =
    durationTransition PaddingBottom


{-| Create a [`Transition`](#Transition) for the [padding-left](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-left)
property specifying only the duration
-}
paddingLeft : Float -> Transition
paddingLeft =
    durationTransition PaddingLeft


{-| Create a [`Transition`](#Transition) for the [padding-right](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-right)
property specifying only the duration
-}
paddingRight : Float -> Transition
paddingRight =
    durationTransition PaddingRight


{-| Create a [`Transition`](#Transition) for the [padding-top](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-top)
property specifying only the duration
-}
paddingTop : Float -> Transition
paddingTop =
    durationTransition PaddingTop


{-| Create a [`Transition`](#Transition) for the [right](https://developer.mozilla.org/en-US/docs/Web/CSS/right)
property specifying only the duration
-}
right : Float -> Transition
right =
    durationTransition Right


{-| Create a [`Transition`](#Transition) for the [tab-size](https://developer.mozilla.org/en-US/docs/Web/CSS/tab-size)
property specifying only the duration
-}
tabSize : Float -> Transition
tabSize =
    durationTransition TabSize


{-| Create a [`Transition`](#Transition) for the [text-indent](https://developer.mozilla.org/en-US/docs/Web/CSS/text-indent)
property specifying only the duration
-}
textIndent : Float -> Transition
textIndent =
    durationTransition TextIndent


{-| Create a [`Transition`](#Transition) for the [text-shadow](https://developer.mozilla.org/en-US/docs/Web/CSS/text-shadow)
property specifying only the duration
-}
textShadow : Float -> Transition
textShadow =
    durationTransition TextShadow


{-| Create a [`Transition`](#Transition) for the [top](https://developer.mozilla.org/en-US/docs/Web/CSS/top)
property specifying only the duration
-}
top : Float -> Transition
top =
    durationTransition Top


{-| Create a [`Transition`](#Transition) for the [transform](https://developer.mozilla.org/en-US/docs/Web/CSS/transform)
property specifying only the duration
-}
transform : Float -> Transition
transform =
    durationTransition Transform


{-| Create a [`Transition`](#Transition) for the [transform-origin](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-origin)
property specifying only the duration
-}
transformOrigin : Float -> Transition
transformOrigin =
    durationTransition TransformOrigin


{-| Create a [`Transition`](#Transition) for the [vertical-align](https://developer.mozilla.org/en-US/docs/Web/CSS/vertical-align)
property specifying only the duration
-}
verticalAlign : Float -> Transition
verticalAlign =
    durationTransition VerticalAlign


{-| Create a [`Transition`](#Transition) for the [visibility](https://developer.mozilla.org/en-US/docs/Web/CSS/visibility)
property specifying only the duration
-}
visibility : Float -> Transition
visibility =
    durationTransition Visibility


{-| Create a [`Transition`](#Transition) for the [width](https://developer.mozilla.org/en-US/docs/Web/CSS/width)
property specifying only the duration
-}
width : Float -> Transition
width =
    durationTransition Width


{-| Create a [`Transition`](#Transition) for the [word-spacing](https://developer.mozilla.org/en-US/docs/Web/CSS/word-spacing)
property specifying only the duration
-}
wordSpacing : Float -> Transition
wordSpacing =
    durationTransition WordSpacing


{-| Create a [`Transition`](#Transition) for the [z-index](https://developer.mozilla.org/en-US/docs/Web/CSS/z-index)
property specifying only the duration
-}
zIndex : Float -> Transition
zIndex =
    durationTransition ZIndex


type Animatable
    = Background
    | BackgroundColor
    | BackgroundPosition
    | BackgroundSize
    | Border
    | BorderBottom
    | BorderBottomColor
    | BorderBottomLeftRadius
    | BorderBottomRightRadius
    | BorderBottomWidth
    | BorderColor
    | BorderLeft
    | BorderLeftColor
    | BorderLeftWidth
    | BorderRadius
    | BorderRight
    | BorderRightColor
    | BorderRightWidth
    | BorderTop
    | BorderTopColor
    | BorderTopLeftRadius
    | BorderTopRightRadius
    | BorderTopWidth
    | BorderWidth
    | Bottom
    | BoxShadow
    | CaretColor
    | Clip
    | ClipPath
    | Color
    | ColumnCount
    | ColumnGap
    | ColumnRule
    | ColumnRuleColor
    | ColumnRuleWidth
    | ColumnWidth
    | Columns
    | Filter
    | Flex
    | FlexBasis
    | FlexGrow
    | FlexShrink
    | Font
    | FontSize
    | FontSizeAdjust
    | FontStretch
    | FontVariationSettings
    | FontWeight
    | GridColumnGap
    | GridGap
    | GridRowGap
    | Height
    | Left
    | LetterSpacing
    | LineHeight
    | Margin
    | MarginBottom
    | MarginLeft
    | MarginRight
    | MarginTop
    | Mask
    | MaskPosition
    | MaskSize
    | MaxHeight
    | MaxWidth
    | MinHeight
    | MinWidth
    | ObjectPosition
    | Offset
    | OffsetAnchor
    | OffsetDistance
    | OffsetPath
    | OffsetRotate
    | Opacity
    | Order
    | Outline
    | OutlineColor
    | OutlineOffset
    | OutlineWidth
    | Padding
    | PaddingBottom
    | PaddingLeft
    | PaddingRight
    | PaddingTop
    | Right
    | TabSize
    | TextIndent
    | TextShadow
    | Top
    | Transform
    | TransformOrigin
    | VerticalAlign
    | Visibility
    | Width
    | WordSpacing
    | ZIndex


propToString : Animatable -> String
propToString prop =
    case prop of
        Background ->
            "background"

        BackgroundColor ->
            "background-color"

        BackgroundPosition ->
            "background-position"

        BackgroundSize ->
            "background-size"

        Border ->
            "border"

        BorderBottom ->
            "border-bottom"

        BorderBottomColor ->
            "border-bottom-color"

        BorderBottomLeftRadius ->
            "border-bottom-left-radius"

        BorderBottomRightRadius ->
            "border-bottom-right-radius"

        BorderBottomWidth ->
            "border-bottom-width"

        BorderColor ->
            "border-color"

        BorderLeft ->
            "border-left"

        BorderLeftColor ->
            "border-left-color"

        BorderLeftWidth ->
            "border-left-width"

        BorderRadius ->
            "border-radius"

        BorderRight ->
            "border-right"

        BorderRightColor ->
            "border-right-color"

        BorderRightWidth ->
            "border-right-width"

        BorderTop ->
            "border-top"

        BorderTopColor ->
            "border-top-color"

        BorderTopLeftRadius ->
            "border-top-left-radius"

        BorderTopRightRadius ->
            "border-top-right-radius"

        BorderTopWidth ->
            "border-top-width"

        BorderWidth ->
            "border-width"

        Bottom ->
            "bottom"

        BoxShadow ->
            "box-shadow"

        CaretColor ->
            "caret-color"

        Clip ->
            "clip"

        ClipPath ->
            "clip-path"

        Color ->
            "color"

        ColumnCount ->
            "column-count"

        ColumnGap ->
            "column-gap"

        ColumnRule ->
            "column-rule"

        ColumnRuleColor ->
            "column-rule-color"

        ColumnRuleWidth ->
            "column-rule-width"

        ColumnWidth ->
            "column-width"

        Columns ->
            "columns"

        Filter ->
            "filter"

        Flex ->
            "flex"

        FlexBasis ->
            "flex-basis"

        FlexGrow ->
            "flex-grow"

        FlexShrink ->
            "flex-shrink"

        Font ->
            "font"

        FontSize ->
            "font-size"

        FontSizeAdjust ->
            "font-size-adjust"

        FontStretch ->
            "font-stretch"

        FontVariationSettings ->
            "font-variation-settings"

        FontWeight ->
            "font-weight"

        GridColumnGap ->
            "grid-column-gap"

        GridGap ->
            "grid-gap"

        GridRowGap ->
            "grid-row-gap"

        Height ->
            "height"

        Left ->
            "left"

        LetterSpacing ->
            "letter-spacing"

        LineHeight ->
            "line-height"

        Margin ->
            "margin"

        MarginBottom ->
            "margin-bottom"

        MarginLeft ->
            "margin-left"

        MarginRight ->
            "margin-right"

        MarginTop ->
            "margin-top"

        Mask ->
            "mask"

        MaskPosition ->
            "mask-position"

        MaskSize ->
            "mask-size"

        MaxHeight ->
            "max-height"

        MaxWidth ->
            "max-width"

        MinHeight ->
            "min-height"

        MinWidth ->
            "min-width"

        ObjectPosition ->
            "object-position"

        Offset ->
            "offset"

        OffsetAnchor ->
            "offset-anchor"

        OffsetDistance ->
            "offset-distance"

        OffsetPath ->
            "offset-path"

        OffsetRotate ->
            "offset-rotate"

        Opacity ->
            "opacity"

        Order ->
            "order"

        Outline ->
            "outline"

        OutlineColor ->
            "outline-color"

        OutlineOffset ->
            "outline-offset"

        OutlineWidth ->
            "outline-width"

        Padding ->
            "padding"

        PaddingBottom ->
            "padding-bottom"

        PaddingLeft ->
            "padding-left"

        PaddingRight ->
            "padding-right"

        PaddingTop ->
            "padding-top"

        Right ->
            "right"

        TabSize ->
            "tab-size"

        TextIndent ->
            "text-indent"

        TextShadow ->
            "text-shadow"

        Top ->
            "top"

        Transform ->
            "transform"

        TransformOrigin ->
            "transform-origin"

        VerticalAlign ->
            "vertical-align"

        Visibility ->
            "visibility"

        Width ->
            "width"

        WordSpacing ->
            "word-spacing"

        ZIndex ->
            "z-index"


timeToString : Float -> String
timeToString time =
    String.fromFloat time ++ "ms"


{-| This function is used to batch up a list of supplied transitions that have been created (using the property functions listed below) and then produce a [`Css.Style`](http://package.elm-lang.org/packages/rtfeldman/elm-css/latest/Css#Style).
This can then be used with other functions (such as [`Html.Styled.Attributes.css`](http://package.elm-lang.org/packages/rtfeldman/elm-css/latest/Html-Styled-Attributes#css)) to add the desired transitions to elements / classes as required.
-}
transition : List Transition -> Css.Style
transition options =
    let
        v =
            List.foldl
                (\(Transition { animation, duration, delay, timing }) s ->
                    s
                        ++ propToString animation
                        ++ " "
                        ++ timeToString duration
                        ++ " "
                        ++ (Maybe.map timeToString delay
                                |> Maybe.withDefault ""
                           )
                        ++ " "
                        ++ (Maybe.map Css.Internal.timingFunctionToString timing
                                |> Maybe.withDefault ""
                           )
                        ++ ","
                )
                ""
                options
                |> String.slice 0 -1
    in
    Css.property "transition" v



{- INTERNAL HELPERS -}


{-| Create a transition suppling all arguments
-}
fullTransition : Animatable -> Float -> Float -> TimingFunction -> Transition
fullTransition animation duration delay timing =
    Transition
        { animation = animation
        , duration = duration
        , delay = Just delay
        , timing = Just timing
        }


{-| Create a transition supplying all arguments except for timing function (in this case CSS would use an ease timing
function as its default)
-}
durationDelayTransition : Animatable -> Float -> Float -> Transition
durationDelayTransition animation duration delay =
    Transition
        { animation = animation
        , duration = duration
        , delay = Just delay
        , timing = Nothing
        }


{-| Create a transition with no deplay and no timing function specified (in this case CSS would default to use an ease timing
with no delay as you might expect)
-}
durationTransition : Animatable -> Float -> Transition
durationTransition animation duration =
    Transition
        { animation = animation
        , duration = duration
        , delay = Nothing
        , timing = Nothing
        }
