fn :: Int -> Maybe String
fn n
  | n == 1 = Just "One"
  | n == 2 = Just "Two"
  | otherwise = Nothing

main = do
  print $ fn 1 -- Just "One"
  print $ fn 2 -- Just "Two"
  print $ fn 3 -- Nothing
