module Main where

import System.Environment
import Data.List

-- Given an list of command line arguments, return the options and the rest
separateOptionsFromArguments = 
  partition (isPrefixOf "-")

-- Given a list of options return the display function that'll be used
optionsToDisplayFunction = 
  whatDisplayFunction . find wantsNoNewline
  where
    wantsNoNewline "-n" = True
    wantsNoNewline _    = False

    whatDisplayFunction Nothing = putStrLn
    whatDisplayFunction _       = putStr

main :: IO ()
main = do
  args <- getArgs
  let (options, words) = separateOptionsFromArguments args
  let display = optionsToDisplayFunction options
  let joined = unwords words
  display joined
