split(List, FirstHalf, SecondHalf) :- append(FirstHalf, SecondHalf, List), length(List, N), Half is N/2, ceiling(Half, HalfCeiling), Rest is N-HalfCeiling, length(FirstHalf, HalfCeiling), length(SecondHalf, Rest), !.

merge([], [], []).
merge(List, [], List).
merge([], List, List).
merge([X|Xs], [Y|Ys], [X,Y|Result]) :- Y >= X, merge(Xs, Ys, Result).
merge([X|Xs], [Y|Ys], [Y,X|Result]) :- Y < X, merge(Xs, Ys, Result).

mergeSort([X], [X]).
mergeSort([], []).
mergeSort(List, Result) :- split(List, FirstHalf, SecondHalf), mergeSort(FirstHalf, FirstSorted), mergeSort(SecondHalf, SecondSorted), merge(FirstSorted, SecondSorted, Result).
