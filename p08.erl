%% coding: utf-8
%P08 (**) Удалить последовательно следующие дубликаты

-module(p08).
-export([compress/1]).

compress(List) ->
    compress(List, false).
compress([Head|Tail], Head) ->
    compress(Tail, Head);
compress([Head|Tail], _Prev_elem) ->
    [Head] ++ compress(Tail, Head);
compress([], _Prev_elem) ->
    [].
