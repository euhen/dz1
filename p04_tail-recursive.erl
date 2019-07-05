%% coding: utf-8
%P04 (*) Посчитать количество элементов списка

-module(p04_tail-recursive).
-export([len/1]).

len(List) ->
    len(List, 0).

% Private
len([], Counter) ->
    Counter;
len([_Head|Tail], Counter) ->
    len(Tail, Counter + 1).
