module Math where

f1 :: Int -> Int
f1 n = n - 2
f1' :: Int -> Int
f1' = subtract 2

f2 :: Int -> Int
f2 n = rem n 5
f2' :: Int -> Int
f2' = (`rem` 5)

f3 :: Int -> Bool
f3 n = n == 10
f3' :: Int -> Bool
f3' = (== 10)

f4 :: Int -> Int
f4 n = div n 8
f4' :: Int -> Int
f4' = (`div` 8)

f5 :: Int -> Bool
f5 n = n > 100
f5' :: Int -> Bool
f5' = (> 100)

f6 :: Int -> Int
f6 n = rem 5 n
f6' :: Int -> Int
f6' = (5 `rem`)

f7 :: Int -> Int
f7 n = div 8 n
f7' :: Int -> Int
f7' = (8 `div`)

f8 :: Int -> Int
f8 n = n * 3
f8' :: Int -> Int
f8' = (* 3)
