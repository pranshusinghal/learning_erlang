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
<!-- ~n in fwrite will make sure that ok is printed on next line -->
1) Number
    fwrite("~w~n",[1+1]).     %% Add 2 integers
2) Boolean
    fwrite(2=<3).           %% Returns true
3) Bit String
    Bin1 = <<10,20>>,
    X= binary_to_list(Bin1).
    fwrite("~w~n",[X]).       %% Returns list [10,20]
4) Tuple
    P = {john,24,{june,25}},
    fwrite("~w",[tuple_size(P)]).   
    %% Returns 3 -> size of tuple
5) Map 
    M1 = #{name=>john,age=>25},
    fwrite("~w",[map_size(M1)]).
    %% Returns 2 -> size of map
6) List
    L = [10,20,30],
    fwrite("~w",[length(L)]).


## Variables in Erlang
1)  All variables are bound with "=" statement
2)  All variables need to start with Uppercase character
3)  Variables are immutable in erlang. That implies in order for the value of variable to change, 
    it needs to be destroyed and recreated again.


## Loops in Erlang
There is no direct while/for statement in erlang. Thus in order to implement these statements we use recursion

## Recursion 
1)  lists are defined recursively as [1 | [2| ... [n | []]]].
2)  This means we can use the [H|T] pattern to match against lists of one or more elements, as a list of length one will be defined as [X|[]] and a list of length two will be defined as [X|[Y|[]]]. 

len([]) -> 0;
len([_]) -> 1.

1)  len([]) -> 0;
2)  len([_|T]) -> 1 + len(T).

len([1,2,3,4]) = len([1 | [2,3,4])
               = 1 + len([2 | [3,4]])
               = 1 + 1 + len([3 | [4]])
               = 1 + 1 + 1 + len([4 | []])
               = 1 + 1 + 1 + 1 + len([])
               = 1 + 1 + 1 + 1 + 0
               = 4

## Tail Recursion
1)  Tail recursion is a way to transform the above linear process (it grows as much as there are elements) to an iterative one (there is not really any growth). To have a function call being tail recursive, it needs to be 'alone'. Let me explain: what made our previous calls grow is how the answer of the first part depended on evaluating the second part. The answer to 1 + len(Rest) needs the answer of len(Rest) to be found. The function len(Rest) itself then needed the result of another function call to be found. The additions would get stacked until the last one is found, and only then would the final result be calculated. Tail recursion aims to eliminate this stacking of operation by reducing them as they happen.

2)  In order to achieve this, we will need to hold an extra temporary variable as a parameter in our function. I'll illustrate the concept with the help of the factorial function, but this time defining it to be tail recursive. The aforementioned temporary variable is sometimes called accumulator and acts as a place to store the results of our computations as they happen in order to limit the growth of our calls

<!-- Recursive factorial function -->
1) tail_fac(N) -> tail_fac(N,1).

2) tail_fac(0,Acc) -> Acc;
3) tail_fac(N,Acc) when N > 0 -> tail_fac(N-1,N*Acc).

%% recursively calculating the factorial of 4
tail_fac(4)    = tail_fac(4,1)
tail_fac(4,1)  = tail_fac(4-1, 4*1)
tail_fac(3,4)  = tail_fac(3-1, 3*4)
tail_fac(2,12) = tail_fac(2-1, 2*12)
tail_fac(1,24) = tail_fac(1-1, 1*24)
tail_fac(0,24) = 24

## If Statement
Syntax:
1) if
2) condition ->
3)  statement#1;    %% true statement
4) true ->
5)  statement#2     %% false statement
6) end.

## Multiple Expression
1)if
2)condition1->
3)  statement#1;
4)condition2->
5)  statement#2;
6)conditionN->
7)  statement#N;
8)true->
9)  defaultstatement
10)end.  

## File Handling in Erlang
File library contains the basic methods for reading the contents of a file

Syntax:
1) Opening a file - open(File, Mode)
2) Reading a file - read(FileHandler, NumberOfBytes)

File -> Location of file that needs to be opened
Mode -> Mode in which the file needs to be opened

3) Modes available:
    Read, Write, Append, Exclusive, File Handler, NumberofByte


## Methods of File Operation
1)  file_read
    Syntax: file_read(filename)
2)  write
    Syntax: write(FileHandler, text)
3)  copy
    Syntax: copy(source, destination)
4)  delete
    Syntax: delete(filename)
5)  rename
    Syntax: rename(oldname, newname)
6)  filesize
    Syntax: filesize(filename)
7)  is_file
    Syntax: is_file(filename)
8)  is_dir
    Syntax: is_dir(dirname)
