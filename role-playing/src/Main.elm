module Main exposing (..)

import Navigation exposing (Location)
import Messages exposing (Msg(..))
import Models exposing (Model, initialModel)
import Update exposing (update)
import View exposing (view)
import Players.Commands exposing (fetchAll)
import Routing exposing (Route)

init : Location -> ( Model, Cmd Msg )
init result =
    let
        currentRoute = 
            Routing.parseLocation result
    in
        ( initialModel currentRoute, Cmd.map PlayersMsg fetchAll )


-- Subscription

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

-- Main

main : Program Never Model Msg
main =
    Navigation.program OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }