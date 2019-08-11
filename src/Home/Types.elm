module Home.Types exposing (Model, Msg(..))

import Http
import RemoteData exposing (..)
import Session exposing (Session)


type alias Model =
    { noOp : String
    , session : WebData Session
    }


type Msg
    = HomeNoOp
    | TokenMsg (WebData Session)
