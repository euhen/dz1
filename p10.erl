%% coding: utf-8
%P10 (**) Закодировать список с использованием алгоритма RLE

-module(p10).
-export([encode/1]).

encode([Head|Tail]) ->
    encode(Tail, Head, 1).

% Private
encode([Head|Tail], Head, Counter) ->
    encode(Tail, Head, Counter + 1);
encode([Head|Tail], Element, Counter) ->
    [{Counter, Element}|encode(Tail, Head, 1)];
encode([], Element, Counter) ->
    [{Counter, Element}].
