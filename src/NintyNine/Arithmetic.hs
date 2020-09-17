-- https://sites.google.com/site/prologsite/prolog-problems/2

module Arithmetic where

-- 2.01 (**) Determine whether a given integer number is prime.
isPrime :: Int -> Bool
isPrime n
    | n <= 3         = n > 1
    | n `mod` 2 == 0 = False
    | n `mod` 3 == 0 = False
    | otherwise      = isPrime' n 5

isPrime' :: Int -> Int -> Bool
isPrime' n i
    | i * i > n            = True
    | n `mod` i == 0       = False
    | n `mod` (i + 2) == 0 = False
    | otherwise            = isPrime' n (i + 6)

-- 2.02 (**) Determine the prime factors of a given positive integer.
-- 2.03 (**) Determine the prime factors of a given positive integer (2).
-- 2.04 (*) A list of prime numbers.
-- 2.05 (**) Goldbach's conjecture.
-- 2.06 (**) A list of Goldbach compositions.
-- 2.07 (**) Determine the greatest common divisor of two positive integer numbers.
-- 2.08 (*) Determine whether two positive integer numbers are coprime.
-- 2.09 (**) Calculate Euler's totient function phi(m).
-- 2.10 (**) Calculate Euler's totient function phi(m) (2).
-- 2.11 (*) Compare the two methods of calculating Euler's totient function