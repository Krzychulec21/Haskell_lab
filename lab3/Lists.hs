module Lists where 
import Data.Char
--zad 1
sumOfSquares :: Num a => [a] -> a
sumOfSquares xs = sum (map(^2)xs)

sumOfSquares2 :: Num a => [a] -> a
sumOfSquares2 [] = 0
sumOfSquares2 (x:xs) = x ^ 2 + sumOfSquares2 xs 

--zad2
sum1 :: Num a => [a] -> a
sum1 [] = 0
sum1 [_] = 0
sum1 (_:x:xs) = x + sum1 xs


sum2 :: Num a => [a] -> a
sum2 [] = 0
sum2 [x] = x
sum2 (x:_:xs) = x + sum2 xs

sum3 :: Num a => [a] -> a
sum3 [] = 0
sum3 [_] = 0
sum3 [_,_] = 0
sum3 (_: _:x:xs) = x + sum3 xs 

--zad3

countLower :: String -> Int
countLower [] = 0
countLower (x:xs)
  |  x >= 'a' &&  x <= 'z' = 1 + countLower xs
  | otherwise = countLower xs

countLowerUpper :: String -> (Int, Int)
countLowerUpper xs = (countLower xs, countUpper xs)
  where
    countUpper [] = 0
    countUpper (x:xs)
      | x >= 'A' && x <= 'Z' = 1 + countUpper xs
      | otherwise = countUpper xs

--zad4
string2bools :: String -> [Bool]
string2bools = map isLower
  where
    isLower x = x >= 'a' && x <= 'z'

--zad5
cgtx :: Ord a => a -> [a] -> Int
cgtx _ [] = 0
cgtx x (y:ys)
  | y > x     = 1 + cgtx x ys
  | otherwise = cgtx x ys

cltx :: Ord a => a -> [a] -> Int
cltx _ [] = 0
cltx x (y:ys)
  | y < x     = 1 + cltx x ys
  | otherwise = cltx x ys

gtx :: Ord a => a -> [a] -> [a]
gtx x = filter (> x)

ltx :: Ord a => a -> [a] -> [a]
ltx x = filter (<= x)

--zad6
string2int :: String -> Int
string2int = read

--zad7
sum1n :: Double
sum1n = sum [1 / n | n <- [1..100]]

-- Iloczyn od 1 do 50 liczb postaci (1+n)/(2+n)
prod1n2n :: Double
prod1n2n = product [(1 + n) / (2 + n) | n <- [1..50]]

-- Suma od 1 do 1000 liczb postaci 1/(i^2)
sum1i2 :: Double
sum1i2 = sum [1 / (i^2) | i <- [1..1000]]

-- Suma od 1 do 1000 liczb postaci (sqrt i) - 1/i
sumSqrtI1i :: Double
sumSqrtI1i = sum [(sqrt i) - 1 / i | i <- [1..1000]]

-- Iloczyn od 1 do 1000 liczb postaci (i+1)/(i^3)
prodI1I3 :: Double
prodI1I3 = product [(i + 1) / (i^3) | i <- [1..1000]]

--zad8
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime n = factors n == [1,n]

primes :: [Int]
primes = filter prime [2..]

pairs :: [Int] -> [(Int, Int)]
pairs (x:y:[])  | x + 2 == y = [(x,y)]
                | otherwise  = []
pairs (x:y:xys) | x + 2 == y = (x,y) : pairs (y:xys)
                | otherwise  = pairs (y:xys)

primePairs :: [(Int, Int)]
primePairs = filter (bothPrime . fst) (pairs primes)
  where
    bothPrime x = prime x && prime (x + 2)

primeTriples :: [(Int, Int, Int)]
primeTriples = filter (allPrime . fst3) (map makeTriple primePairs)
  where
    fst3 (x, _, _) = x
    allPrime x = prime x && prime (x + 2) && prime (x + 4)
    makeTriple (x, y) = (x, y, y + 2)


              