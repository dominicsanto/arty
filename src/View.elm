module View exposing (renderRoute, view)

import Browser
import Cats.View
import Element exposing (..)
import Element.Events exposing (..)
import Element.Input exposing (button)
import Element.Region exposing (..)
import Router.Routes exposing (..)
import Router.Types exposing (Msg(..))
import Types exposing (..)


view : Model -> Browser.Document Types.Msg
view model =
    { title = "arty"
    , body =
        [ Element.layout [] <|
            el [ width (px 800), centerX ] (renderRoute model)
        ]
    }


renderRoute : Model -> Element Types.Msg
renderRoute model =
    case model.router.page of
        Home ->
            column
                [ spacing 5 ]
                [ el ([ heading 1 ]) (text "Welcome To Arty")
                ]

        NotFound ->
            text "404 Not Found"
