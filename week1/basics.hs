-- an example of expresssion
v = (b*b-4*a*c)/2*a

-- a function named hello with a single parameter name
-- this function return the strings "Hello, name" where name is the content of the variable passed as parameter
hello name = "Hello, "++name

-- functions has types like in C++.
f :: Int -> Int -> Int -- take two integers parameters and return an integer
f x y =  x*y+x+y

-- Lists are like many languages like C++, Js, Java and erlang of course
lst = [ "A", "list", "of", "strings"]

-- join to sub list in lst variable
lst = [1,2] ++ [3,4]

-- anonymous functions are called lambda functions. The syntax is very compact
f = \x y -> x*y+x+y
-- is equivalent of const f = (x,y) => { return x*y+x+y;}; in javascript

-- higher order function
map (\x -> x*2+1) [1..10]
--multiply each number in the list by 2 and add 1