%% coding: utf-8
%P10 (**) Закодировать список с использованием алгоритма RLE

-module(p10_tail_recursive).
-export([encode/1]).

encode([Head|Tail]) ->
    encode(Tail, Head, 1, []).

% Private
encode([Head|Tail], Head, Counter, Accumulator) ->
    encode(Tail, Head, Counter + 1, Accumulator);
encode([Head|Tail], Element, Counter, Accumulator) ->
    NewAccu = [{Counter, Element}|Accumulator],
    encode(Tail, Head, 1, NewAccu);
encode([], Element, Counter, Accumulator) ->
    p05:reverse([{Counter, Element}|Accumulator]).
