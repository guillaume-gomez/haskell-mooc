length_ :: [a] -> Int
length_ [] = 0
length_ (x:xs) = 1 + length_ xs


filter_ :: (a->Bool) -> [a] -> [a]
-- filter (<5) [3,9,2,12,6,4] -- > [3,2,4]
filter_ pred []    = []
filter_ pred (x:xs)
  | pred x         = x : filter_ pred xs
  | otherwise      = filter_ pred xs

(.) :: (b->c) -> (a->b) -> a -> c
(f . g) x = f (g x)

map :: (a -> b) -> [a] -> [b]
map _ []     = []
map f (x:xs) = f x : map f xs