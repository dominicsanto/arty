module Home.Update exposing (init, update)

import Api
import Home.Request exposing (..)
import Home.Types exposing (..)
import RemoteData exposing (..)
import Return exposing (Return, return)
import Session exposing (Session)
import Types


init : Return Msg Model
init =
    return
        { noOp = "Home"
        , session = NotAsked
        }
        getSpotifyToken


update : Types.Msg -> Model -> Return Msg Model
update msgFor model =
    case msgFor of
        Types.HomeNoOp msg ->
            updateHome msg model

        _ ->
            return model Cmd.none


updateHome : Msg -> Model -> Return Msg Model
updateHome msg model =
    case msg of
        HomeNoOp ->
            return { model | session = Loading } getSpotifyToken

        TokenMsg result ->
            return { model | session = result } Cmd.none
