import Control.Arrow
import System.Environment

getTeaser :: String -> String
getTeaser = unlines . takeWhile (/= "<!--teaser-->") . lines

main :: IO ()
main = do
  inFile:_ <- getArgs
  readFile inFile >>= (getTeaser >>> putStrLn)
