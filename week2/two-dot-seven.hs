putStrLn "hello world"
putStrLn ("good " ++ "morning" ++ " everyone")
getLine
-> "Good morning"
do { putStrLn "what is your name?"; x <- getLine; putStrLn ("hello " ++ x) } -- hello Guillaume
do { putStrLn "what is your name?"; n<-getLine; let nUpper = map toUpper n in putStrLn ("HELLO " ++ nUpper) } -- HELLO GUILLAUME
read "42" :: Int -- 42
read "42"::Float -- 42.0
show 42 --"42"
putStrLn (show (6*7)) -- 42
print 42