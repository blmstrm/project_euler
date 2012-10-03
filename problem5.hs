--Euler problem 5
--Start: 19:20 18/9 2012 
--End: 19:52 18/9 2012
--Rename to Main.hs and run
--Quite slow but well.

main = print (findNumber [2520..])

findNumber :: [Integer] -> Integer

findNumber (x:xs) = if ((mod x 11 == 0) && (mod x 13 == 0) && (mod x 17 == 0) && (mod x 19 == 0))
                      then
                      if
                        (mod x 12 == 0) && (mod x 14 == 0) && (mod x 15 == 0) && (mod x 16 == 0) && (mod x 18 == 0) && (mod x 20 == 0)then
                          x
                      else
                             findNumber xs
                      else findNumber xs
