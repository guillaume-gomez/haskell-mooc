42==42 -- True
1 == 2 -- False
1 /= 2 -- True (/= means not equal)
"hello" == "hola" -- False
"foo" /= "bar" -- True
True /= False -- True
True == 1 -- Syntax error, cannot compare two different types
10 > 9 -- True
[1,2,3] < [1,2,3,4] -- True
"Aardvark" < "Aaronic" -- True
elem 1 [1,2,3] -- true
3 `elem` [1, 2, 3, 4, 5]  -- The elem function can be written infix, like an arithmetic operator, by enclosing its name in backquotes
42 `max` 13 -- In fact, Haskell permits any two-argument function to be written as an infix operator using backquote characters. For a further example, try the max function as an infix operator
(+) 1 1 -- 2