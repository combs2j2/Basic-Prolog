factorial(0,1) :- !.
factorial(N, Answer) :- N > 0, Smaller is N-1, factorial(Smaller, Prev), Answer is N*Prev, !.
factorial(N, 'cannot determine factorial of a negative number') :- N < 0, !.