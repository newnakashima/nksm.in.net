import Browser
import Browser.Navigation as Nav
import Html exposing (..)
import Html.Attributes exposing (..)
import Url
import Url.Parser exposing (Parser, parse, (</>), int, map, oneOf, s, string, top)

main : Program () Model Msg
main = Browser.application
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
  | NotFound

routeParser : Parser (Route -> a) a
routeParser =
  oneOf
    [ map Misc (s "misc" </> string)
    , map Home Url.Parser.top
    ]

toRoute : String -> Route
toRoute string =
  case Url.fromString string of
    Nothing ->
      NotFound
    Just url ->
      Maybe.withDefault NotFound (parse routeParser url)

type alias Model =
  { key : Nav.Key
  , url : Url.Url
  }

init : () -> Url.Url -> Nav.Key -> (Model, Cmd Msg)
init flags url key =
  case toRoute (Url.toString url) of
    NotFound ->
      ( Model key url, Cmd.none )
    Misc page ->
      ( Model key url, Cmd.none )
    Home ->
      ( Model key url, Cmd.none )
  -- ( Model key url, Cmd.none )

type Msg
  = LinkClicked Browser.UrlRequest
  | UrlChanged Url.Url

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    LinkClicked urlRequest ->
      case urlRequest of
        Browser.Internal url ->
          ( model, Nav.pushUrl model.key ( Url.toString url ) )

        Browser.External href ->
          ( model, Nav.load href )
    UrlChanged url ->
      ( { model | url = url }
      , Cmd.none
      )

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

view : Model -> Browser.Document Msg
view model =
  { title = "newnakashimaのサイト"
  , body =
    [ header []
      [ h1 [] [ text "newnakashimaのサイト" ]
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
          [ href "https://newnakashima.github.io"
          , target "_blank"
          ]
          [ text "https://newnakashima.github.io" ]
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
        [
          ul []
          [ viewLink "/misc/ansible"
          ]
        ]
      ]
    ]
  }

viewLink : String -> Html msg
viewLink path =
  li [] [ a [ href path ] [ text path ] ]

