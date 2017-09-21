    --  function roots(a,b,c) {
    --     det2 = b*b-4*a*c;
    --     det  = sqrt(det2);
    --     rootp = (-b + det)/a/2;
    --     rootm = (-b - det)/a/2;
    --     return [rootm,rootp]
    -- }
    -- is equivalent in haskell

  roots a b c =
        let
            det2 = b*b-4*a*c;
            det  = sqrt(det2);
            rootp = (-b + det)/a/2;
            rootm = (-b - det)/a/2;
        in
            [rootm,rootp]


-- example of condition

   max x y =
        if x > y
            then x
            else y

 -- case
  data Color = Red | Blue | Yellow

    color = set_color
    action = case color of
        Red -> action1
        Blue -> action2
        Yellow -> action3


--template data structure

    set :: Data.Map.Map String Integer
    set = Data.Map.empty

    set' = Data.Map.insert "Answer" 42 set -- create a new variable set'