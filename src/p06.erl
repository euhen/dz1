%% coding: utf-8
%P06 (*) Определить, является ли список палиндромом

-module(p06).
-export([is_palindrome/1]).
-import(p05, [reverse/1]).

is_palindrome(List) ->
    List == p05:reverse(List).
