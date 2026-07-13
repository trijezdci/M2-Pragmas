# Pragma Facilities

Pragmas are non-semantic directives &mdash; instructions to the language processor to control or influence the compilation process but do not alter the semantics of the compiling source code.

This specification distinguishes two kinds:
* standard pragmas
* implementation defined pragmas

**Standard Pragmas** are compiler independent, designed to be portable.

**Implementation Defined Pragmas** are specific to the language processor and thus non-portable.

## Pragma Symbol Naming ##
* Pragma symbols of standard pragmas are always in all-uppercase
* Pragma symbols of implementation defined pragmas must be in title case or snake case.
* Denoters of implementation defined pragmas are qualified with an implementation prefix.
* The implementation prefix is always in lowercase.


## Standard Pragmas ##

The following standard pragmas are defined:

[`ABI`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-abi),
[`ADDR`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-addr),
[`ALIGN`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-align),
[`ANYORDER`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-anyorder),
[`ARC`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-arc),
[`BORROWER`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-borrower),
[`CONTIGUOUS`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-contiguous),
[`DEPRECATED`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-deprecated),
[`DETM`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-detm),
[`ENCODING`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-encoding),
[`ENDFWD`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-endfwd),
[`FFI`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ffi),
[`FFIDENT`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ffident),
[`FORWARD`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-forward),
[`GENERATED`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-generated),
[`GC`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-cg),
[`IN`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-in),
[`INLINE`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-inline),
[`LEADBITS`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-leadbits),
[`LOWLATENCY`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-lowlatency),
[`MEMALIGN`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-memalign),
[`MSG`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-msg),
[`NOINLINE`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-noinline),
[`NORETURN`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-noreturn),
[`OUT`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-out),
[`OWNER`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-owner),
[`PACKED`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-packed),
[`PADBITS`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-padbits),
[`PRESETS`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-presets),
[`PRIVATETO`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-privateto),
[`PURE`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-pure),
[`RANGE`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-range),
[`RELEASE`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-release),
[`RESIDENT`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-resident),
[`RETAIN`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-retain),
[`SINGLEASSIGN`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-singleassign),
[`TELL`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-tell),
[`TICKET`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ticket),
[`UNSET`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-unset),
[`VARIANT`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-variant),
[`VOLATILE`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-volatile),
[`WEAK`](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-weak).


### Pragma ABI ###
An `ABI` pragma may follow the module identifier in the header of an implementation module and establishes the calling
convention of the specified foreign API, language and its execution environment for the module.

```antlr
pragmaABI := ’<*’ ABI ’=’ CallingConvention ’*>’ ;

.CallingConvention := ’"C"’ | ’"CLR"’ | ’"JVM"’ ;
```

```Modula-2
(* Modula-2 implementation of the C stdio library *)
IMPLEMENTATION MODULE stdio <*ABI="C"*>;
```


### Pragma ADDR ###

Pragma `ADDR` maps a procedure or a global variable to a fixed memory address.

```antlr
pragmaADDR := ’<*’ ADDR '=' constExpr ’*>’ ;
```

```Modula-2
PROCEDURE Reset <*ADDR=0x12*>;
```


### Pragma ALIGN ###

Pragma `ALIGN` controls field alignment within records. The alignment is specified in octets and may not be zero.

```antlr
pragmaALIGN := ’<*’ ALIGN '=' constExpr ’*>’ ;
```


When the pragma is placed at the end of a record header, it has record scope and it determines the default alignment for field definitions without alignment pragmas.

```Modula-2
TYPE Aligned = RECORD <*ALIGN=2*> (* 16-bit default field alignment *)
  ...
END; (* Aligned *)
```

When the pragma is placed within a field list definition of a record type, it has field list scope and it determines the alignment of the field list.


```Modula-2
TYPE Aligned = RECORD
  foo, bar : INTEGER <*ALIGN=2*> ; (* 16-bit aligned *)
  baz, bam : INTEGER <*ALIGN=4*> ; (* 32-bit aligned *)
END; (* Aligned *)
```

When the pragma is placed after a field identifier, it has field list item scope and it determines the alignment of the field.

```Modula-2
TYPE Aligned = RECORD <*ALIGN=4*>
  foo <*ALIGN=2*>, bar : INTEGER  ; (* foo is 16-bit aligned, bar is 32-bit aligned *)
  baz, bam <*ALIGN=2*> : INTEGER  ; (* baz is 32-bit aligned, bam is 16-bit aligned *)
END; (* Aligned *)
```


