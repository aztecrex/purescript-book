module Main where

import Math (sqrt)
import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)

diagonal :: Number -> Number -> Number
diagonal w h = sqrt (w * w + h * h)

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = logShow $ diagonal 3.0 4.0
