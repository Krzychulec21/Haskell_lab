module Math where
f :: Double -> Maybe Double
f x
    | x < -10 = Just (x^2)
    | x >= -10 && x<0 = Just (sin x)
    | x >= 0 && x <= 2 = Just (sqrt x)
    | otherwise = Nothing

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

binomialCoefficient :: Integer -> Integer -> Integer
binomialCoefficient n k = factorial n `div` (factorial k * factorial (n-k))


factorial2 :: Integer -> Integer
factorial2 0 = 1
factorial2 1 = 1
factorial2 n = n * factorial2 (n - 2)

divides :: Int -> Int -> Bool
divides k n = rem n k == 0

seq' :: Int -> Double
seq' 1 = 3
seq' 2 = 4
seq' n = 0.5 * seq' (n-1) + 2 * seq' (n-2)

gcd' :: Integer -> Integer -> Integer
gcd' a 0 = a
gcd' a b
  | a > b     = gcd' (a - b) b
  | otherwise = gcd' a (b - a)

(><) :: Int -> Int -> Bool
a >< b = gcd a b == 1


