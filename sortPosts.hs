import Control.Arrow
import Data.List
import Data.Maybe
import System.Environment
import Data.Function

getDate :: String -> Maybe String
getDate text = case dropWhile (/= "class=\"date\">Date:") . concatMap words . lines $ text of
  _ : date : _ -> Just date
  _ -> Nothing

getDateTeaser :: String -> Maybe (String, String)
getDateTeaser text = case (getDate text, text) of
  (Just date, teaser) -> Just (date, teaser)
  _ -> Nothing

getDateTeasers :: [String] -> String
getDateTeasers = concatMap snd . sortBy (flip compare `on` fst) . mapMaybe getDateTeaser

main :: IO ()
main =
  getArgs
    >>= ( mapM readFile
            >>> fmap getDateTeasers
            >>> fmap ("<h1>Posts</h1>" ++)
        )
    >>= putStr
