module Home.Request exposing (getSpotifyToken)

import Api
import Home.Types exposing (..)
import Http
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (required)
import RemoteData exposing (..)
import Session exposing (Session)


getSpotifyToken : Cmd Msg
getSpotifyToken =
    let
        returnMsg =
            RemoteData.fromResult >> TokenMsg
    in
    Http.request
        { method = "POST"
        , headers = [ Http.header "Authorization" ("Basic " ++ Api.base64EncodedKey), Http.header "Access-Control-Allow-Origin" "*" ]
        , body = Http.emptyBody
        , url = "https://accounts.spotify.com/api/token"
        , expect = Http.expectJson returnMsg decodeToken
        , timeout = Nothing
        , tracker = Nothing
        }


decodeToken : Decoder Session
decodeToken =
    Decode.succeed Session
        |> required "access_token" Decode.string
