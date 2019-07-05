%% coding: utf-8
%P05 (*) Перевернуть список

-module(p05).
-export([reverse/1]).

reverse([Head|Tail]) ->
    reverse(Tail) ++ [Head];
reverse([]) ->
    [].
