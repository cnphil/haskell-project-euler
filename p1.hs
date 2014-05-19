answer = sum $ filter (\i->i `mod` 3 == 0 || i `mod` 5 == 0) [1..999]
