-module(csv_generator).
-export([start/0]).

start() ->
    {ok, File} = file:open("test.csv", [write]),
    csv_gen:row(File, ["Product", "Quantity"]),
    csv_gen:row(File, ["Coffee", 10]),
    csv_gen:row(File, ["Tea \"Cha\" extra strong", 20]),
    file:close(File).