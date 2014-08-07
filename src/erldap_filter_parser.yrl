Nonterminals
filter filtercomp filtertype filterlist item.

Terminals '(' ')'
string intersection union negation.

Rootsymbol filter.

filter     -> '(' filtercomp ')' : '$2'.
filtercomp -> filtertype : '$1'.
filtercomp -> item : '$1'.
filtertype -> intersection filterlist: {intersection, '$2'}.
filtertype -> union filterlist: {union, '$2'}.
filtertype -> negation filter: {negation, '$2'}.
filterlist -> filter: ['$1'].
filterlist -> filter filterlist: ['$1'] ++ '$2'.
item       -> string : unwrap('$1').

Erlang code.

unwrap({_,_,V}) -> V.
