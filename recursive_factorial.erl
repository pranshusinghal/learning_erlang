-module(recursive_factorial).
-export([tail_fac/1,tail_fac/2,start/0]).

% recursive method to calculate factorial
tail_fac(N) -> tail_fac(N,1).
tail_fac(0,Acc) -> Acc;
tail_fac(N,Acc) when N > 0 -> tail_fac(N-1,N*Acc).

start() ->
    % calling method to calculate factorial of 4
    tail_fac(4).