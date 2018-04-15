import Data.Vect

{-
By adding "total" here we add a "totality annotation", which means that Idris
will report an error if the definition isn't total. This makes it necessary for
the function to pass a totality check, ensuring that all cases are covered.
-}
total allLengths : Vect len String -> Vect len Nat
allLengths [] = []
allLengths (word :: words) = length word :: allLengths words
