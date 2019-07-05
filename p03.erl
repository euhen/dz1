%% coding: utf-8
%P03 (*) Найти N-й элемент списка

-module(p03).
-export([element_at/2]).

element_at([Head|_Tail], 1) ->
    Head;
element_at([_Head|Tail], Index) ->
    element_at(Tail, Index - 1);
element_at([], _Index) ->
    undefined.
