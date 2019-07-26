%% coding: utf-8
%P14 (*) Написать дубликатор всех элементов входящего списка

-module(p14_tail_recursive).
-export([duplicate/1]).

duplicate(List) ->
    duplicate(List, []).

% Private helper

duplicate([Element|Tail], Accumulator) ->
    NewAccu = [Element, Element|Accumulator],
    duplicate(Tail, NewAccu);
duplicate([], Accumulator) ->
    p05:reverse(Accumulator).
