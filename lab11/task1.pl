trim(L1, L2) :-
    append([_|T1], [_], L1),
    append(T1, [], L2).
