main = do cs <- getContents
          putStr $ expand cs

expand :: String -> String
expand = map translate

translate :: Char -> Char
translate c = if c == '\t' then '@' else c
