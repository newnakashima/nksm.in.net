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
            -- , h2 [] [ text "Services" ]
            -- , div []
            --     [ a
            --         [ href "/#/services"
            --         ]
            --         [ text "Services" ]
            --     ]
            -- , h2 [] [ text "Prices" ]
            -- , div []
            --     [ a
            --         [ href "/#/prices"
            --         ]
            --         [ text "Prices" ]
            --     ]
            , h2 [] [ text "BLOG" ]
            , div []
                [ a
                    [ href "https://blog.nksm.in.net/"
                    , target "_blank"
                    ]
                    [ text "https://blog.nksm.in.net/" ]
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
                [ a
                    [ href "/#/misc/about"
                    ]
                    [ text "より詳細な自己紹介" ]
                ]
            ]
        ]
    }
