repeat_back3(L1, L2) :-
    append([F|M], [L], L1),
    append([L, L, L|M], [F, F, F], L2).
