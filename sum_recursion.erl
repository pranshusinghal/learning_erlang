-module(sum_recursion).
-export([main/0]).

sum([]) -> 0;
sum([H|T]) -> H + sum(T).

main() ->
    sum([1,2,4]).