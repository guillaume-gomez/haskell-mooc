f x = x + 1
f 3 -- 4

add3nums x y z = x + y + z
10 + 4* add3nums 1 2 3 -- 34

 (\x -> x+1) -- anonymous function
 (\x -> x+1) 4 -- 5

 f1 = \x -> x+1
 f1 4 -- 5

add3numsl = \x y z -> x + y + z
10 + 4* add3numsl 1 2 3 -- 34

[2.718, 50.0, -1.0]
[1,2,4,8]
length [1,2,3,4,6,7] -- 6

sumprod = \x y -> [x+y,x*y]
sumprod 8 3 -- [11,24]

mylist = [2,4,6,8]

answer = 42
yourlist = [7, answer+1, 7*8]  -- [7,43,56]

23 : [48, 41, 44] -- [23,48, 41, 44]
42 : [] -- is equivalent [42]

[23, 29] ++ [48, 41, 44] -- [23, 29, 48, 41, 44]

length [23, 29] + length [48, 41, 44] == length ([23, 29] ++ [48, 41, 44])

[0 .. 5] -- [0,1,2,3,4,5]

[0x0A .. 0x1F] -- [10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]

[3*x | x <- [1..10]] -- [3,6,9,12,15,18,21,24,27,30]

[[a,b] | a <- [10,11,12] , b <- [20,21]] -- [[10,20],[10,21],[11,20],[11,21],[12,20],[12,21]]

[5,3,8,7] !! 2 -- 8

['a'..'z'] !! 33 -- error index out of range

head [4,5,6] -- 4
tail [4,5,6] -- 6