The first procedure evaluates:
 4 is not equal to 0 so go to else expression
 dec a -> (- 4 1) -> 3
 (+ 3 5) -> recursive call to + and evalutes out down to (inc (+ dec 1) 5)) that way until a = 0

Then a chain of inc calls are called with the return of the previous inc -> (inc (inc (inc (inc 5)))) -> 9


The second procedure evaluates:
 4 does not equal 0 so go to else expression
 (dec 4) -> 3
 (inc 5) -> 6
 (+ 3 6) -> recursive call to + that evaluates incrementally until args are (0 9) 
 
Then 9 is returned because 0 = 0 in the if predicate


The first process is recursive because a chain of nested calls builds up that are then evaluated.

The second process is iterative because the same procedure is called with only the same reused arguments being used as state variables. This results in 0 nested expressions needing to be evaluated.


