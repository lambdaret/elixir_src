-module(greet1).
-compile(export_all).
% -export([greet/2]).

greet(male, Name) ->
    io:format("Hello, Mr. ~s!", [Name]);
greet(female, Name) ->
    io:format("Hello, Mrs. ~s!", [Name]);
greet(_, Name) ->
    io:format("Hello, ~s!", [Name]).

old_enough(X) when X >= 16 -> true;
old_enough(_) -> false.

right_age(X) when X >= 16, X =< 104 -> true;
right_age(_) -> false.

wrong_age(X) when X < 16; X > 104 -> true;
wrong_age(_) -> false.