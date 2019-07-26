%% coding: utf-8
%P12 (**) Написать декодер для модифицированого алгоритма RLE

-module(p12).
-export([decode_modified/1]).

decode_modified([{Counter, Element}|Tail]) ->
    clone_element([Element|decode_modified(Tail)], Counter);
decode_modified([Head|Tail]) ->
    [Head|decode_modified(Tail)];
decode_modified([]) ->
    [].

% Private helper
clone_element([_Element|_Clones]=ResultList, 1) ->
    ResultList;
clone_element([Element|Clones], Counter) ->
    clone_element([Element, Element|Clones], Counter - 1).
