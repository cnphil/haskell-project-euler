products = [ a*b | a <- [100..999], b <- [100..999]]

answer = maximum $ filter isPalindrom products
    where isPalindrom n = (show n) == (reverse $ show n)
