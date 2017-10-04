
foldl (\acc elt -> elt:acc) "" "Reversing a string"
-- "gnirts a gnisreveR"

foldr (\elt acc -> elt:acc) "" "Reversing a string"
-- "Reversing a string"

sum  = foldr (+) 0
sum [1,2,5] -- 8

map_ :: (a -> b) -> [a] -> [b]
map_ _ []     = []
map_ f (x:xs) = f x : map_ f xs

