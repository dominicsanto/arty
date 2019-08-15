module Home.Update exposing (init, update)

import Api
import Home.Types exposing (..)
import RemoteData exposing (..)
import Return exposing (Return, return)
import Types


init : Return Msg Model
init =
    return
        { artistName = ""
        }
        Cmd.none


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
            return model Cmd.none

        UpdateArtistName newName ->
            return { model | artistName = newName } Cmd.none
