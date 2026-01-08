main :: IO ()
main = do
  putStrLn "Hello world!"
  print $ product [1 .. 5]
  print $ take 5 fib
  print $ take 15 primes

main2 = print "Hello"

fib = 0 : 1 : zipWith (+) fib (tail fib)

primes = sieve [2 ..]

sieve (p : xs) = p : sieve [x | x <- xs, x `mod` p /= 0]
