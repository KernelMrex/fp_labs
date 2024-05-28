split([],[],[]).
split([H|T], L2, L3) :- 
    (
        0 is H mod 2 -> split(T, [H|L2],L3);
        split(T, L2, [H|L3])
    ).
