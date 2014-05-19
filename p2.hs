fib = 1 : 1 : (zipWith (+) fib (drop 1 fib))

answer = sum $ filter even $ takeWhile (<=4000000) fib
