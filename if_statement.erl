-module(if_statement).
-export([start/0]).

start() ->
    A = 5,
    B = 5,

    if
        A == B ->
            io:fwrite("True");
        true ->
            io:fwrite("False")
        end.