not True -- false
not (not False)  -- False
True && True -- True
False && True -- False
True || False  -- True
False || False -- False
True `xor` False  -- True
[(x,y) | x<-[False, True], y<-[False, True]] -- [(False,False),(False,True),(True,False),(True,True)] the list of combinaison
map (\inputs -> xor (fst inputs) (snd inputs)) [(x,y) | x<-[False, True], y<-[False, True]] -- [False,True,True,False] the result of the array above
and [False, True, False, True] -- False
and [True, True] -- True
or [True, True, False] -- True
if 2*2==4 then "happy" else "sad" --"happy"
if 1 then 0 else -1 -- condition is not a boolean expression
if False then 42 else "foo" -- types are different integer VS char
if True then 42 else pi -- 42