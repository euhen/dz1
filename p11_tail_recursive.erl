%% coding: utf-8
%P11 (**) Закодировать список с использованием модифицированого алгоритма RLE

-module(p11_tail_recursive).
-export([encode_modified/1]).

encode_modified([Head|Tail]) ->
    encode_modified(Tail, Head, 1, []).

% Private
encode_modified([Head|Tail], Head, Counter, Accumulator) ->
    encode_modified(Tail, Head, Counter + 1, Accumulator);
encode_modified([Head|Tail], Element, 1, Accumulator) ->
    NewAccu = [Element|Accumulator],
    encode_modified(Tail, Head, 1, NewAccu);
encode_modified([Head|Tail], Element, Counter, Accumulator) ->
    NewAccu = [{Counter, Element}|Accumulator],
    encode_modified(Tail, Head, 1, NewAccu);
encode_modified([], Element, Counter, Accumulator) ->
    p05:reverse([{Counter, Element}|Accumulator]).
