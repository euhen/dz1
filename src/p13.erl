%% coding: utf-8
%P13 (**) Написать декодер для стандартного алгоритма RLE

-module(p13).
-export([decode/1]).

decode([{Counter, Element}|Tail]) ->
    clone_element([Element|decode(Tail)], Counter);
decode([]) ->
    [].

% Private helper from P12
clone_element([Element|Clones], 1) ->
    [Element|Clones];
clone_element([Element|Clones], Counter) ->
    clone_element([Element, Element|Clones], Counter - 1).
