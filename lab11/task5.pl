double([], []).
double([H|T], [H, H|T1]) :- double(T, T1).
