module Types exposing (..)

import Home.Types
import Router.Types


type alias Model =
    { router : Router.Types.Model
    , home : Home.Types.Model
    }


type Msg
    = MsgForRouter Router.Types.Msg
    | HomeNoOp Home.Types.Msg
