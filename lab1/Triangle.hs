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
