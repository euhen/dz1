-module(test2).
-compile(export_all).
-include_lib("eunit/include/eunit.hrl").

-import(p01, [last/1]).
-import(p02, [but_last/1]).
-import(p03_tail_recursive, [element_at/2]).
-import(p04_tail_recursive, [len/1]).
-import(p05, [reverse/1]).
-import(p06, [is_palindrome/1]).
-import(p07, [flatten/1]).
-import(p08_tail_recursive, [compress/1]).
-import(p09_tail_recursive, [pack/1]).
-import(p10_tail_recursive, [encode/1]).
-import(p11_tail_recursive, [encode_modified/1]).
-import(p12_tail_recursive, [decode_modified/1]).
-import(p13_tail_recursive, [decode/1]).
-import(p14_tail_recursive, [duplicate/1]).
-import(p15_tail_recursive, [replicate/2]).

last_test_() ->
    ?_assert(last([a,b,c,d,e,f]) =:= f).

but_last_test_() ->
    ?_assert(but_last([a,b,c,d,e,f]) =:= [e,f]).

element_at_test_() ->
    ?_assert(element_at([a,b,c,d,e,f], 4) =:= d),
    ?_assert(element_at([a,b,c,d,e,f], 10) =:= undefined).

len_test_() ->
    ?_assert(len([]) =:= 0),
    ?_assert(len([a,b,c,d]) =:= 4).

reverse_test_() ->
    ?_assert(reverse([1,2,3]) =:= [3,2,1]).

is_palindrome_test_() ->
    ?_assert(is_palindrome([1,2,3,2,1]) =:= true),
    ?_assert(is_palindrome([1,2,3,2,3]) =:= false).

flatten_test_() ->
    ?_assert(flatten([a,[],[b,[c,d],e]]) =:= [a,b,c,d,e]).

compress_test_() ->
    ?_assert(compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e]) =:= [a,b,c,a,d,e]).

pack_test_() ->
    ?_assert(pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e]) =:=
        [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]).

encode_test_() ->
    ?_assert(encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e]) =:=
        [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]).

encode_modified_test_() ->
    ?_assert(encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e]) =:=
        [{4,a},b,{2,c},{2,a},d,{4,e}]).

decode_modified_test_() ->
    ?_assert(decode_modified([{4,a},b,{2,c},{2,a},d,{4,e}]) =:=
        [a,a,a,a,b,c,c,a,a,d,e,e,e,e]).

decode_test_() ->
    ?_assert(decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]) =:=
        [a,a,a,a,b,c,c,a,a,d,e,e,e,e]).

duplicate_test_() ->
    ?_assert(duplicate([a,b,c,c,d]) =:= [a,a,b,b,c,c,c,c,d,d]).

replicate_test_() ->
    ?_assert(replicate([a,b,c], 3) =:= [a,a,a,b,b,b,c,c,c]).
