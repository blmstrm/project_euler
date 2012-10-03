--Euler problem 2
--Start:23:50 23/03 2012
--End:00:10 24/03 2012
--Rename to Main.hs and run
main = print (fun 0 1)
fun :: Integer -> Integer -> Integer
fun x y = let z = x + y in
              if z < 4000000 
                then if z `mod` 2 == 0
                       then z+fun y z
                       else fun y z
                       else 0
