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
                    , dt [] [ text "仕事で使う技術" ]
                    , dd
                        []
                        [ ul
                          []
                          [ li [] [ text "PHP"]
                          , li [] [ text "Laravel"]
                          , li [] [ text "JavaScript"]
                          , li [] [ text "TypeScript"]
                          , li [] [ text "Python"]
                          , li [] [ text "Linux"]
                          , li [] [ text "Nginx"]
                          , li [] [ text "MySQL"]
                          , li [] [ text "AWS"]
                          ]
                        ]
                    ]
                ]
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
                [ ul []
                    [ viewLink "より詳細な自己紹介"
                        "/#/misc/about"
                        "より詳細な自己紹介です。"
                    ]
                ]
            , h2 [] [ text "Prices" ]
            , div []
                [ a
                    [ href "/#/prices"
                    ]
                    [ text "Prices"]
                ]
            ]
        ]
    }
