length([], 0).
length([X|Xs], Length) :- length(Xs, Prev), Prev is Length-1.