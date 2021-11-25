split(List, FirstHalf, SecondHalf) :- append(FirstHalf, SecondHalf, List), length(List, N), Half is N/2, ceiling(Half, HalfCeiling), Rest is N-HalfCeiling, length(FirstHalf, HalfCeiling), length(SecondHalf, Rest), !.

mergeSort([X], [X]).
mergeSort([], []).
mergeSort(List, Result) :- splitInHalf(List, FirstHalf, SecondHalf), mergeSort(FirstHalf, FirstSorted), mergeSort(SecondHalf, SecondSorted), merge(FirstSorted, SecondSorted, Result).