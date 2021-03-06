{-# OPTIONS_GHC -Wno-partial-fields #-}

module Command
    ( Command (..)
    , getCommand
    ) where

import Prelude

import           Data.Text
    (Text)
import           GHC.Generics
    (Generic)
import qualified Options.Generic as OG

data Command
  = Create
      { name     :: Text
      , template :: String
      }
  deriving stock (Generic, Show)
  deriving anyclass OG.ParseRecord

getCommand :: IO Command
getCommand = OG.getRecord "thing"
