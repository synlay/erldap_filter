-module(erldap_filter_tests).

-include_lib("eunit/include/eunit.hrl").

erldap_filter_test_() ->
    {setup,
     fun() ->
             ok
     end,
     fun(_) ->
             ok
     end,
     [
      {"erldap_filter is alive",
       fun() ->
               %% format is always: expected, actual
               ?assertEqual(howdy, erldap_filter:hello())
       end}
      ]}.

