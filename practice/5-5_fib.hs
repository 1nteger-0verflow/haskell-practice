main = print $ take 100 fib
fib :: [Integer]
fib = 1:1:zipWith (+) fib (tail fib)
