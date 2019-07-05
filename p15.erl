%% coding: utf-8
%P15 (**) Написать функцию-репликатор всех элементов входящего списка

-module(p15).
-export([replicate/2]).

replicate([Element|Tail], Counter) ->
    clone_element(Element, Counter) ++ replicate(Tail, Counter);
replicate([], _Counter) ->
    [].

% Private helper from P12
clone_element([Element|Clones], 1) ->
    [Element] ++ Clones;
clone_element([Element|_Clones], Counter) ->
    [Element] ++ clone_element(Element, Counter - 1);
clone_element(Element, Counter) ->
    clone_element([Element], Counter).
