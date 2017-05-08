import Data.Char (toLower)
import Data.List

--My solution
-- lowerCase :: String -> String
-- lowerCase = map toLower

-- isIsogram :: String -> Bool
-- isIsogram (x:xs) = if (any (\c -> c == (toLower x)) (lowerCase xs)) then False else isIsogram (lowerCase xs)
-- isIsogram [] = True

-- better solution
isIsogram :: String -> Bool
isIsogram str = null $ map toLower str \\ ['a'..'z']
