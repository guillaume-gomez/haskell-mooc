import Data.Char
-- import Test.QuickCheck

shouldcipher :: Char -> Bool
shouldcipher c = isLetter(c) && isAscii(c)

cipherchar :: Int -> Char -> Char
cipherchar shift c
 | shouldcipher(c) = chr(ord(c)+shift)
 | otherwise           = c

cipher :: Int -> [Char] -> [Char]
cipher shift message = map (cipherchar shift) message

decipher :: Int -> [Char] -> [Char]
decipher shift ciphermessage = cipher (-shift) ciphermessage