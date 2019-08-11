module View exposing (renderRoute, view)

import Browser
import Home.View
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
            Element.map HomeNoOp (Home.View.view model.home)

        NotFound ->
            text "404 Not Found"
