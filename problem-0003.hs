factorsFromList :: [Int] -> Int -> [Int]
factorsFromList ns n = [p | p <- ns', n `mod` p == 0]
  where ns' = takeWhile (< (ceiling $ sqrt $ fromIntegral n) ) ns

isPrime :: [Int] -> Int -> Bool
isPrime ns n = null $ factorsFromList ns n

primeFactors :: Int -> [Int]
primeFactors n = filter (isPrime ps) ps
  where ps = factorsFromList [2..n] n

main = print $ last $ primeFactors 600851475143

