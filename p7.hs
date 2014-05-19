sieve (p:ps) = p : (sieve $ filter ((/=0).(`mod`p)) ps)

primes = 2 : (sieve [3,5..])

answer = last $ take 10001 primes

