% tail recursion 
-module(while_loop).
-export([while/1, while/2, start/0]).

% Acc means accumulator and T means Tail
while(L) -> while(L, 0).
while([], Acc) -> Acc;
while([_|T], Acc) ->
    io:fwrite("~w~n",[Acc]),
    while(T, Acc+1).

start() ->
    X = [1,2,3,4],
    while(X).

