{-
gcd :: Int -> Int -> Int
gcd a b = if b == 0 then a else gcd b (a`mod`b)

lcm :: Int -> Int -> Int
lcm a b = (a * b) `div` (gcd a b)
-}

answer = foldr lcm 1 [1..20]
