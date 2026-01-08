data Point a = Point a a deriving (Show)

addPoint (Point x1 y1) (Point x2 y2) = Point (x1 + x2) (y1 + y2)

main = do
  let a = Point 100 200
      b = Point 300 400
      c = addPoint a b
  print c -- Point 400 600
