--Euler problem 4 
--Rename to Main.hs and run
-- Biggest number 999 x 999 = 998001
-- Find palindrom
-- Divide palindrome with 999, 998 etc.
-- If not successfull find next palindrome
-- Note: Only useful for palindromes of length 6
main = print (palindromeDiv 998001  (reverse [100..999]))

splitInt :: Integer -> ([Char],[Char])

isEqual :: ([Char],[Char])->Bool

isPalindrome :: Integer -> Bool

divWith :: Integer -> [Integer] -> Integer

palindromeDiv :: Integer -> [Integer] -> Integer

splitInt x = splitAt 3 (show x)

isEqual (x,y) = x ==  reverse y

isPalindrome x = isEqual (splitInt x)

divWith x (y:ys) = if x `mod` y == 0 && (length(show(x `div` y))==3)
                     then x
                     else divWith x ys
divWith x [] = palindromeDiv (x-1) (reverse [100..999])                     

palindromeDiv x (y:ys) = if x > 0
                  then if isPalindrome x
                       then divWith x (y:ys)
                       else palindromeDiv (x-1) (y:ys)
                   else 0
