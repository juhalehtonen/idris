module Main

-- A function that takes a List of Strings and returns a List of lengths. So,
-- each String will be replaced by a Nat that represents that strings length.
allLengths : List String -> List Nat
allLengths [] = []
allLengths (word :: words) = length word :: allLengths words
