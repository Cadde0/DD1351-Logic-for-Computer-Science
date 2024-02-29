% Base Case
reverse_list([], []).
reverse_list([Head | Tail], R):-
    reverse_list(Tail, RT),
    append(RT, [Head], R).

%Base
remove_duplicate([], []).
§
% Case 1 om head finns i tail lägg till i E
remove_duplicate([Head | Tail], E) :-
    member(Head, Tail), 
    remove_duplicate(Tail, E).

% Case 2
remove_duplicate([Head | Tail], [Head | E]) :-
    not(member(Head, Tail)),
    remove_duplicate(Tail, E).

remove_duplicates([Head | Tail], R) :-
    reverse_list([Head | Tail], R1),
    remove_duplicate(R1, R2),
    reverse_list(R2, R).