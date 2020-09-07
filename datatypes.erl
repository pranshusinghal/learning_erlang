-module(datatypes).
% calling start method
-export([start/0]).

start() ->
    % Number
    % io:fwrite("~w",[1+1]).

    % Boolean
    io:fwrite(2=<3).

    % Tuple
    % P= {john,24,{june,25}},
    % io:fwrite("~w",[tuple_size(P)]).

    % Map
    % M1= #{name=>john,age=>25},
    % io:fwrite("~w",[map_size(M1)]).

    % List
    % L= [10,20,30],
    % io:fwrite("~w",[length(L)]).
