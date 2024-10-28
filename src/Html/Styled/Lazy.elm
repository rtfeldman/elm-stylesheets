module Html.Styled.Lazy exposing
    ( lazy, lazy2, lazy3, lazy4, lazy5, lazy6, lazy7
    , lazyWithNonce, lazy2WithNonce, lazy3WithNonce, lazy4WithNonce, lazy5WithNonce, lazy6WithNonce
    )

{-| **NOTE:** `Html.Lazy` goes up to `lazy8` and `lazy7WithNonce`, but
`Html.Styled.Lazy` can only go up to `lazy7` and `lazy6WithNonce` because it
uses one of the arguments to track styling info.

Since all Elm functions are pure we have a guarantee that the same input

will always result in the same output. This module gives us tools to be lazy
about building `Html` that utilize this fact.

Rather than immediately applying functions to their arguments, the `lazy`
functions just bundle the function and arguments up for later. When diffing
the old and new virtual DOM, it checks to see if all the arguments are equal
by reference. If so, it skips calling the function!

This is a really cheap test and often makes things a lot faster, but definitely
benchmark to be sure!

@docs lazy, lazy2, lazy3, lazy4, lazy5, lazy6, lazy7
@docs lazyWithNonce, lazy2WithNonce, lazy3WithNonce, lazy4WithNonce, lazy5WithNonce, lazy6WithNonce

-}

import Html.Styled exposing (Html)
import VirtualDom.Styled


{-| A performance optimization that delays the building of virtual DOM nodes.

Calling `(view model)` will definitely build some virtual DOM, perhaps a lot of
it. Calling `(lazy view model)` delays the call until later. During diffing, we
can check to see if `model` is referentially equal to the previous value used,
and if so, we just stop. No need to build up the tree structure and diff it,
we know if the input to `view` is the same, the output must be the same!

-}
lazy : (a -> Html msg) -> a -> Html msg
lazy =
    VirtualDom.Styled.lazy


{-| Same as `lazy` but checks on two arguments.
-}
lazy2 : (a -> b -> Html msg) -> a -> b -> Html msg
lazy2 =
    VirtualDom.Styled.lazy2


{-| Same as `lazy` but checks on three arguments.
-}
lazy3 : (a -> b -> c -> Html msg) -> a -> b -> c -> Html msg
lazy3 =
    VirtualDom.Styled.lazy3


{-| Same as `lazy` but checks on four arguments.
-}
lazy4 : (a -> b -> c -> d -> Html msg) -> a -> b -> c -> d -> Html msg
lazy4 =
    VirtualDom.Styled.lazy4


{-| Same as `lazy` but checks on five arguments.
-}
lazy5 : (a -> b -> c -> d -> e -> Html msg) -> a -> b -> c -> d -> e -> Html msg
lazy5 =
    VirtualDom.Styled.lazy5


{-| Same as `lazy` but checks on six arguments.
-}
lazy6 : (a -> b -> c -> d -> e -> f -> Html msg) -> a -> b -> c -> d -> e -> f -> Html msg
lazy6 =
    VirtualDom.Styled.lazy6


{-| Same as `lazy` but checks on seven arguments.
-}
lazy7 : (a -> b -> c -> d -> e -> f -> g -> Html msg) -> a -> b -> c -> d -> e -> f -> g -> Html msg
lazy7 =
    VirtualDom.Styled.lazy7


{-| Same as [`lazy`](#lazy) but adds a
[nonce](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/nonce)
to the style tag so that it is compliant with the Content Security Policy of
your website.

If you don't need a nonce, you should use [`lazy`](#lazy).

-}
lazyWithNonce : String -> (a -> Html msg) -> a -> Html msg
lazyWithNonce =
    VirtualDom.Styled.lazyWithNonce


{-| Same as `lazy2` but adds a nonce to the style tag.
-}
lazy2WithNonce : String -> (a -> b -> Html msg) -> a -> b -> Html msg
lazy2WithNonce =
    VirtualDom.Styled.lazy2WithNonce


{-| Same as `lazy3` but adds a nonce to the style tag.
-}
lazy3WithNonce : String -> (a -> b -> c -> Html msg) -> a -> b -> c -> Html msg
lazy3WithNonce =
    VirtualDom.Styled.lazy3WithNonce


{-| Same as `lazy4` but adds a nonce to the style tag.
-}
lazy4WithNonce : String -> (a -> b -> c -> d -> Html msg) -> a -> b -> c -> d -> Html msg
lazy4WithNonce =
    VirtualDom.Styled.lazy4WithNonce


{-| Same as `lazy5` but adds a nonce to the style tag.
-}
lazy5WithNonce : String -> (a -> b -> c -> d -> e -> Html msg) -> a -> b -> c -> d -> e -> Html msg
lazy5WithNonce =
    VirtualDom.Styled.lazy5WithNonce


{-| Same as `lazy6` but adds a nonce to the style tag.
-}
lazy6WithNonce : String -> (a -> b -> c -> d -> e -> f -> Html msg) -> a -> b -> c -> d -> e -> f -> Html msg
lazy6WithNonce =
    VirtualDom.Styled.lazy6WithNonce
