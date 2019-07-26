%% coding: utf-8
%P09 (**) Запаковать последовательно следующие дубликаты во вложеные списки

-module(p09_tail_recursive).
-export([pack/1]).

pack([Head|Tail]) ->
    pack(Tail, [Head], []).

% Private
pack([Head|Tail], [Head|SameElems], Accumulator) ->
    pack(Tail, [Head,Head|SameElems], Accumulator);
pack([Head|Tail], SameElems, Accumulator) ->
    NewAccu = [SameElems|Accumulator],
    pack(Tail, [Head], NewAccu);
pack([], SameElems, Accumulator) ->
        p05:reverse([SameElems|Accumulator]).
