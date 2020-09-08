-module(file_handling).
-export([start/0]).

start() ->
    %% read_file method
    Txt = file:read_file("NewFile.txt"),
    io:fwrite("~p~n", [Txt]).

    % % write to a file
    % {ok, Fd} = file:open("NewFile.txt",[write]),
    % file:write(Fd, "Text Added to NewFile.").

    % % append to the existing contents of file
    % {ok, Fd} = file:open("NewFile.txt",[append]),
    % file:write(Fd, "Appending the existing text in file").

    % % copy a file
    % file:copy("NewFile.txt", "Duplicate.txt").