import Browser exposing ( Document )
import Html exposing
  ( Html
  , header
  , main_
  , h1
  , h2
  , div
  , p
  , text
  , dl
  , dt
  , dd
  , a
  )

main = Browser.document
  { init = init
  , update = update
  , subscriptions = subscriptions
  , view = view
  }

type alias Model = Int

type alias Msg = String

init : () -> (Model, Cmd Msg)
init _ = (0, Cmd.none)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model = (0, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

view : Model -> Document Msg
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
        [ a [] [ text "test" ]
        ]
      ]
    ]
  }
