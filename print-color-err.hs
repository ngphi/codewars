import Data.List

print_error:: [Char] -> [Char]
print_error s =
  let origin = length s
      inter = length $ intersect s ['a'..'m']
  in (show (origin - inter)) ++ "/" ++ (show origin)

--best one
-- import Text.Printf
-- import Control.Applicative

-- printerError :: [Char] -> [Char]
-- printerError = printf "%d/%d" <$> length . filter (> 'm') <*> length
