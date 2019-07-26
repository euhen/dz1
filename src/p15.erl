%% coding: utf-8
%P15 (**) Написать функцию-репликатор всех элементов входящего списка

-module(p15).
-export([replicate/2]).

replicate([Element|Tail], Counter) ->
    clone_element([Element|replicate(Tail, Counter)], Counter);
replicate([], _Counter) ->
    [].

% Private helper from P12
clone_element([Element|Clones], 1) ->
    [Element|Clones];
clone_element([Element|Clones], Counter) ->
    clone_element([Element, Element|Clones], Counter - 1).
