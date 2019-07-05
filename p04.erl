%% coding: utf-8
%P04 (*) Посчитать количество элементов списка

-module(p04).
-export([len/1]).

len([_Head|Tail]) ->
    1 + len(Tail);
len([]) ->
    0.
