module HtmlContents.Prices exposing (prices)

import Browser
import ContentsCommon exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Msg exposing (Msg(..))


prices : Browser.Document Msg
prices =
    { title = "Prices | " ++ pageTitle
    , body =
        [ header []
            [ h1 [] [ text "料金" ]
            ]
        ]
    }
