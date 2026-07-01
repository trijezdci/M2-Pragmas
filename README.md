# Portable Pragmas for Pascal, Modula-2 and Oberon

This project provides a common portable pragma specification for Wirthian languages and their dialects, most notably Modula-2, Pascal and Oberon.
The pragmas are designed both for adoption in new compiler projects and retrofitting to existing compilers without polluting the existing grammar.

## Pragma Specification
The specification is currently divided into four sections:

### Pragma Scopes
[Pragma Scopes](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes)

### Pragma Placement
[Pragma Placement](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Placement)

### Pragma Specification
[Pragma Specification](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification)

### Pragma Grammar
#### Syntax Diagrams
[Syntax Diagrams](https://github.com/trijezdci/M2-Pragmas/wiki/Syntax-Diagrams)

### EBNF
[EBNF](https://github.com/trijezdci/M2-Pragmas/tree/main/grammar)

## Pragma Parsing Library

A compliant pragma parsing library for easy retrofitting to existing compilers will be added to the repo.

### Concept

The pragma parsing library should be independent and decoupled from the compiler. It should provide an interface through which a compiler can call the library to pass in pragma blocks and receive a data structure back with the information encoded in the pragma. The client compiler should not need to have any knowledge of the pragma lexis and syntax, other than the opening and closing pragma delimiters. For the library to obtain information from the compiler's symbol table, it should provide callback registration procedures.

### Integration

#### Driver

The compiler's driver needs to be modifed to register callback functions with the pragma parsing library to obtain symbol table information about identifiers permitted in in-pragma expressions.

#### Lexer

The client compiler's lexer needs to be modified to consume pragmas including their delimiters, then pass a `PRAGMA` token to its parser along with a reference to the lexeme of the consumed pragma block.

#### Parser
The parser needs to be modified to recognise the `PRAGMA` token and to call the pragma parsing library's pragma parser via its API, passing it the reference to the lexeme of the pragma block to be parsed. It further needs to be modified to interpret the data structure passed back and determine from the pragma type whether the pragma is permitted at the current location, further decorating the current AST node with the information returned by the pragma parser.

#### Code Analyser

Further modifications are required to carry out static analysis on the source code being compiled according to the pragma semantics and reporting informational, warning and error messages on the results.

#### Backend

The backend driver needs to translate any optimisation decoration in the AST into a form that the optimisng code generator expects and pass it to the code generator along with the IR.

## AI Context & Technical Specification

For LLMs, AI agents, and web crawlers, the complete technical specification has been compiled into a single file.

[llms-full.txt](llms-full.txt)