### Pragma ANYORDER ###

Pragma `ANYORDER` represents a permission for the language processor to reorder fields in a record when space optimisation has been requested. The pragma has [record scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#record-scope).

```antlr
pragmaANYORDER := ’<*’ ANYORDER ’*>’ ;
```

```Modula-2
TYPE Foo = RECORD <*ANYORDER*>
  ch1 : CHAR;
  int : INTEGER;
  ch2 : CHAR
END; (* Foo *)
```


### Pragma ARC ###

Pragma `ARC` marks a module or a data type as requiring automatic reference counting. The pragma must be placed in both the interface and implementation or both the declaration and definition. A supporting language processor shall use the marking alongside pragmas `OWNER`, `BORROWER`, `RETAIN` and `RELEASE` to inject retain and release procedure calls where necessary in order to facilitate automatic reference counting.


```antlr
pragmaARC := ’<*’ ARC ’*>’ ;
```

```Modula-2
INTERFACE MODULE Foobar <*ARC*>;
```


### Pragma BORROWER ###

Pragma `BORROWER` marks a formal parameter, a local variable or a record field as _borrower_ of a reference counted object. This property is also known as a _weak reference_. When used with a formal parameter, it must be present in both the procedure's declaration and definition.  The use of pragmas `OWNER` and `BORROWER` with any given entity is mutually exclusive.


```antlr
pragmaBORROWER := ’<*’ BORROWER ’*>’ ;
```

```Modula-2
PROCEDURE Length ( VAR s : String <*BORROWER*> ) : CARDINAL; (* returns length, does not pass ownership *)
```


### Pragma CONTIGUOUS ###

Pragma `CONTIGUOUS` marks a type as contiguous. This represents a request to keep instances of the type in contiguous memory and thus keeping it from being split up into non-contiguous segments. A compile time warning shall be emitted if the suggestion is not followed.


```antlr
pragmaCONTIGUOUS := ’<*’ CONTIGUOUS ’*>’ ;
```

```Modula-2
TYPE Buffer = ARRAY 512 OF OCTET <*CONTIGUOUS*>;
```


### Pragma DEPRECATED ###

A `DEPRECATED` pragma marks a constant, a variable, a type or a procedure as deprecated. When the identifier of a deprecated entity is used, a compile time warning is issued. A compiler switch shall be provided to promote the warning to an error.

```antlr
pragmaDEPRECATED := ’<*’ DEPRECATED ’*>’ ;
```

```Modula-2
PROCEDURE Foo ( bar : Bar ) <*DEPRECATED*>;
```


### Pragma DETM ###

Pragma `DETM` marks a function as *deterministic*. The pragma is placed within the procedure header of both the function declaration and definition. A *deterministic* function may cause side effects but is not impacted by non-local state. Marking a function *deterministic* thus constitutes a promise for the function not to read non-local state, and to only call other functions either marked *pure* or *deterministic*. If the promise is not kept, a compile time warning shall be emitted. A compiler switch shall be provided to promote the warning to an error.

```antlr
pragmaDETM := ’<*’ DETM ’*>’ ;
```

```Modula-2
PROCEDURE foo ( bar : Bar ) : Baz <*DETM*> ; (* will not read but may modify non-local state *)
```


### Pragma ENCODING ###

Pragma `ENCODING` specifies the character encoding of the enclosing source file. It does not impose semantics how characters are stored and processed.

```antlr
pragmaENCODING := ’<*’ ENCODING '=' ( '"ASCII"' | '"UTF8"' ) ( ':' codePointSampleList )? ’*>’ ;

codePointSampleList := codePointSample ( ',' codePointSample )* ;

codePointSample := quotedCharacterLiteral '=' characterCode ;

alias quotedCharacterLiteral = StringLiteral ;

alias characterCode = NumberLiteral ;
```

The pragma controls which characters are permitted within quoted literals and comments within the enclosing source file.

| BOM       | Encoding      | Characters Permitted in Quoted Literals and Comments      |
|:---------:|:-------------:|:---------------------------------------------------------:|
| No BOM    | not specified | only characters permitted by the grammar                  |
|           | `ASCII`       |                                                           |
|           | `UTF8`        | additionally any printable character encodable in UTF8    |
| UTF8 BOM  | not specified | only characters permitted by the grammar                  |
|           | `ASCII`       |                                                           |
|           | `UTF8`        | additionally any printable character encodable in UTF8    |
| Other BOM | mandatory     | Support is implementation defined;                        |
|           |               | BOM and encoding specifier must match.                    |

An implementation that supports ASCII only, shall recognise encoding specifier `ASCII` and ignore any UTF8 BOM but reject any non-ASCII characters within the source file. An implementation that supports UTF8 shall recognise encoding specifiers `ASCII` and `UTF8`. Support for any other encodings is implementation defined. Only one encoding pragma per source file is permitted.

If any unsupported or unknown encoding specifier is encountered, the implementation shall abort and emit a fatal error message.


#### Encoding Specifiers for Legacy Support

To aid code portability, implementations that support legacy character encodings should use legacy encoding specifiers reserved for this purpose. 

| Encoding Specifier | Alias | Purpose | Legacy Usage |
| :--- | :--- | :--- | :--- |
| `"EBCDIC"` | *None* | EBCDIC (Host-dependent default) | IBM Mainframe (OS/390) and Midrange (OS/400) systems |
| `"ISO-8859-1"` | `"Latin-1"` | ISO/IEC 8859-1 (Western European) | Project Oberon |
| `"ISO-8859-2"` | `"Latin-2"` | ISO/IEC 8859-2 (Central European) | Unix and Linux systems |
| `"ISO-8859-5"` | *None* | ISO/IEC 8859-5 (Cyrillic) | ISO standard 8-bit Cyrillic systems |
| `"CP-1250"` | `"Windows-1250"` | Windows-1250 (Central European) | Windows systems |
| `"CP-1251"` | `"Windows-1251"` | Windows-1251 (Cyrillic) | Oberon and Component Pascal on Windows |
| `"KOI8-R"` | *None* | KOI8-R (Cyrillic) | Soviet-era Encoding for Unix and BSD systems |


#### Encoding Verification ####

The encoding specifier may be followed by a comma separated list of arbitrary code point samples. Each sample consists of a quoted character and its respective character code. If samples are chosen wisely, three or four samples will suffice to verify the encoding with near 100% certainty. Such a sample list for UTF8 is given in the example below.

```Modula-2
<*ENCODING="UTF8" : "é"=0uE9, "€"=0u20AC, "¥"=0uA5, "§"=0uA7*>
```

If a sample list is specified, a verification shall be carried out by matching the quoted literals in the sample list with their respective character codes. Any mismatch shall cause a fatal compilation error and abort. A list shall not contain more than eight samples. Excess samples shall be ignored and a warning shall be emitted. 


### Pragma ENDFWD ###

Pragma `ENDFWD` marks the end of a forward declaration section.

```antlr
pragmaENDFWD := '<*' ENDFWD '*>' ;
```


### Pragma FFI ###
An `FFI` pragma may follow the module identifier in the header of an interface module and establishes the calling
convention of the specified foreign API, language and its execution environment for the module.

```antlr
pragmaFFI := ’<*’ FFI ’=’ CallingConvention ’*>’ ;

.CallingConvention := ’"C"’ | ’"CLR"’ | ’"JVM"’ ;
```

```Modula-2
(* Modula-2 interface to the C stdio library *)
INTERFACE MODULE CStdIO <*FFI="C"*>;
```


### Pragma FFIDENT ###

An `FFIDENT` pragma may follow the identifier of a constant, type, variable, procedure or function definition or
declaration to map the identifier to the foreign API/ABI identifier specified in the pragma body. This pragma is
only valid within a module whose module header has been marked with the ABI or FFI pragma.

```antlr
pragmaFFIDENT := ’<*’ FFIDENT ’=’ ForeignIdentifier ’*>’ ;

alias ForeignIdentifier = QuotedLiteral ;
```

```Modula-2
(* Interface to an OpenVMS SMG library routine *)
PROCEDURE PasteVirtualDisplay
  ( displayID, pasteboardID : INTEGER; row, column : INTEGER ) : CARDINAL
  <*FFIDENT="SMG$PASTE_VIRTUAL_DISPLAY"*>;
```


### Pragma FORWARD ###

Pragma `FORWARD` marks the beginning of a forward declaration section. The section is terminated by pragma `ENDFWD`. Ideally, an external preprocessor should be used to automatically insert forward declaration sections into the source code prior to compilation on a single-pass compiler. Such a preprocessor may also be used to remove any forward declaration sections prior to committing source code to a repository. In the event that source code containing one or more forward declaration sections is compiled on a multi-pass compiler, source text between pragmas `FORWARD` and `ENDFWD` may be silently skipped without any further syntax analysis.

```antlr
pragmaFORWARD := '<*' FORWARD '*>' ;
```

```Modula-2
<*FORWARD*> PROCEDURE Foo ( bar : Bar ); <*ENDFWD*>
PROCEDURE Baz ( bar : Bar );
BEGIN Foo(bar) END Baz;
```


### Pragma GC ###

Pragma `GC` marks a module as either providing or requiring a garbage collecting memory allocator. The pragma must be placed in both the interface and implementation. If any procedure within a library module marked with the pragma calls an allocator not marked with the pragma, either directly, or indirectly via the Wirthian Macro `NEW` a compile time warning shall be emitted. A compiler switch shall be provided to promote the warning to an error.

```antlr
pragmaGC := ’<*’ GC ’*>’ ;
```

```Modula-2
INTERFACE MODULE Foobar <*GC*>;
```


### Pragma GENERATED ###

Pragma `GENERATED` represents a factory mark embedded within a source file that was generated by a template engine. It is intended to be automatically inserted by the engine that generated the source file. The pragma encodes the name of the template the source file was generated from, and the date and time when it was last generated. An implementation may use the information encoded within the pragma body to avoid unnecessary regeneration of libraries.

```antlr
pragmaGENERATED := ’<*’ GENERATED FROM template ',' datestamp ',' timestamp ’*>’ ;

template := StdIdent;

datestamp := year '-' month '-' day ;

timestamp := hours ':' minutes ':' seconds '+' timezone ;
```

```Modula-2
<*GENERATED FROM AssocArrays, 2024-12-31, 23:59:59+0100*>
```


### Pragma IN ###

Pragma `IN` represents a *promise **not** to write* to a formal `VAR` parameter `v` marked by the pragma within in the header of a procedure `p` as an `IN` parameter. The promise is kept if the language processor can prove that `v` is not written to within the
body of `p` in every possible runtime scenario, by absence of assignment and by not passing `v` to any `VAR` parameter not marked as an `IN` parameter in a procedure call other than via procedure variable. A compile time warning shall be emitted if the promise is not kept. A compiler switch may be provided to promote the warning to an error.

```antlr
pragmaIN := ’<*’ IN ’*>’ ;
```

```Modula-2
PROCEDURE WriteString ( VAR s : ARRAY OF CHAR <*IN*> );
```


### Pragma INLINE ###

An `INLINE` pragma represents a request to inline calls to a procedure so marked, in effect treating it as a macro. The request is a mandate for functions that return a property. Other requests may be declined, but should generally be fulfilled within reason*. When a request is declined, a compile time informational message shall be emitted.

```antlr
pragmaINLINE := ’<*’ INLINE ’*>’ ;
```

```Modula-2
PROCEDURE colour ( point : Point ) : Colour <*INLINE*>;
```

[*] The implementors of a compiler backend generally know better when to optimise than the users of their product.


### Pragma LEADBITS ###

Pragma `LEADBITS` directs the language processor to inserts a specified number of padding bits at the start of a field list sequence within a record. Permitted values range from one to 256 bits. The pragma is only permitted within packed record type definitions.

```antlr
pragmaLEADBITS := ’<*’ LEADBITS '=' constExpr ’*>’ ;
```

```Modula-2
TYPE Packed = RECORD <*PACKED; LEADBITS=2*>
  oneBit    : [0..1] OF OCTET; (* 1 bit *)
  twoBits   : [0..3] OF OCTET; (* 2 bits *)
  threeBits : [0..7] OF OCTET; (* 3 bits *)
END; (* Packed *)
```


### Pragma LOWLATENCY ###

Pragma `LOWLATENCY` marks a formal parameter or a local variable as latency critical. It represents a *suggestion* to the language processor to optimise access time for example by mapping the parameter or variable to a processor register. An informational compile time message shall be emitted if the suggestion is not followed.

```antlr
pragmaLOWLATENCY := ’<*’ LOWLATENCY ’*>’ ;
```

```Modula-2
VAR foo : INTEGER <*LOWLATENCY*>;
```


### Pragma MEMALIGN ###

Pragma `ALIGN` controls memory alignment. The alignment is specified in octets and may not be zero.

```antlr
pragmaMEMALIGN := ’<*’ MEMALIGN '=' constExpr ’*>’ ;
```

When the pragma is placed within a module header, it has module scope and determines the default memory alignment within the module.

```Modula-2
INTERFACE MODULE Foolib <*MEMALIGN=8*> ;
```

When the pragma is placed within a constant definition, it has constant scope and determines the memory alignment of the constant.

```Modula-2
CONST Table = { 10, 20, 30, 40, 50 } <*MEMALIGN=4*> ;
```

When the pragma is placed within a type definition, it has type definition scope and it determines the memory alignment of instances of the type.

```Modula-2
TYPE Buffer = ARRAY 512 OF OCTET <*MEMALIGN=8*> ;
```


### Pragma MSG ###

Pragma `MSG` represents a directive to emit user defined console messages during compilation. There are four types of messages: informational messages, warnings, error messages and fatal error messages. A message mode selector determines the message type. Console messages consist of a quoted string literal, the value of a compile time constant or value pragma, or a comma separated list of these components. A value pragma is a pragma that represents a compile time setting.

```antlr
pragmaMSG :=
  '<*' MSG '=' msgMode ':' msgComponent ( ',' msgComponent )* '*>' ;

.msgMode :=
  INFO | WARN | ERROR | FATAL ;

msgComponent :=
  String | constQualident | '$(' valuePragmaDenoter ')'

.valuePragmaDenoter := ENCODING | MEMALIGN | ImplDefinedValuePragmaDenoter ;

```

A value pragma is dereferenced by enclosing its pragma denoter in parentheses prefixed by a dollar sign.

```Modula-2
<*MSG=INFO : "The current memory alignment value is ", $(MEMALIGN)*>
```

#### Message Mode INFO ####

Message mode selector `INFO` is used to emit user defined information during compilation. Emitting an informational message does not change the error or warning count of the current compilation run and it does not cause compilation to fail or abort. A compiler switch may be provided to silence informational messages.

```Modula-2
<*MSG=INFO : "Library documentation is available at http://foolib.org"*>
```

#### Message Mode WARN ####

Message mode selector `WARN` is used to emit user defined warnings during compilation. Emitting a warning message increments the warning count of the current compilation run but does not cause compilation to fail or abort.

```Modula-2
<*MSG=WARN : "foo exceeds maximum value. A default value of 100 will be used instead."*>
```

#### Message Mode ERROR ####

Message mode selector `ERROR` is used to emit user defined error messages during compilation. Emitting an error message increments the error count of the current compilation run and causes compilation to fail but will not cause an abort.

```Modula-2
<*MSG=ERROR : "Value of foo is outside of its legal range of [1..100]."*>
```

#### Message Mode FATAL ####

Message mode selector `FATAL` is used to emit user defined fatal error messages during compilation. Emitting a fatal error message increments the error count of the current compilation run and causes the compilation to fail and abort immediately.

```Modula-2
<*MSG=FATAL : "Unsupported target architecture."*>
```


### Pragma NOINLINE ###

Pragma `NOINLINE` represents a _mandate_ that a procedure shall **not** be inlined. It must appear both in the procedure's definition and declaration. The use of pragmas `INLINE` and `NOINLINE` with any given procedure is mutually exclusive.

```antlr
pragmaNOINLINE := ’<*’ NOINLINE ’*>’ ;
```

```Modula-2
PROCEDURE Draw ( point : Point ) <*NOINLINE*>;
```


### Pragma NORETURN ###

Pragma `NORETURN` marks a regular procedure as non-returning. It represents a promise never to return in any runtime scenario. A compile time warning shall be emitted if the language processor cannot prove that the promise is kept. A compiler switch may be provided to promote the warning to an error.

```antlr
pragmaNORETURN := ’<*’ NORETURN ’*>’ ;
```

```Modula-2
PROCEDURE RebootSystem <*NORETURN*>;
```


### Pragma OUT ###

Pragma `OUT` represents a *promise to write* to a formal `VAR` parameter `v` marked by the pragma within in the header of a procedure `p` as an `OUT` parameter. The promise is kept if the language processor can prove that `v` is written to with the
body of `p` in every possible runtime scenario, either by assignment or by passing `v` to an `OUT` parameter in a procedure call
other than via procedure variable. A compile time warning shall be emitted if the promise is not kept. A compiler switch may be provided to promote the warning to an error.

```antlr
pragmaOUT := ’<*’ OUT ’*>’ ;
```

```Modula-2
PROCEDURE Init ( VAR i : INTEGER <*OUT*> );
```


### Pragma OWNER ###

Pragma `OWNER` marks a formal parameter, a local variable or a record field as _owner_ of a reference counted object. This property is also known as a _strong reference_. When used with a formal parameter, it must be present in both the procedure's declaration and definition.  The use of pragmas `OWNER` and `BORROWER` with any given entity is mutually exclusive.


```antlr
pragmaOWNER := ’<*’ OWNER ’*>’ ;
```

```Modula-2
PROCEDURE New ( VAR s : String <*OWNER*> ); (* allocates new String object and passes ownership to s *)
```


### Pragma PACKED ###

Pragma `PACKED` within a record type definition marks the type as packed. When packing is specified, the allocation size of a field of an anonymous subrange of type `OCTET`, `CARDINAL` and `LONGCARD` is reduced to the smallest bit width required to encode its value range. Fields of any other type are aligned on octet boundaries.

```antlr
pragmaPACKED := ’<*’ PACKED ’*>’ ;
```


### Pragma PADBITS ###

Pragma `PADBITS` directs the language processor to append a specified number of padding bits to one or more fields within a record. Permitted values range from one to 256 bits. The pragma is only permitted within packed record type definitions.

```antlr
pragmaPADBITS := ’<*’ PADBITS '=' constExpr ’*>’ ;
```

```Modula-2
TYPE Packed = RECORD <*PACKED*>
  oneBit    : [0..1] OF OCTET <*PADBITS=2*>; (* 1 bit data + 2 bits padding *)
  twoBits   : [0..3] OF OCTET;               (* 2 bits data, no padding *)
  threeBits : [0..7] OF OCTET                (* 3 bits data, no padding *)
END; (* Packed *)
```


### Pragma PRESETS ###

The `PRESETS` pragma represents a directive to read and apply compiler settings from an external pragma file. It may be placed anywhere before or after a token in a compilation unit. The pragma lists one or more pragma files without their suffixes. A compile time warning shall be emitted if any given pragma file cannot be found. A compiler switch may be provided to promote the warning to an error.

```antlr
pragmaPRESETS := ’<*’ PRESETS '=' identList ’*>’ ;
```

```Modula-2
MODULE Main; <*PRESETS=common, fooproj*>
```

A pragma file may contain any number of block comments, any number of `MSG` and `TELL` pragmas, and any number of implementation defined pragmas for compiler settings, in any order, but not any other syntax.

```antlr
pragmaFile :=
  ( blockComment* externalPragmas* )* ;

externalPragmas :=
  pragmaMSG | pragmaTELL | inPragFileImplDefPragmaBlock ;

inPragFileImplDefPragmaBlock :=
  '<*' inPragFileImplDefPragmaDenoter ( ';' inPragFileImplDefPragmaDenoter )* '*>' ;

inPragFileImplDefPragmaDenoter :=
  ( implPrefix '.' )? ImplDefPragmaSymbol ;

alias implPrefix = lowerCaseIdent ;
alias implDefPragmaSymbol = TitleOrSnakeCaseIdent ;
```

The filename of a pragma file consists of its basename, the short identifier of the language processor and a suffix identifying the file as a pragma file. Each supporting language processor shall automatically select pragma files whose implementation identifier matches that of the processor.

```antlr
pragmaFileName := basename '.' compilerID '.prag' ;
```


### Pragma PRIVATETO ###

A `PRIVATETO` pragma may follow the identifier in the header of a definition or interface module and marks the module for private use by modules listed in its body. When such a module is imported by any module not listed, a compile time warning shall be emitted. A compiler switch shall be provided to promote the warning to an error. The pragma is intended as a better alternative to local modules.

```antlr
pragmaPRIVATETO := ’<*’ PRIVATETO '=' identList ’*>’ ;
```

```Modula-2
INTERFACE MODULE Filesys0 <*PRIVATETO=Filesys*>;
```


### Pragma PURE ###

Pragma `PURE` marks a function as *pure*. The pragma is placed within the procedure header of both the function declaration and definition. A *pure* function does not cause any side effects and is not impacted by non-local state. Marking a function *pure* thus constitutes a promise for the function not to read nor modify non-local state, and to only call other functions marked *pure*. If the promise is not kept, a compile time warning shall be emitted. A compiler switch shall be provided to promote the warning to an error.

```antlr
pragmaPURE := ’<*’ PURE ’*>’ ;
```

```Modula-2
PROCEDURE foo ( bar : Bar ) : Baz <*PURE*> ; (* will not read nor modify non-local state *)
```


### Pragma RANGE ###

Pragma `RANGE` marks an integer type or field in Oberon as a subrange type with the lower and upper bounds given in the pragma's body. The language processor or an external tool can then carry out static range checking and emit a warning if an out of bounds value is assigned.

```antlr
pragmaRANGE := ’(*$’ RANGE '(’ lowerBound '..' upperBound ')' '*)’ ;
```

```oberon
TYPE Months = INTEGER (*$RANGE(1..12)*);
```


### Pragma RELEASE ###

Pragma `RELEASE` marks a procedure as decrementing the reference count for the type of its argument. It must appear both in the procedure's definition and declaration. The use of pragmas `RETAIN` and `RELEASE` with any given procedure is mutually exclusive.

```antlr
pragmaRELEASE := ’<*’ RELEASE ’*>’ ;
```

```Modula-2
PROCEDURE Release ( s : String ) <*RELEASE*>;
```


### Pragma RESIDENT ###

Pragma `RESIDENT` marks a type as resident. This represents a request to keep instances of the type in resident memory and thus keeping it from being swapped to secondary storage and from being relocated during garbage collection sweeps. A compile time warning shall be emitted if the suggestion is not followed.

```antlr
pragmaRESIDENT := ’<*’ RESIDENT ’*>’ ;
```

```Modula-2
TYPE ResBuf = ARRAY 512 OF OCTET <*RESIDENT*>;
```


### Pragma RETAIN ###

Pragma `RETAIN` marks a procedure as incrementing the reference count for the type of its argument. It must appear both in the procedure's definition and declaration. The use of pragmas `RETAIN` and `RELEASE` with any given procedure is mutually exclusive.

```antlr
pragmaRETAIN := ’<*’ RETAIN ’*>’ ;
```

```Modula-2
PROCEDURE Retain ( s : String ) <*RETAIN*>;
```


### Pragma SINGLEASSIGN ###

Pragma `SINGLEASSIGN` marks a variable as a single-assignment variable. Such a variable should be assigned to only once in every possible runtime scenario. A compile time warning shall be emitted for any violation the language processor detects. A compiler switch shall be provided to promote the warning to an error.

```antlr
pragmaSINGLEASSIGN := ’<*’ SINGLEASSIGN ’*>’ ;
```

```Modula-2
VAR foo : INTEGER <*SINGLEASSIGN*>;
```


### Pragma TELL ###

Pragma `TELL` is a directive for pragma related introspection. It may be used for symbol inspection, listing all pragmas used to mark a given symbol, or for pragma inspection, testing whether a given pragma is supported and printing the current value of a value pragma to the console.

```antlr
pragmaTELL :=
  "<*" TELL ( symbolInspection | pragmaInspection ) "*>" ;

.symbolInspection := Qualident ;

pragmaInspection :=
  ( pragmaTestExpr | pragmaValueExpr ) userDefinedMsg? ;
  
.pragmaTestExpr := "?(" pragmaDenoter ")" ;

.pragmaValueExpr := "$(" pragmaDenoter ")" ;

userDefinedMsg := ":" customMsg ( "|" altCustomMsg )?

.customMsg := msgMode msgText? ; /* used if true */

alias altCustomMsg = customMsg ; /* used if false */

.pragmaDenoter :=
  ABI | ADDR | ALIGN | ANYORDER | ARC | BORROWER | CONTIGUOUS | DEPRECATED |
  DETM | ENCODING | ENDFWD | FFI | FFIDENT | FORWARD | GC | GENERATED | IN |
  INLINE | LEADBITS | LOWLATENCY | MEMALIGN | MSG | NOINLINE | NORETURN |
  OUT | OWNER | PACKED | PADBITS | PRESETS | PRIVATETO | PURE | RANGE |
  RELEASE | RESIDENT | RETAIN | SINGLEASSIGN | TELL | TICKET | UNSET |
  VARIANT | VOLATILE | WEAK | implDefPragmaDenoter ;

msgText :=
  String | constQualident ;
```

#### Pragma Lookup for a Symbol ####

```Modula-2
<*TELL Foo.bar*> (* lists all pragmas for field bar of record type Foo. *)
```

#### Testing the Presence of a Pragma ####

```Modula-2
<*TELL ?(ADDR) : INFO "Pragma ADDR is supported." | FATAL "Pragma ADDR is not supported."*>
```

#### Printing the Value of a Value Pragma ####

```Modula-2
<*TELL $(JollyM2.UnrollLoops) : INFO "Loop unrolling is ON." | WARN "Loop unrolling is OFF."*>
```


### Pragma VARIANT ###

Pragma `VARIANT` tags a file as specific to one or more user defined variants and sub-variants of the source code. The language processor may use the information to detect mismatches between a variant requested in the invocation and the variant or variants encoded in the pragma. A compile time warning shall be emitted when such a mismatch is encountered. A compiler switch may be provided to promote the warning to an error.


```antlr
pragmaVARIANT := ’<*’ VARIANT '=' identList ’*>’ ;
```

```Modula-2
<*VARIANT=iso, posix*>
```


### Pragma TICKET ###

Pragma `TICKET` represents a reference to an unresolved issue in a bug tracking system. It encodes the ticket number of the unresolved issue. The pragma is intended for automatic insertion and removal by a bug tracking system. An implementation shall emit a warning for every ticket reference found. The warning should emit the ticket number. A compiler switch may be provided to demote the warning to an informational message or to silence the warning altogether.

```antlr
pragmaTICKET := ’<*’ TICKET '#' TicketNumber ( '[' URL ']' )? ’*>’ ;

alias TicketNumber = NumberLiteral ;

.URL := <RFC3986 compliant URL> ;
```

```Modula-2
<*TICKET #123 [https://github.com/m2sf/m2c/issues/123] *>;
```


### Pragma UNSET ###

The `UNSET` pragma represents a directive to unset all compiler settings applied by the most recent `PRESETS` pragma. It may be placed anywhere before or after a token in a compilation unit but it may occur only after a corresponding `PRESETS` pragma. A compile time warning shall be emitted if no corresponding `PRESETS` pragma is present. A compiler switch may be provided to promote the warning to an error.

```antlr
pragmaUNSET := ’<*’ UNSET ’*>’ ;
```

```Modula-2
<*PRESETS=foobar*>
...
<*UNSET*>
```


### Pragma VOLATILE ###

Pragma `VOLATILE` marks a global variable as volatile. By marking a variable volatile, the author states that its value may change during the lifetime of a program even if no write access can be deduced from source code analysis. An implementation shall neither eliminate any variable so marked, nor shall it emit any unused variable warning for any variable so marked.

```antlr
pragmaVOLATILE := ’<*’ VOLATILE ’*>’ ;
```

```Modula-2
VAR foo : INTEGER <*VOLATILE*>;
```


### Pragma WEAK ###

Pragma `WEAK` marks a function as *weakly pure*, or in short *weak*. The pragma is placed within the procedure header of both the function declaration and definition. A *weak* function does not cause any side effects but may be impacted by non-local state. Marking a function *weak* thus constitutes a promise for the function not to modify non-local state, and to only call other functions either marked *pure* or *weak*. If the promise is not kept, a compile time warning shall be emitted. A compiler switch shall be provided to promote the warning to an error.

```antlr
pragmaWEAK := ’<*’ WEAK ’*>’ ;
```

```Modula-2
PROCEDURE foo ( bar : Bar ) : Baz <*WEAK*> ; (* may read but will not modify non-local state *)
```


## Implementation Defined Pragmas ##

Implementation defined pragmas are specific to a language processor and should therefore be ignored by other language processors. An implementation defined pragma is preceded with an implementation specific prefix in order to distinguish it from other implementation defined pragmas for other processors that may use the same pragma symbol. When a processor does not understand an implementation defined pragma it will emit an informational message. A compiler switch may be provided to promote the informational message to a warning, error or fatal error message.

```antlr
ImplDefinedPragma :=
  ’<*’ ( implPrefix ’.’ )? pragmaSymbol ( ’=’ constExpr )? ’*>’ ;

alias implPrefix, pragmaSymbol = <implementation-defined> ; /* follows StdIdent syntax */
```

Use of an implementation defined pragma of a fictional compiler is shown below:

```Modula-2
<*JollyM2.UnrollLoops=TRUE*>
FOR plane IN array DO
  FOR row IN plane
    DO FOR col IN row DO
      ...
    END (* FOR *)
  END (* FOR *)
END; (* FOR *)
<*JollyM2.UnrollLoops=FALSE*>
```
