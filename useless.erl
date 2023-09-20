-module(useless).
-define(sub(X,Y), X-Y).
-export([add/2, hello/0, greet_and_add_two/1, call_macro/2]).

add(A, B) ->
    A + B +1.

hello() ->
	io:format("Hello, world!~n").

greet_and_add_two(X) ->
    hello(),
    add(X,2).

call_macro(X,Y) ->
	?sub(X,Y).