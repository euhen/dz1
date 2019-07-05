%% coding: utf-8
%P12 (**) Написать декодер для модифицированого алгоритма RLE

-module(p12).
-export([decode_modified/1]).

decode_modified([{Counter, Element}|Tail]) ->
    clone_element(Element, Counter) ++ decode_modified(Tail);
decode_modified([Head|Tail]) ->
    [Head] ++ decode_modified(Tail);
decode_modified([]) ->
    [].

% Private helper
clone_element([Element|Clones], 1) ->
    [Element] ++ Clones;
clone_element([Element|_Clones], Counter) ->
    [Element] ++ clone_element(Element, Counter - 1);
clone_element(Element, Counter) ->
    clone_element([Element], Counter).
