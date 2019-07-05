%% coding: utf-8
%P14 (*) Написать дубликатор всех элементов входящего списка

-module(p14).
-export([duplicate/1]).

duplicate([Element|Tail]) ->
    [Element, Element] ++ duplicate(Tail);
duplicate([]) ->
    [].
