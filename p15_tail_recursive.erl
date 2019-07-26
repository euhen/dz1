%% coding: utf-8
%P15 (**) Написать функцию-репликатор всех элементов входящего списка

-module(p15_tail_recursive).
-export([replicate/2]).

replicate(List, Counter) ->
    replicate(List, Counter, []).

% Private helpers

replicate([Element|Tail], Counter, Accumulator) ->
    NewAccu = clone_element([Element|Accumulator], Counter),
    replicate(Tail, Counter, NewAccu);
replicate([], _Counter, Accumulator) ->
    p05:reverse(Accumulator).

% from P12
clone_element([Element|Clones], 1) ->
    [Element|Clones];
clone_element([Element|Clones], Counter) ->
    clone_element([Element, Element|Clones], Counter - 1).
