module Integration where

rectangleRule :: (Float -> Float) -> Float -> Float -> Int -> Float
rectangleRule (f) a b n = sum [f (a + fromIntegral i * h) * h | i <- [0..n-1]]
  where
    h = (b - a) / fromIntegral(n)
    points = [a + fromIntegral(i) * h | i <- [1 .. n]]

-- metoda trapezów
trapezoidalRule :: (Float -> Float) -> Float -> Float -> Int -> Float
trapezoidalRule f a b n = (sum [f (a + fromIntegral i * h) + f (a + fromIntegral (i + 1) * h) | i <- [0..n-1]] * h) / 2
  where
    h = (b - a) / fromIntegral n