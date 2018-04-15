import Data.Vect

insert : Ord elem => (x : elem) -> (xsSorted : Vect len elem) -> Vect (S len) elem
insert x [] = [x]
insert x (y :: xs) = case x < y of
                          False => y :: insert x xs
                          True => x :: y :: xs

{-
Insertion sort
- Given an empty vector, return an empty vector.
- Given the head and tail of a vector, sort the tail of the vector and then
  insert the head into the sorted tail such that the result remains sorted.
-}
total insSort : Ord elem => Vect n elem -> Vect n elem
insSort [] = []
insSort (x :: xs) = let xsSorted = insSort xs in
                        insert x xsSorted
