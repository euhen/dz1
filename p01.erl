%% coding: utf-8
%P01 (*) Найти последний элемент списка

-module(p01).
-export([last/1]).

last([Head]) ->
    Head;
last([_Head|Tail]) ->
    last(Tail).
