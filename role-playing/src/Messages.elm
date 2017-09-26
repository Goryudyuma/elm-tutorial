module Messages exposing (..)

import Navigation exposing (Location)
import Players.Messages


-- Message

type Msg
    = PlayersMsg Players.Messages.Msg
    | OnLocationChange Location
