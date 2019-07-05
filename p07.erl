%% coding: utf-8
%P07 (**) Выровнять структуру с вложеными списками

-module(p07).
-export([flatten/1]).

flatten([Head|Tail]) ->
    flatten(Head) ++ flatten(Tail);
flatten([]) ->
    [];
flatten(Element) ->
    [Element].
