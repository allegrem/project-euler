isPalindrome :: Int -> Bool
isPalindrome n = n == (read $ reverse $ show n)

findPalindrome :: Int
findPalindrome = maximum [ x * y | x <- [100..999], y <- [x..999], isPalindrome (x * y) ]

main = print $ findPalindrome
