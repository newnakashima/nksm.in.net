module Main exposing (Model, Page(..), Route(..), init, main, pageTitle, routeParser, subscriptions, toRoute, update, view)

import Browser
import Browser.Hash as Hash
import Browser.Navigation as Nav
import ContentsCommon exposing (pageTitle)
import Html exposing (..)
import Html.Attributes exposing (..)
import HtmlContents.About exposing (about)
import HtmlContents.Prices exposing (prices)
import HtmlContents.Index exposing (index)
import Msg exposing (Msg(..))
import Url
import Url.Parser exposing ((</>), Parser, map, oneOf, parse, s, string, top)


main : Program () Model Msg
main =
    Hash.application
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }


type Route
    = Misc String
    | Home
    | Prices
    | NotFound


routeParser : Parser (Route -> a) a
routeParser =
    oneOf
        [ Url.Parser.map Misc (Url.Parser.s "misc" </> string)
        , Url.Parser.map Home top
        , Url.Parser.map Prices (Url.Parser.s "prices")
        ]


toRoute : String -> Route
toRoute string =
    case Url.fromString string of
        Nothing ->
            NotFound

        Just url ->
            Maybe.withDefault NotFound (parse routeParser url)


type Page
    = AboutPage
    | PricesPage
    | HomePage


type alias Model =
    { key : Nav.Key
    , url : Url.Url
    , page : Page
    }


init : () -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    case toRoute (Url.toString url) of
        Misc "about" ->
            ( Model key url AboutPage, Cmd.none )

        Prices ->
            ( Model key url PricesPage, Cmd.none )

        _ ->
            ( Model key url HomePage, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LinkClicked urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    case toRoute (Url.toString url) of
                        Misc "about" ->
                            ( { model | page = AboutPage }, Nav.pushUrl model.key (Url.toString url) )

                        Prices ->
                            ( { model | page = PricesPage }, Nav.pushUrl model.key (Url.toString url) )

                        _ ->
                            ( { model | page = HomePage }, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                    ( model, Nav.load href )

        UrlChanged url ->
            case toRoute (Url.toString url) of
                Misc "about" ->
                    ( { model | url = url, page = AboutPage }
                    , Cmd.none
                    )

                Prices ->
                    ( { model | url = url, page = PricesPage }
                    , Cmd.none
                    )

                _ ->
                    ( { model | url = url, page = HomePage }
                    , Cmd.none
                    )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


pageTitle : String
pageTitle =
    "newnakashimaのサイト"


view : Model -> Browser.Document Msg
view model =
    case model.page of
        AboutPage ->
            about

        PricesPage ->
            prices

        _ ->
            index
