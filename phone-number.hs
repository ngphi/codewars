-- import Text.Printf(printf)

-- createPhoneNumber :: [Int] -> String
-- createPhoneNumber [a, b, c, d, e, f, g, h, i, j] = printf "(%d%d%d) %d%d%d-%d%d%d%d" a b c d e f g h i j


import Data.List

createPhoneNumber :: [Int] -> String
createPhoneNumber xs = foldl (\acc x -> acc ++ x) "(" $ zipWith (\i x -> addMore i x) [0..] xs

addMore :: Int -> Int -> String
addMore id str
  | id == 3 = ") " ++ show str
  | id == 6 = "-" ++ show str
  | otherwise = show str

