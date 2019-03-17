module Main where

import System.Environment

main :: IO ()
main = do
  args <- getArgs
  let joined = unwords args
  putStrLn joined
