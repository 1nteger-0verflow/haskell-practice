data Color = Red | Green | Blue deriving (Show, Eq)

main = do
  let x = Red
  let y = Green
  if x == y then print "Equal" else print "Not Equal"
  print x
