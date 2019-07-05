%% coding: utf-8
%P09 (**) Запаковать последовательно следующие дубликаты во вложеные списки

-module(p09).
-export([pack/1]).

pack([Head|Tail]) ->
    pack(Tail, [Head]).

% Private
pack([Head|Tail], [Head|Same_elems]) ->
    pack(Tail, [Head] ++ [Head] ++ Same_elems);
pack([Head|Tail], Same_elems) ->
    [Same_elems] ++ pack(Tail, [Head]);
pack([], Same_elems) ->
    [Same_elems].
