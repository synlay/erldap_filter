PRECOMPILE_HOOK = create_parser_files

ERL_FOR_PARSER=erl -I -pa ebin -noshell -eval
SRC_DIR=src
PARSER_BASE_NAME=erldap_filter
LEXER_NAME=$(PARSER_BASE_NAME)_lexer
PARSER_NAME=$(PARSER_BASE_NAME)_parser

create_parser_files:
	@$(ERL_FOR_PARSER) 'leex:file("$(SRC_DIR)/$(LEXER_NAME)"), halt().'
	@$(ERL_FOR_PARSER) 'yecc:file("$(SRC_DIR)/$(PARSER_NAME)"), halt().'
