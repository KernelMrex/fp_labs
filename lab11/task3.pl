total([], 1).
total([H|T], N) :- total(T, N1), N is H * N1.
