%% coding: utf-8
%P08 (**) Удалить последовательно следующие дубликаты

-module(p08).
-export([compress/1]).

compress(List) ->
    compress(List, false).

% Private helper

compress([Head|Tail], Head) ->
    compress(Tail, Head);
compress([Head|Tail], _PrevElem) ->
    [Head|compress(Tail, Head)];
compress([], _PrevElem) ->
    [].
