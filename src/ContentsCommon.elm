module ContentsCommon exposing (pageTitle, viewLink)

import Html exposing (..)
import Html.Attributes exposing (..)


pageTitle : String
pageTitle =
    "newnakashimaのサイト"


viewLink : String -> String -> String -> Html msg
viewLink linkText link description =
    li []
        [ div []
            [ a [ href link ] [ text linkText ] ]
        , div [] [ text description ]
        ]
