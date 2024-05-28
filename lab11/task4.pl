place(X, L, [X|L]).
place(X, [H|T1], [H|T2]) :- place(X, T1, T2).
