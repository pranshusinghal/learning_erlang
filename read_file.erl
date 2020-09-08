-module(read_file).
-export([start/0]).

start() ->
    % open NewFile.txt
    {ok, File} = file:open("NewFile.txt",[read]),
    % read file contents of size (1024*1024) bytes or 1MB to Txt variable 
    Txt = file:read(File, 1024*1024),
    io:fwrite("~p~n", [Txt]).