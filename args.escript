#!/usr/bin/env escript
main(Args) ->
    io:format("You gave me ~p arguments~n", [length(Args)]),
    io:format("They are: ~p~n", [Args]).