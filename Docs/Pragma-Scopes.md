A pragma annotates a syntactic entity is is associated with. The pragma is said to have the scope of the syntactic entity. There are 17 categories.

[File Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#file-scope),
[Module Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#module-scope),
[Constant Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#constant-scope),
[Variable Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#variable-scope),
[Array Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#array-scope),
[Record Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#record-scope),
[Field List Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#field-list-scope),
[Field List Item Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#field-list-item-scope),
[Procedure Type Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#procedure-type-scope),
[Formal Type List Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#formal-type-list-scope),
[Formal Type List Iten Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#formal-type-list-item-scope),
[Other Type Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#other-type-scope),
[Procedure Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#procedure-scope),
[Parameter List Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#parameter-list-scope),
[Single Parameter Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#single-parameter-scope),
[Point-Forward Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#point-forward-scope),
[No Scope](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Scopes#no-scope).

### Overview
![pragma scope table](https://github.com/user-attachments/assets/644f0d7c-ff8c-48d0-b338-d30409bc0891)


### File Scope

Pragmas with file scope apply to the entire file. The following pragmas **always** have file scope:
 
[**`ENCODING`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-encoding),
[**`VARIANT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-variant) and
[**`GENERATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-generated).


### Module Scope

Pragmas with module scope apply to the module. The following pragmas **always** have module scope:

[**`PRIVATETO`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-privateto),
[**`GC`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-gc),
[**`ARC`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-arc),
[**`ABI`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-abi) and
[**`FFI`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ffi).


Whereas the following pragmas **may** have module scope, depending on their placement.

[**`ALIGN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-align),
[**`DEPRECATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-deprecated) and
[**`FFIDENT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ffident).


### Constant Scope

Pragmas with constant scope apply to a constant.

Pragma [**`DEPRECATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-deprecated)
may have constant scope, depending on its placement.


### Variable Scope

Pragmas with variable scope apply to a variable. The following pragmas **always** have variable scope:

[**`ADDR`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-addr),
[**`SINGLEASSIGN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-singleassign) and
[**`VOLATILE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-volatile).


The following pragmas **may** have variable scope, depending on their placement.

[**`ALIGN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-align),
[**`BORROWER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-borrower),
[**`DEPRECATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-deprecated),
[**`FFIDENT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ffident),
[**`LOWLATENCY`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-lowlatency) and
[**`OWNER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-owner).


### Array Scope

Pragmas with array scope apply to an array type. The following pragmas **may** have array scope, depending on their placement.

[**`ALIGN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-align) and
[**`DEPRECATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-deprecated).


### Record Scope

Pragmas with record scope apply to a record type. The following pragmas **always** have record scope:

[**`LEADBITS`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-leadbits) and
[**`PACKED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-packed).

The following pragmas **may** have record scope, depending on their placement.

[**`ALIGN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-align) and
[**`DEPRECATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-deprecated).


### Field List Scope

Pragmas with field list scope apply to a record field list. The following pragmas **may** have field list scope, depending on their placement.

[**`ALIGN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-align),
[**`DEPRECATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-deprecated) and
[**`PADBITS`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-padbits).


### Field List Item Scope

Pragmas with field list item scope apply to a single record field within a field list. The following pragmas **may** have field list item scope, depending on their placement.

[**`ALIGN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-align),
[**`DEPRECATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-deprecated) and
[**`PADBITS`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-padbits).


### Procedure Type Scope

Pragmas with procedure type scope apply to a procedure type. The following pragmas **may** have procedure scope, depending on their placement.

[**`DETM`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-align),
[**`INLINE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-borrower),
[**`NOINLINE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-align),
[**`NORETURN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-borrower),
[**`PURE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ffident),
[**`WEAK`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-owner).
[**`DEPRECATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-deprecated).


### Formal Type List Scope

Pragmas with formal type list scope apply to a procedure type's formal type list. The following pragmas **may** have formal type list scope, depending on their placement.

[**`BORROWER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-borrower),
[**`IN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-in),
[**`LOWLATENCY`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-lowlatency),
[**`OUT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-out) and
[**`OWNER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-owner).


### Formal Type List Item Scope

Pragmas with formal type list item scope apply to a single formal type within a procedure type's formal type list. The following pragmas **may** have formal type list item scope, depending on their placement.

[**`BORROWER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-borrower),
[**`IN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-in),
[**`LOWLATENCY`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-lowlatency),
[**`OUT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-out) and
[**`OWNER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-owner).


### Other Type Scope

Pragmas with _other type scope_ apply to any type other than record types. The following pragmas **may** have type scope, depending on their placement.

[**`ALIGN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-align) and
[**`DEPRECATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-deprecated).


### Procedure Scope

Pragmas with procedure scope apply to a procedure. The following pragmas **always** have procedure scope:

[**`RELEASE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-lowlatency) and
[**`RETAIN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-lowlatency).

The following pragmas **may** have procedure scope, depending on their placement.

[**`ADDR`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-addr),
[**`FFIDENT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ffident),
[**`DEPRECATED`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-deprecated),
[**`DETM`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-align),
[**`INLINE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-borrower),
[**`NOINLINE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-align),
[**`NORETURN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-borrower),
[**`PURE`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ffident) and
[**`WEAK`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-owner).


### Parameter List Scope

Pragmas with parameter list scope apply to a procedure's formal parameter list. The following pragmas **may** have parameter list scope, depending on their placement.

[**`BORROWER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-borrower),
[**`IN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-in),
[**`LOWLATENCY`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-lowlatency),
[**`OUT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-out) and
[**`OWNER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-owner).


### Parameter List Item Scope

Pragmas with parameter list item scope apply to a single parameter within a procedure's formal parameter list. The following pragmas **may** have parameter list item scope, depending on their placement.

[**`BORROWER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-borrower),
[**`IN`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-in),
[**`LOWLATENCY`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-lowlatency),
[**`OUT`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-out) and
[**`OWNER`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-owner).


### Point-Forward Scope

Pragmas with point-forward scope apply from the point forward where they are placed. The following parameters **always** have point-forward scope:

[**`ENDFWD`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-endfwd),
[**`FORWARD`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-forward),
[**`PRESETS`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-presets) and
[**`UNSET`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-unset).


### No Scope

Pragmas without scope do not apply to any syntactic entity. The following pragmas are **always** without scope:

[**`MSG`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-msg),
[**`TELL`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-tell) and
[**`TICKET`**](https://github.com/trijezdci/M2-Pragmas/wiki/Pragma-Specification#pragma-ticket).
