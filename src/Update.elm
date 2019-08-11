module Update exposing (andMapCmd, init, update)

import Browser
import Browser.Navigation exposing (Key)
import Home.Update
import Return exposing (Return, andMap, mapCmd, singleton)
import Router.Update
import Types exposing (..)
import Url exposing (Url)


init : flags -> Url -> Key -> Return Msg Model
init _ url key =
    singleton Model
        |> andMapCmd MsgForRouter (Router.Update.init url key)
        |> andMapCmd HomeNoOp Home.Update.init


update : Msg -> Model -> Return Msg Model
update msg model =
    singleton Model
        |> andMapCmd MsgForRouter (Router.Update.update msg model.router)
        |> andMapCmd HomeNoOp (Home.Update.update msg model.home)


andMapCmd : (msg1 -> msg2) -> Return msg1 model1 -> Return msg2 (model1 -> model2) -> Return msg2 model2
andMapCmd msg =
    andMap << mapCmd msg
