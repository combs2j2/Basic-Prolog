allGreaterThan(X, [], []) :- !.
allGreaterThan(X, [Y], [Y]) :- X < Y, !.
allGreaterThan(X, [Y|Ys], [Y|Result]) :- X < Y, allGreaterThan(X, Ys, Result), !.
allGreaterThan(X, [Y], []) :- not(X < Y), !.
allGreaterThan(X, [Y|Ys], Result) :- not(X < Y), allGreaterThan(X, Ys, Result), !.

allLEQ(X, [], []) :- !.
allLEQ(X, [Y], [Y]) :- X >= Y, !.
allLEQ(X, [Y|Ys], [Y|Result]) :- X >= Y, allLEQ(X, Ys, Result), !.
allLEQ(X, [Y], []) :- not(X >= Y), !.
allLEQ(X, [Y|Ys], Result) :- not(X >= Y), allLEQ(X, Ys, Result), !.

myAppend([], List, List) :- !.
myAppend(List, [], List) :- !.
myAppend([X], [Y], [X,Y]) :- !.
myAppend([X|Xs], List, [X|Prev]) :- myAppend(Xs, List, Prev), !.

quicksort([], []) :- !.
quicksort([X], [X]) :- !.
quicksort([Head|Tail], SortedList) :- allLEQ(Head, Tail, LEQ), quicksort(LEQ, LEQSorted), allGreaterThan(Head, Tail, GT), quicksort(GT, GTSorted), myAppend(LEQSorted, [Head], FirstHalf), myAppend(FirstHalf, GTSorted, SortedList), !.
