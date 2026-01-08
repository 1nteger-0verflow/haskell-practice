import Control.Monad.Identity (Identity)

fn n = n * 2

fnM_ x = return (2 * x)

fnM2_ x = do
  x' <- x
  2 * x'

main = do
  print $ fn <$> [1, 2, 3] -- [2, 4, 6]
  print $ fn <$> Nothing -- Nothing
  print $ fn <$> Just 5 -- Just 10
  print $ fmap fn (2, 3) -- (2, 6)
  print $ (* 2) <$> Just 5 -- Just10
  print $ (* 2) <$> [1, 2, 3] -- [2, 4, 6]
  print $ [(* 2), (* 3)] <*> [1.5, 2.5, 3.5] -- [2, 4, 6, 3, 6, 9]
  print $ [1, 2, 3] >>= fnM_ -- [2, 4, 6]
  print $ Just 5 >>= fnM_ -- Just 10
  print $ Just 5 -- Just 10
  print $ Nothing >>= fnM_ -- Nothing
