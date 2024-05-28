% a
male(bill).
male(paul).
male(joe).
male(jim).
male(bob).

female(sue).
female(mary).
female(ann).
female(tammy).

parent(bill, joe).
parent(sue, joe).
parent(bill, ann).
parent(sue, ann).
parent(paul, jim).
parent(mary, jim).
parent(joe, tammy).
parent(ann, bob).
parent(jim, bob).

% b
grandma(X, Y) :- parent(Z, Y), parent(X, Z), female(X).

% c
grandson(X, Y) :- parent(Y, Z), parent(Z, X), male(X).

% d
different(X, Y) :- X \= Y.
sister(Sis, Target) :- parent(Parent, Target), parent(Parent, Sis), female(Sis), different(Sis, Target).

% e
aunt(Aunt, Target) :- parent(Parent, Target), sister(Aunt, Parent).

% f
cousin(Cousin, Target) :-
    parent(Parent, Target),
    parent(GrandParant, Parent),
    parent(GrandParant, AuntOrUncle),
    different(AuntOrUncle, Parent),
    parent(AuntOrUncle, Cousin).