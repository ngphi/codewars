import Data.Char

persistence :: Int -> Int
persistence n = if n < 10 then 0 else 1 + persistence (product $ map digitToInt $ show n)
