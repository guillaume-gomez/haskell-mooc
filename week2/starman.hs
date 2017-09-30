import System.Random
import System.Environment
import Control.Monad
import Data.Set

-- check and return the new version of display
check :: String -> String -> Char -> (Bool, String)
check word display c
  = (c `elem` word, [if x==c
          then c
          else y | (x,y) <- zip word display])

-- core of the main loop
turn :: String -> String -> Int -> IO ()
turn word display n =
  do if n==0
       then putStrLn ("You lose, the word was " ++ word)
       else if word==display
              then putStrLn "You win!"
              else mkguess word display n


-- function to interact with the user
mkguess :: String -> String -> Int -> IO ()
mkguess word display n =
  do putStrLn (display ++ "  " ++ Prelude.take n (repeat '*'))
     putStr "  Enter your guess: "
     q <- getLine
     let (correct, display') = check word display (q!!0)
     let n' = if correct then n else n-1
     turn word display' n'

-- main function
starman :: String -> Int -> IO ()
starman word n = turn word ['-' | x <- word] n


-- pick a random word
starmandic :: Int -> IO ()
starmandic n =
    do
        words <- readFile "./dictionnary"
        let dictionnary = lines words
        index <- randomRIO (0, (length dictionnary)-1) :: IO Int
        let word = dictionnary !! index
        starman word n