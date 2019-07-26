%% coding: utf-8
%P12 (**) Написать декодер для модифицированого алгоритма RLE

-module(p12_tail_recursive).
-export([decode_modified/1]).
-import(p05, [reverse/1]).

decode_modified(List) ->
    decode_modified(List, []).

% Private helpers

decode_modified([{Counter, Element}|Tail], Accumulator) ->
    NewAccu = clone_element([Element|Accumulator], Counter),
    decode_modified(Tail, NewAccu);
decode_modified([Head|Tail], Accumulator) ->
    decode_modified(Tail, [Head|Accumulator]);
decode_modified([], Accumulator) ->
    p05:reverse(Accumulator).

clone_element([_Element|_Clones]=ResultList, 1) ->
    ResultList;
clone_element([Element|Clones], Counter) ->
    clone_element([Element, Element|Clones], Counter - 1).
