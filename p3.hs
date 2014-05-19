sieve (p:ps) = p : (sieve $ filter ((/=0).(`mod`p)) ps)

primes = 2 : (sieve [3,5..])

largestPrime n primes@(p:ps)
    | n == 1 = p
    | p * p > n = n
    | n `mod` p == 0 = largestPrime (n `div` p) primes
    | otherwise = largestPrime n ps

answer = largestPrime 600851475143 primes

