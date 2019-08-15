module Home.Types exposing (Model, Msg(..))

import Http
import RemoteData exposing (..)


type alias Model =
    { artistName : String
    }


type Msg
    = HomeNoOp
    | UpdateArtistName String
