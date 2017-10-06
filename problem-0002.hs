next (a : t@(b:_)) = (a + b) : next t
fibo = 1 : 2 : next fibo

main = print ( sum ([x | x <- takeWhile (< 4000000) fibo, even x] ) )
