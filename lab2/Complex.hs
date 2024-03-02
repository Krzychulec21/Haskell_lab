module Complex where

type Complex = (Double, Double)

-- Dodawanie liczb zespolonych
(+.) :: Complex -> Complex -> Complex
(a, b) +. (c, d) = (a + c, b + d)

-- Odejmowanie liczb zespolonych
(-.) :: Complex -> Complex -> Complex
(a, b) -. (c, d) = (a - c, b - d)

-- Mnożenie liczb zespolonych
(*.) :: Complex -> Complex -> Complex
(a, b) *. (c, d) = (a * c - b * d, a * d + b * c)

-- Część rzeczywista
re :: Complex -> Double
re (a, _) = a

-- Część urojona
im :: Complex -> Double
im (_, b) = b

-- Jednostka urojona
i :: Complex
i = (0, 1)
