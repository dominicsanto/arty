module Home.View exposing (view)

import Home.Types exposing (..)
import Element exposing (..)
import Element.Events exposing (..)
import Element.Input exposing (button)
import Element.Region exposing (..)
import RemoteData exposing (..)


view : Model -> Element Msg
view model =
  let
      _= Debug.log "You got session" model.session
  in

    column [ spacing 5 ]
        [ el [ heading 2 ] (text "Welcome to Arty") ]
