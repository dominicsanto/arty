module Home.Types exposing (Model, Msg(..))

import Http
import RemoteData exposing (..)


type alias Model =
    { noOp : String
    }


type Msg
    = HomeNoOp
