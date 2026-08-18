#!/usr/bin/env escript
main(_Args)->
io:format("Hello world~n"),
main1(),
helper_hello(),
another_helper().

main1()->
io:format("hellooooo~n").

helper_hello()->
io:format("helloooo again~n").

another_helper()->
io:format("helo heloo").