%% coding: utf-8
%P02 (*) Найти два последних элемента списка:

-module(p02).
-export([but_last/1]).

but_last([E1, E2]) ->
    [E1, E2];
but_last([_Head|Tail]) ->
    but_last(Tail).
