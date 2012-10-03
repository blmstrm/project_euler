--Euler problem 3
--Start: 00:16 24/3 2012
--End:17:20 26/3 2012
--Rename to Main.hs and run
--Square root of 600851475143 = 775146.0992245268 ~ 775146 / Half the number is 300425737571
--Trial division algorithm:
--For in primes
-- if p*p > n : break
     -- while n % p == 0
     -- add p to prime factors
     -- n = n/p
   --if n > 1
       -- add n to prime factors
       -- Another prime algorithm from www.haskell.org/pipermail/haskell-cafe/2009-November/068505.html
       --
--Finally this worked, lesson for later remember to set () around list as input. 
--Retrieve only primes up to 800000 because square root of original number, see above.
main = print(divide(reverse(primes)))
primes :: [Integer]
divide :: [Integer] -> Integer
divide [] = 0
divide (p:ps) = if mod 600851475143 p == 0
                then p
                else divide ps

primes = 2 : filter (isPrime primes) [3,5..800000] where
isPrime (p:ps) n
 | mod n p == 0 = False
 | p*p > n  = True
 | otherwise    = isPrime ps n
isPrime [] _ = False 
