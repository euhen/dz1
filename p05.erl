%% coding: utf-8
%P05 (*) Перевернуть список

-module(p05).
-export([reverse/1]).

reverse(List) ->
    reverse(List, []).

% Private
reverse([Head|Tail], Accumulator) ->
    reverse(Tail, [Head|Accumulator]);
reverse([], Accumulator) ->
    Accumulator.
