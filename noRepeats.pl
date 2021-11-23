member(X, [Head|_]) :- X is Head.
member(X, [_|Tail]) :- member(X, Tail). 

noRepeats([]).
noRepeats([X|Xs]) :- noRepeats(Xs), not(member(X, Xs)).