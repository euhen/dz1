%% coding: utf-8
%P03 (*) Найти N-й элемент списка

-module(p03_tail_recursive).
-export([element_at/2]).

element_at(List, Index) ->
    element_at(List, 1, Index).

% Private
element_at([Head|_Tail], I, I) ->
    Head;
element_at([_Head|Tail], Counter, Index) ->
    element_at(Tail, Counter + 1, Index);
element_at(_, _, _) ->
    undefined.
