insert(X, Ys, [X|Ys]).
%insert(X, [Y|Ys], [Y|Zs]) :- insert(X, Ys, Zs).

list_min(M, [], M).
list_min(X, [Z|Xs], M) :- (M is min(M, min(X, Z))), list_min(X, Xs, M).

my_last(X, [X]).
my_last(X, [_|Xs]) :- my_last(X, Xs).

element_at(X, [X|_], 0).
element_at(X, [_|Xs], N) :- K is N - 1, element_at(X, Xs, K).

reverse_list([], []).
reverse_list([], _).
reverse_list([H|Xs], Xr) :- append(New, [H], Xr), reverse_list(Xs, New), !.

equal_list([], []).
equal_list([X|Xs], [Y|Ys]) :- X = Y, equal_list(Xs, Ys).

palindrome(Xs) :- reverse_list(Xs, Ks), equal_list(Ks, Xs).


% P22: Inclusive Range [Min - Max]
in_range(N, M, []) :- N is M + 1.
in_range(Min, Max, [X|Xs]) :- X = Min, Z is Min + 1, in_range(Z, Max, Xs), !.
