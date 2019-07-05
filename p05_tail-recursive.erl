%% coding: utf-8
%P05 (*) Перевернуть список

-module(p05_tail-recursive).
-export([reverse/1]).

reverse(List) ->
    reverse(List, []).

% Private
reverse([], Accumulator) ->
    Accumulator;
reverse([Head|Tail], Accumulator) ->
    reverse(Tail, [Head] ++ Accumulator).
