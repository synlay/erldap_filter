% Lexes LDAP filters

Definitions.

D   = [0-9]
L   = [A-Za-z]
WS  = ([\000-\s]|%.*)
FT  = (=|~=|>=|<=|\*)

Rules.

&     : {token,{intersection,TokenLine,list_to_atom(TokenChars)}}.
\|    : {token,{union,TokenLine,list_to_atom(TokenChars)}}.
!     : {token,{negation,TokenLine,list_to_atom(TokenChars)}}.
{FT}  : {token,{filtertype,TokenLine,list_to_atom(TokenChars)}}.
{L}+  : {token,{string,TokenLine,TokenChars}}.
{D}+  : {token,{integer,TokenLine,list_to_integer(TokenChars)}}.
[()]  : {token,{list_to_atom(TokenChars),TokenLine}}.
{WS}+ : skip_token.

Erlang code.
