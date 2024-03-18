module Trees where

data Tree a = Leaf a
            | Node a (Tree a) (Tree a)
            | Null

treeSize :: Tree a -> Int
treeSize Null = 0
treeSize (Leaf _) = 1
treeSize (Node _ left right) = 1 + treeSize left + treeSize right

showTree :: (Show a) => Tree a -> String
showTree Null = "R(())"
showTree (Leaf x) = show x
showTree (Node x left right) = show x ++ " L(" ++ showTree left ++ ") R(" ++ showTree right ++ ")"

bt1 = Node 7 (Node 4 (Leaf 2) (Leaf 5)) (Leaf 10)
bt2 = Node 7 (Node 4 (Leaf 2) (Leaf 5)) (Node 10 (Leaf 9) (Node 13 (Leaf 11) (Leaf 15)))
bt3 = Node 7 (Leaf 1) Null

add :: (Ord a) => a -> Tree a -> Tree a
add x Null = Leaf x
add x (Leaf y)
  | x == y = Leaf y
  | x < y = Node y (Leaf x) Null
  | otherwise = Node y Null (Leaf x)
add x (Node y left right)
  | x == y = Node y left right
  | x < y = Node y (add x left) right
  | otherwise = Node y left (add x right)
