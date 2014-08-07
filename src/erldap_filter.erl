-module(erldap_filter).

-export([
    parse/1
]).

parse(StringInput) ->
    {ok, Tokens, _EndLine} = erldap_filter_lexer:string(StringInput),
    erldap_filter_parser:parse(Tokens).
