module HtmlContents.Index exposing (index)

import Browser
import ContentsCommon exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Msg exposing (Msg(..))


index : Browser.Document Msg
index =
    { title = pageTitle
    , body =
        [ header []
            [ h1 [] [ text pageTitle ]
            ]
        , main_ []
            [ h2 [] [ text "ABOUT" ]
            , div []
                [ dl []
                    [ dt [] [ text "名前" ]
                    , dd [] [ text "newnakashima" ]
                    , dt [] [ text "職業" ]
                    , dd [] [ text "プログラマー" ]
                    ]
                ]
            , h2 [] [ text "BLOG" ]
            , div []
                [ a
                    [ href "https://blog-newnakashima.netlify.com/"
                    , target "_blank"
                    ]
                    [ text "https://blog-newnakashima.netlify.com/" ]
                ]
            , h2 [] [ text "GitHub" ]
            , div []
                [ a
                    [ href "https://github.com/newnakashima"
                    , target "_blank"
                    ]
                    [ text "https://github.com/newnakashima" ]
                ]
            , h2 [] [ text "misc" ]
            , div []
                [ ul []
                    [ viewLink "より詳細な自己紹介"
                        "/#/misc/about"
                        "より詳細な自己紹介です。"
                    ]
                ]
            ]
        ]
    }
