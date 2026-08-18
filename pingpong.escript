#!/usr/bin/env escript
main(_)->
  % spawn new process thingey?
  PongPid = spawn(fun pong/0),
  PongPid ! {ping, self()},
  receive
    {pong, PongPid} -> io:format("Got pong back!~n")
  end.

pong()->
  receive
    {ping, Sender} ->
      io:format("Pong received ping!~n"),
      Sender ! {pong, self()}
  end.