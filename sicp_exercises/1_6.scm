def new-if (pred do_this do_that)
	cond-swtchcase
		pred do_this
		else do_that


Cond is a form of case analysis. Each case will be evauluated based on the predicate returning true or false. The first predicate goes first top to bottom.
However since there are sub-expressions to be evaluated in the new-if call, and it is not a special form rather a defined func, those will be evaulated first. 
Therefore, good-enough? will evaulate to false. 

(new-if (#f guess x) guess (sqrt-iter...))

Then (sqrt-iter  (improve guess x) x) is evaluated

(sqrt-iter (improved_guess) x)  

Then sqrt-iter is called recursively with the evaluted operands. This loop will continue forever.
