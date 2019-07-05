%% coding: utf-8
%P13 (**) Написать декодер для стандартного алгоритма RLE

-module(p13).
-export([decode/1]).

decode([{Counter, Element}|Tail]) ->
    clone_element(Element, Counter) ++ decode(Tail);
decode([]) ->
    [].

% Private helper from P12
clone_element([Element|Clones], 1) ->
    [Element] ++ Clones;
clone_element([Element|_Clones], Counter) ->
    [Element] ++ clone_element(Element, Counter - 1);
clone_element(Element, Counter) ->
    clone_element([Element], Counter).
