module HtmlContents.About exposing (about)

import Browser
import ContentsCommon exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Msg exposing (Msg(..))


about : Browser.Document Msg
about =
    { title = "About | " ++ pageTitle
    , body =
        [ header []
            [ h1 [] [ text "ABOUT" ]
            ]
        , main_ []
            [ h2 [] [ text "名前: newnakashima" ]
            , h2 [] [ text "職業: プログラマー" ]
            , p []
                [ text "プログラミングを生業としています。"
                , text "主にやっているのはWebのサーバーサイド、AWS環境設計・構築などです。"
                , text "たまにスマホネイティブアプリの開発をすることもあります。"
                ]
            , h2 [] [ text "趣味" ]
            , p []
                [ text "読書（たまにSFを読みます）、音楽（昔ロックバンドをやってました）" ]
            , h2 [] [ text "職務経歴" ]
            , p []
                [ text "IT関連職に就いた後の経歴です。"
                , text "ちなみにIT系に来る前は都内の某レコーディングスタジオで働いてました。"
                , text "（エンジニアではありません）"
                ]
            , section []
                [ h3 [] [ text "2014/02 - 2015/01 商店街活性化の団体で契約職員" ]
                , p []
                    [ text "地方都市の商店街活性化団体で契約職員をしました。"
                    , text "買物弱者問題解決のためのスマホアプリ運用スタッフを募集していたので、面白そうだと思い応募しました。"
                    , text "丁度そのころ買物弱者の問題に興味を持っていました。"
                    ]
                ]
            , section []
                [ h3 [] [ text "2015/02 - 2017/10 小さなソフト開発会社で受託開発" ]
                , p []
                    [ text "前述の商店街アプリを開発していた会社からお誘い頂きました。ありがたいことです。"
                    , text "このとき初めてプログラミングを学びました。"
                    , text "PHP、JavaScript、Java、Objective-C、Swift、PostgreSQLなどを使用していました。"
                    , text "ちなみにこのとき既に31歳でした。"
                    ]
                ]
            , section []
                [ h3 [] [ text "2017/11 - 2019/02 Webの会社で受託開発" ]
                , p []
                    [ text "１つ目の会社は環境はすごく良く、勉強にはなったのですが、個人的にはサーバーサイドをもっと勉強したいと思っていました。"
                    , text "また、同レベルの同僚が全くいなかったので自分の客観的なスキルがわからないのと、切磋琢磨する相手がいませんでした。"
                    , text "少しだけ都会の会社に転職することにしました。"
                    , text "ここではPHP、MySQL、Nginx、Docker、Vagrantを使ったサーバーサイドの開発を行いました。"
                    , text "アジャイル、スクラムといったものについて勉強できたのも良かったです。"
                    ]
                ]
            , section []
                [ h3 [] [ text "2019/03 - 2019/12 SIerで客先常駐" ]
                , p []
                    [ text "Webの会社では仲の良い同僚もできて良かったのですが、将来的にフリーランスになりたかった自分の希望と、管理職的な仕事もやっていって欲しいという会社の要望とがだんだん折り合わなくなりました。"
                    , text "一年と数ヶ月働いたあと小さい会社に転職しました。将来的に独立もアリと求人に書いてあったからです。"
                    , text "そこでは客先常駐、いわゆるSESというものを初めて経験しました。また、ガチのSIerでの仕事を初めて経験しました。"
                    , text "技術的な成長は正直ありませんでしたが、助けてくれる人の全くいない環境でいかに周囲に働きかけて仕事を進めていくかを学ぶことができました。"
                    ]
                ]
            , section []
                [ h3 [] [ text "2020/01 - フリーランス" ]
                , p []
                    [ text "当初の希望通りフリーランスとして独立することにしました。"
                    , text "PHP等を使用したLinux環境のサーバーサイド開発が中心ですが、いろいろ楽しい仕事をやっていこうと思っています。"
                    ]
                ]
            ]
        ]
    }
