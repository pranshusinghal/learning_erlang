-module(helloworld1).
% importing io library and specifying fwrite function
-import(io, [fwrite/1]).
% calling start method
-export([start/0]).

start() ->
fwrite("Hello World!").