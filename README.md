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

