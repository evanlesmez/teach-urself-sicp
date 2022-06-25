Applicative order evalutes arguments and then applies.
Normal order fully expands then evaluates which can duplicated work.
Scheme uses applicative order.

In applicative-order
0 evaluates to 0
then p evaluates to p recursively for infinity as that is the body of the procedure. 


In normal orde, the operands are not evaluated until the values are needed
(test 0 (p)) is expanded to

(if (= 0 0)
	0
	(p)) 
Since the predicate is true, 0 is returned without ever evaluating p
