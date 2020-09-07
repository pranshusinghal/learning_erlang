% Hello World Erlang Program

-module(helloworld).

% calling start function 
% 0 means that start function has 0 parameter 
-export([start/0]).

% start function
start() ->
io:fwrite("Hello World!").