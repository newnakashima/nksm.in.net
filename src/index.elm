import Browser
import Html exposing ( Html, div, p, text )

main = Browser.sandbox { init = init, update = update, view = view }

type alias Model = Int

init : Model
init = 0

update : String -> Model -> Model
update msg model = 0

view : Model -> Html String
view model = text "Hoge"
