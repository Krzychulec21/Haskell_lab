module Lists where 

sumOfSquares :: Num a => [a] -> a
sumOfSquares xs = sum (map(^2)xs)

sumOfSquares2 :: Num a => [a] -> a
sumOfSquares2 [] = 0
sumOfSquares2 (x:xs) = x ^ 2 + sumOfSquares2 xs 


sum1 :: Num a => [a] -> a
sum1 [] = 0
sum1 [_] = 0
sum1 (_:x:xs) = x + sum1 xs


sum2 :: Num a => [a] -> a
sum2 [] = 0
sum2 [x] = x
sum2 (x:_:xs) = x + sum2 xs


countLower :: String -> Int
countLower [] = 0
countLower (x:xs)
  |  x >= 'a' &&  x <= 'z' = 1 + countLower xs
  | otherwise = countLower xs

cgtx :: Ord a => a -> [a] -> Int
cgtx _ [] = 0
cgtx x (y:ys)
  | y > x     = 1 + cgtx x ys
  | otherwise = cgtx x ys