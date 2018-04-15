import Data.Vect

-- 1) We start our journey by typing the.. type. Heh.
-- allLengths : Vect n String -> Vect n Nat

-- 2) Then we press CTRL+ALT+A to Add a clause based on the type:
-- allLengths : Vect n String -> Vect n Nat
-- allLengths xs = ?allLengths_rhs

-- 3) Then we press CTRL+ALT+C on the xs to case-split it (to pattern match):
-- allLengths : Vect n String -> Vect n Nat
-- allLengths [] = ?allLengths_rhs_1
-- allLengths (x :: xs) = ?allLengths_rhs_2

-- 4) Next, as our type is quite well specified, we do CTRL+ALT+S to search for
-- proof for our two holes (searching for valid expressions that satisfy our type):
-- allLengths : Vect n String -> Vect n Nat
-- allLengths [] = []
-- allLengths (x :: xs) = 0 :: allLengths xs

-- 5) Close! We just need to change the `0` to `length x` for desired behaviour:
-- allLengths : Vect n String -> Vect n Nat
-- allLengths [] = []
-- allLengths (x :: xs) = length x :: allLengths xs

-- 6) Complete function with totality requirement checking and named vars:
total allLengths : Vect n String -> Vect n Nat
allLengths [] = []
allLengths (word :: words) = length word :: allLengths words
