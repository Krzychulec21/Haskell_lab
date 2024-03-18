module Math where

--zad1
infix 5 ~=
(~=) :: Float -> Float -> Bool
a ~= b = abs (a - b) < 0.00001

cubeRoot :: Float -> Float
cubeRoot x = until goodEnough improve 1.0
    where 
        improve y = (2 * y + x / (y * y)) / 3
        goodEnough y = y^3 ~= x


