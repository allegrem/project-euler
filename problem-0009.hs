main = print $ product $ head [ [a,b,c] | a <- [1..1000], b <- [a..1000], c <- [b..1000], a * a + b * b == c * c, a + b + c == 1000 ]
