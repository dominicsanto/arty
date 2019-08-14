module Home.View exposing (view)

import Element exposing (..)
import Element.Events exposing (..)
import Element.Input as Input
import Element.Region exposing (..)
import Home.Types exposing (..)
import RemoteData exposing (..)


view : Model -> Element Msg
view model =
    column [ spacing 5 ]
        [ el [ heading 2 ] (text "Welcome to Arty")
        , Input.text []
            { onChange = UpdateArtistName
            , text = model.artistName
            , placeholder = Nothing
            , label = Input.labelHidden ""
            }
        ]
