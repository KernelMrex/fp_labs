first_last(L1, L2) :-
    append([F|M], [L], L1),
    append([L|M], [F], L2).
