## Terminology

### Pragma Block

The largest unit of composition for pragmas is the *pragma block*.
A *pragma block* consists of an opening and closing delimiter and a *pragma body*.

```antlr
pragmaBlock := '<*' pragmaBody '*>' ;
```
The length of a pragma block including delimiters, line breaks and `NUL` termination shall not exceed a buffer size of 1024 octets.


### Pragma Body

The _pragma body_ consists of one or more *pragma clauses*. There are three categories: standalone clauses, combinable clauses and implementation defined clauses.

```antlr
pragmaBody := standalonePragmaClause | pragmaClauseSeq | implDefPragmaClause ;
```

### Pragma Clause

A *pragma clause* is the smallest unit of composition for pragmas. It consists of one or more tokens that encode the pragma's semantic information.

## Pragma Grouping

### Standalone Pragmas

A pragma clause that may not be placed together with other clauses in a single pragma block is called a *standalone pragma clause*. Standalone pragma clauses are:

[**`ENCODING`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-encoding),
[**`ENDFWD`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-endfwd),
[**`FORWARD`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-forward),
[**`GENERATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-generated),
[**`MSG`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-msg),
[**`PRESETS`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-presets),
[**`TELL`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-tell),
[**`TICKET`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ticket),
[**`UNSET`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-unset) and
[**`VARIANT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-variant).

### Multi-Clause Pragmas

A pragma clause that may be placed together with other clauses in a single pragma block is called a *combinable pragma clause*. Combinable pragma clauses are:

[**`ABI`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-abi),
[**`ADDR`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-addr),
[**`ALIGN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-align),
[**`ARC`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-arc),
[**`BORROWER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-borrower),
[**`CONTIGUOUS`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-contiguous),
[**`DEPRECATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-deprecated),
[**`DETM`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-detm),
[**`FFI`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ffi),
[**`FFIDENT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ffident),
[**`GC`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-gc),
[**`IN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-in),
[**`INLINE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-inline),
[**`LEADBITS`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-leadbits),
[**`LOWLATENCY`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-lowlatency),
[**`MEMALIGN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-memalign),
[**`NOINLINE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-noinline),
[**`NORETURN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-noreturn),
[**`OUT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-out),
[**`OWNER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-owner),
[**`PACKED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-packed),
[**`PADBITS`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-padbits),
[**`PRIVATETO`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-privateto),
[**`PURE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-pure),
[**`RELEASE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-release),
[**`RESIDENT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-resident),
[**`RETAIN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-retain),
[**`SINGLEASSIGN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-singleassign),
[**`VOLATILE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-volatile) and
[**`WEAK`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-weak).

### Adjacent Pragma Blocks

A pragma block may be followed by one or more adjacent pragma blocks.


## Pragma Placement By Scope

### File Scope

Pragmas with [file scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#file-scope) may be placed strictly in order

(1) [**`ENCODING`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-encoding),
(2) [**`VARIANT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-variant),
(3) [**`GENERATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-generated)

possibly before or after a comment, but **always before** the module header.


### Module Scope

Pragmas with [module scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#module-scope) may be placed at the end of the module header of a top-level module **before** the terminating semicolon. Pragmas must **not** be placed in the header of any local module.


### Constant Scope

Pragmas with [constant scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#constant-scope) may be placed at the end of a constant definition **before** the terminating semicolon.


### Variable Scope

Pragmas with [variable scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#variable-scope) may be placed at the end of a variable definition **before** the terminating semicolon.


### Array Scope

Pragmas with [array scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#array-scope) may be placed at the end of an array type definition **before** the terminating semicolon.


### Record Scope

Pragmas with [record scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#record-scope) may be placed at the end of a record type definition's header **before** the field list sequence.


### Field List Scope

Pragmas with [field list scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#field-list-scope) may be placed at the end of a record field list **before** the separating semicolon, or the record's terminating `END`.


### Field List Item Scope

Pragmas with [field list item scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#field-list-item-scope) may be placed after a field's identifier **before** a separating comma, or the identifier list's terminating colon.


### Procedure Type Scope

Pragmas with [procedure type scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#procedure-type-scope) may be placed at the end of a procedure type definition **before** the terminating semicolon.


### Formal Type List Scope

Pragmas with [formal type list scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#formal-type-list-scope) may be placed at the end of a formal type list **before** the separating semicolon or the terminating closing parenthesis.


### Formal Type List Item Scope

Pragmas with [formal type list item scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#formal-type-list-item-scope) may be placed after a formal type's identifier **before** a separating comma or the formal type list's terminating closing parenthesis.


### Other Type Scope

Pragmas with any [other type scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#other-type-scope) may be placed at the end of the type definition **before** the terminating semicolon.


### Procedure Scope

Pragmas with [procedure scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#procedure-scope) may be placed at the end of a procedure header **before** the terminating semicolon.


### Parameter List Scope

Pragmas with [parameter list scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#parameter-list-scope) may be placed at the end of a formal parameter list **before** the separating semicolon or the terminating closing parenthesis.


### Parameter List Item Scope

Pragmas with [parameter list item scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#parameter-list-item-scope) may be placed after a parameter's identifier **before** a separating comma or the parameter list's terminating closing parenthesis.


### Point-Forward Scope

Pragmas with [point-forward scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#point-forward-scope) may be placed anywhere within the module body where an import, a declaration or definition, a statement or a comment may appear


### No Scope

Pragmas [without scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#no-scope) may be placed anywhere within a source file, after any and all pragmas with file scope, anywhere an import, a declaration or definition, a statement or a comment may appear.


## Mutual Exclusion

### Scope Exclusion

No pragma may be placed in a list scope where a pragma has been placed in list item scope.

```modula-2
TYPE Foo = RECORD
  a, b : Bar <*ALIGN=2*> ; (* valid *)
  c <*ALIGN=2*>, d : Baz;  (* valid *)
  e <*PADBITS=2*>, f : Bam <*ALIGN=2*> (* invalid *)
END; (* Foo *)
```

### Logical Exclusion

The following pragmas are mutually exclusive when applied to the same scope or overlapping scope:

* [**`ABI`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-abi) and
 [**`FFI`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ffi)
* [**`ARC`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-arc) and
 [**`GC`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-gc)
* [**`OWNER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-owner) and
 [**`BORROWER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-borrower)
* [**`PURE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-pure),
 [**`WEAK`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-weak) and
 [**`DETM`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-detm)
* [**`IN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-in) and
 [**`OUT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-out)
* [**`INLINE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-inline) and
 [**`NOINLINE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-noinline)
* [**`RELEASE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-release) and
 [**`RETAIN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-retain)
