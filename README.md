# learning_erlang

Erlang Programming -> https://learnyousomeerlang.com/content

Basic Syntax:
1) Modules
    A module consists of a sequence of attributes and function declarations.
    Syntax:
    -module(ModuleName)

2) Import
    Syntax: 
    -import(ModuleName, [function_name/parameters]).

    ModuleName -> this is the name of module which needs to be imported
    function_name -> the function in the module that needs to be imported

3) Export
    Syntax:
    -export([function_name/parameters]).

    Export is used to run the function in module

%% Running Erlang files in shell
%% running helloworld.erl program
1) Type erl in the terminal
%% Erlang shell will open, then ->
2) c(helloworld).          ## compile the module
3) helloworld:start().     ## caling start method in helloworld module

## Basic commands in erlang shell
1) b().        %% it prints all the variable binding
2) h().        %% it prints the history of all commands in erlang shell

## Data Types in Erlang
1) Number
    fwrite("~w",[1+1]).     %% Add 2 integers
2) Boolean
    fwrite(2=<3).           %% Returns true
3) Bit String
    Bin1= <<10,20>>.
    X= binary_to_list(Bin1).
    fwrite("~w",[X]).       %% Returns list [10,20]
4) Tuple
    P={john,24,{june,25}},
    fwrite("~w",[tuple_size(P)]).   
    %% Returns 3 -> size of tuple
5) Map 
    M1= #{name=>john,age=>25},
    fwrite("~w",[map_size(M1)]).
    %% Returns 2 -> size of map
6) List
    L= [10,20,30],
    fwrite("~w",[length(L)]).