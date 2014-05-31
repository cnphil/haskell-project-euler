sieve (p:ps) = p : (sieve $ filter ((/=0).(`mod`p)) ps)

primes = 2 : 3 : (sieve [a + b | a <- [6,12..], b <- [-1, 1]])

answer = sum $ takeWhile (<2000000) primes

main = do
    putStr $ show answer
