module Vectors where

type Vector = (Double, Double, Double)

-- Dodawanie wektorów
(+.) :: Vector -> Vector -> Vector
(x1, y1, z1) +. (x2, y2, z2) = (x1 + x2, y1 + y2, z1 + z2)

-- Odejmowanie wektorów
(-.) :: Vector -> Vector -> Vector
(x1, y1, z1) -. (x2, y2, z2) = (x1 - x2, y1 - y2, z1 - z2)

-- Mnożenie skalarnego wektorów
(*.) :: Vector -> Vector -> Double
(x1, y1, z1) *. (x2, y2, z2) = x1 * x2 + y1 * y2 + z1 * z2

-- Mnożenie wektorowe
(***.) :: Vector -> Vector -> Vector
(x1, y1, z1) ***. (x2, y2, z2) = (y1 * z2 - z1 * y2, z1 * x2 - x1 * z2, x1 * y2 - y1 * x2)
