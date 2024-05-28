combi([], L2, L2).
combi(L1, [], L1).
combi([H1|T1], [H2|T2], [H1, H2|T3]) :- combi(T1, T2, T3).
