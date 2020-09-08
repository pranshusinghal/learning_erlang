% calculate the length of list
% practical approach to recursion (Tail Recursion)
-module(length_recursion).
-export([len/1, start/0]).

% T stands for tail
len([]) -> 0;
len([_|T]) -> 1 + len(T).

start() ->
    X = [1,2,3,4,5],
    Y = len(X),
    io:fwrite("~w~n",[Y]).