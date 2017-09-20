2 -- > 2
3+4 -- > 7
3+4*5    {equivalent to 3+(4*5)} -- > 23
(3+4)*5   {equivalent to 7*5} -- > 35

abs 5 -- > 5
abs (-6) -- > 6

2+3*5
2+(3*5) -- might be clearer to some readers
abs 7

min 3 8 -- > 3
max 3  8 -- > 8

-- f x + 3 means (f x) + 3 and not f (x+3)

n = 1    -- just fine!
x = 3*n  -- fine
n = x    -- Wrong: can have only one definition of n
