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
