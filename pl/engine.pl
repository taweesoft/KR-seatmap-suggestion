% :- use_module(seat_map_kind,[]).
:- use_module(seat_map_position,[]).
:- use_module(user_facts,[]).
:- use_module(rules,[]).

get_best_seat(X,M) :-
  write('Getting seat'),
  nl,
  rules:position(Position,M),
  seat_map_position:near(X,Position),
  rules:notNoisy(X).

get_all_seat(X,M) :-
  write('Getting seat'),
  nl,
  write('These seats will including noisy seat.'),
  rules:position(Position,M),
  seat_map_position:near(X,Position).
