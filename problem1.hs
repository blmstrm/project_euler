--Euler problem 1
--Start:17:05
--End:23:18
--Rename to Main.hs and run
main =print(sum(modulo [0..999] 5 3))
modulo :: [Integer]->Integer->Integer-> [Integer]
modulo (x:xs) i h  = if x `mod` i == 0 
             then x:modulo xs i h
             else
             if x `mod` h == 0
              then x:modulo xs i h
             else modulo xs i h
modulo [] i h = []
