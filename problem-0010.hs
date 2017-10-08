isPrime :: Int -> Bool
isPrime n = null [p | p <- ps, (rem n p) == 0]
  where ps = takeWhile (<= pMax) (2:[3,5..])
        pMax = ceiling $ sqrt $ fromIntegral n

primes :: [Int]
primes = 2:[n | n <- [3,5..], isPrime n]

main = print ( sum (takeWhile (< 2000000) primes) )
