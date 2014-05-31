answer' = [a * b * c | a <- [0..1000], b <- [a..1000], let c = 1000 - b - a, c > 0, a * a + b * b == c * c, a < b, b < c, a + b + c == 1000]

answer = head answer'

