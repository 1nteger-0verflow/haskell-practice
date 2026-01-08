import System.Environment
main = do args <- getArgs
          print $ sum_ args

sum_ :: [String] -> Int
sum_ cs = sum $ map read cs