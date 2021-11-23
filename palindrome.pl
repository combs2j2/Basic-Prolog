myAppend([X], [Y], [X,Y]).
myAppend([], List, List).
myAppend(List, [], List).
myAppend([X|Xs], List, [X|Result]) :- myAppend(Xs, List, Result). 

reversed([X], [X]).
reversed([], []).
reversed([X|Xs], FullReversed) :- reversed(Xs, XsReversed), myAppend(XsReversed, [X], FullReversed).

isPalindrome([X]) :- !.
isPalindrome([]) :- !.
isPalindrome(List) :- reversed(List, List).