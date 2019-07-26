%% coding: utf-8
%P07 (**) Выровнять структуру с вложеными списками

-module(p07).
-export([flatten/1]).

flatten(L) ->
    p05:reverse(flatten(L, [])).
flatten([ [_|_]=H|T ], Acc) ->
    flatten(T, flatten(H, Acc));
flatten([ []|T ], Acc) ->
    flatten(T, Acc);
flatten([ H|T ], Acc) ->
    flatten(T, [H|Acc]);
flatten([], Acc) ->
    Acc.
