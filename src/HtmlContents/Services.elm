module HtmlContents.Services exposing (services)

import Browser
import ContentsCommon exposing (pageTitle)
import Html exposing (br, div, h1, h2, header, li, main_, p, text, ul)
import Msg exposing (Msg)


services : Browser.Document Msg
services =
    { title = "Services | " ++ pageTitle
    , body =
        [ header []
            [ h1 [] [ text "Services" ]
            ]
        , main_ []
            [ h2 [] [ text "Web開発" ]
            , p []
                [ text "Webシステム・Webアプリの開発を行います。"
                , br [] []
                , text "PHP、Python、JavaScript、TypeScript、MySQLなどを使用します。"
                , br [] []
                , text "React、Gatsbyなどを使用したSPAも作成可能です。"
                ]
            , h2 [] [ text "スマートフォンアプリ開発" ]
            , p []
                [ text "スマートフォンアプリの開発を行います。"
                , br [] []
                , text "要件に応じて適切な技術を選択します。"
                ]
            , h2 [] [ text "AWS設計・構築" ]
            , p []
                [ text "AWS環境の設計及び構築を行います。"
                , br [] []
                , text "ECS、ECR、Lambdaなどのサービスを組み合わせて低コストなクラウド環境を構築します。"
                ]
            , h2 [] [ text "やらないこと" ]
            , p [] [ text "■Webやアプリの画面デザインは行っておりません。" ]
            , p [] [ text "■レベニューシェア方式のお話はお断りさせていただいております。" ]
            , p [] [ text "■客先常駐のSESは行っておりません。" ]
            , p [] [ text "■ドキュメント作成のみのお仕事はお受けしておりません。" ]
            , p [] [ text "■テスト・デバッグ要員としてのお仕事はお受けしておりません。" ]
            , p [] [ text "■プロジェクトマネジメントのみのお仕事はお受けしておりません。" ]
            , p [] [ text "■「技術的に可能かどうか」をその場で確認するための打合せ参加はお断りさせていただいております。" ]
            , p [] [ text "■プロジェクトマネジメントのみのお仕事はお受けしておりません。" ]
            ]
        ]
    }
