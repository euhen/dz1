%% coding: utf-8
%P11 (**) Закодировать список с использованием модифицированого алгоритма RLE

-module(p11).
-export([encode_modified/1]).

encode_modified([Head|Tail]) ->
    encode_modified(Tail, Head, 1).

% Private
encode_modified([Head|Tail], Head, Counter) ->
    encode_modified(Tail, Head, Counter + 1);
encode_modified([Head|Tail], Element, 1) ->
    [Element] ++ encode_modified(Tail, Head, 1);
encode_modified([Head|Tail], Element, Counter) ->
    [{Counter, Element}] ++ encode_modified(Tail, Head, 1);
encode_modified([], Element, Counter) ->
    [{Counter, Element}].
