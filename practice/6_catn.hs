main = do cs <- getContents
          putStr $ numbering cs

numbering :: String -> String
numbering cs = unlines $ map format $ zipLineNumber $ lines cs

zipLineNumber = zip [1..]

format :: (Int, String) -> String
format (n, line) = rjust 4 (show n) ++ " " ++ line

rjust :: Int -> String -> String
rjust width s = replicate (width - length s) '0' ++ s