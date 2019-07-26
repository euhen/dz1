%% coding: utf-8
%P13 (**) Написать декодер для стандартного алгоритма RLE

-module(p13_tail_recursive).
-export([decode/1]).

decode(List) ->
    decode(List, []).

% Private helpers

decode([{Counter, Element}|Tail], Accumulator) ->
    NewAccu = clone_element([Element|Accumulator], Counter),
    decode(Tail, NewAccu);
decode([], Accumulator) ->
    p05:reverse(Accumulator).

% from P12
clone_element([Element|Clones], 1) ->
    [Element|Clones];
clone_element([Element|Clones], Counter) ->
    clone_element([Element, Element|Clones], Counter - 1).
