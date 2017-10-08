sumOfSquares :: Int -> Int
sumOfSquares n = sum [x * x | x <- [1..n]]

squareOfSum :: Int -> Int
squareOfSum n = m * m
  where m = sum [1..n]

main = print ( (squareOfSum 100) - (sumOfSquares 100) )
