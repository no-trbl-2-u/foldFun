module Lib (
  fr
) where

---------------------------------------
-- PLAY DATA
xs :: [Int]
xs = [1, 2, 3, 4]

strings :: [String]
strings = ["this", "is", "a", "test!"]

nested :: [[[Char]]]
nested = [["a", "b", "c"], ["d", "e", "f"]]

----------------------------------------
-----------     FoldR     --------------
----------------------------------------
fr :: (a -> b -> b) -> b -> [a] -> b
fr f v []     = v
fr f v (x:xs) = f x (fr f v xs)

-- PATTERN FOR FOLDR      || USAGE:
-- f []     = v           || v = Identity/Base-Case
-- f (x:xs) = x (+) f xs  || func(head xs) f(xs)

-- EXAMPLES
-- foldr (operator) base-case

-- foldr (+) 0
sumR :: Num n => [n] -> n
sumR = fr (+) 0
-- sumR []     = 0
-- sumR (x:xs) = x + sum xs

-- foldr (++) ""
join :: [String] -> [Char]
join = fr (++) ""
-- join []     = ""
-- join (x:xs) = x ++ join xs

flatOnce :: [[a]] -> [a]
flatOnce = fr (++) []
-- flatOnce []     = []
-- flatOnce (x:xs) = x ++ flatOnce xs

prod :: Num n => [n] -> n
prod = fr (*) 1 
-- prod []     = 1
-- prod (x:xs) = x * prod xs

subR :: Num n => [n] -> n
subR = fr (-) 0
-- subR []     = 0
-- subR (x:xs) = x - subR xs
