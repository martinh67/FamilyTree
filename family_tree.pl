% database
male(john).
male(fred).
male(darren).
male(bob).

female(susan).
female(anne).
female(elizabeth).
female(judy).

parent(john, anne).
parent(john, darren).
parent(anne, fred).
parent(darren, judy).

married(john, elizabeth).
married(bob, anne).
married(susan, darren).

% relations
is_married(X,Y) :- married(X,Y).
is_married(X,Y) :- married(Y,X).

is_parent(X,Y) :- parent(X,Y); is_married(X, Z), parent(Z,Y).

father(X,Y) :- male(X), is_parent(X,Y).
mother(X,Y) :- female(X), is_parent(X,Y).

% additional relation
grandfather(X,Y) :- male(X), parent(X,Z), parent(Z,Y).







