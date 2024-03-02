{-
//Zad 2.1
2^100
(12 + 23)(40 - 21)
(12 + 23)*(40 - 21)
sqrt 2
sqrt ((12 + 23)*(40 - 21))
2+ -3
2+(-3)

//Zad 2.2
rem 1234 2
isPrime n = all (\n -> rem n i /= 0) [2..n-1]

//Zad 2.3
let sphereVolume r = 4/3 * pi * r^3
let coneVolume h r = 1/3 * h * pi * r^2
let cuboidVolume a b c = a*b*c

//Zad 2.4

-}
{-
module Solids where

-- Objętość kuli
-- r: promień kuli
sphereVolume :: Float -> Float
sphereVolume r = (4.0 / 3.0) * pi * r^3

-- Objętość stożka
-- r: promień podstawy stożka
-- h: wysokość stożka
coneVolume :: Float -> Float -> Float
coneVolume r h = (1.0 / 3.0) * pi * r^2 * h

-- Objętość prostopadłościanu
-- l: długość
-- w: szerokość
-- h: wysokość
cuboidVolume :: Float -> Float -> Float -> Float
cuboidVolume l w h = l * w * h

-- Objetosc ostroslupa o podstawie kwadratowej
-- a: dlugosc boku podstawy
-- h: wysokosc
pyramidVolume :: Float -> Float -> Float
pyramidVolume a h = (1.0/3.0) * h * a^2
-}

{-
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
 -}
 module Triangle where

-- trArea1: Pole trójkąta za pomocą podstawy i wysokości
-- b: podstawa, h: wysokość
trArea1 :: Float -> Float -> Float
trArea1 b h = (b * h) / 2

-- trArea2: Pole trójkąta za pomocą wzoru Herona
-- a, b, c: długości boków trójkąta
trArea2 :: Float -> Float -> Float -> Float
trArea2 a b c = sqrt (s * (s - a) * (s - b) * (s - c))
    where s = (a + b + c) / 2

-- trArea3: Pole trójkąta równobocznego
-- a: długość boku
trArea3 :: Float -> Float
trArea3 a = (sqrt 3 / 4) * a^2



