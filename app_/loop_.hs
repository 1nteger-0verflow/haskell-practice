import Control.Monad

loop 0 action = return ()
loop n action = do action; loop (n - 1) action

main = do
  replicateM_ 3 $ putStrLn "Hello"
  loop 3 $ putStrLn "Hello"
