module Models exposing (..)

import Players.Models exposing (Player)


-- Model

type alias Model =
    { players : List Player
    }

initialModel : Model
initialModel =
    { players = [ Player "1" "Sam" 1 ]
    }