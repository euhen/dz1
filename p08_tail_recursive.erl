%% coding: utf-8
%P08 (**) Удалить последовательно следующие дубликаты

-module(p08_tail_recursive).
-export([compress/1]).

compress(List) ->
    compress(List, false, []).

% Private helper

compress([Head|Tail], Head, Accumulator) ->
    compress(Tail, Head, Accumulator);
compress([Head|Tail], _PrevElem, Accumulator) ->
    NewAccu = [Head|Accumulator],
    compress(Tail, Head, NewAccu);
compress([], _PrevElem, Accumulator) ->
    p05:reverse(Accumulator).
