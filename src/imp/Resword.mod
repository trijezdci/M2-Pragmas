(*!m2pim*) (* Copyright (c) 2026 B.Kowarsch. All rights reserved. *)

IMPLEMENTATION MODULE Resword;

IMPORT Token, String;

FROM Token IMPORT TokenT;
FROM String IMPORT StringT;

VAR lexeme : ARRAY [Token.Abi .. Token.Weak] OF StringT;


PROCEDURE tokenForLexeme ( lexeme : StringT; defaultToken : TokenT ) : TokenT;
(* If lexeme represents a reserved word, its corresponding reserved word's token
   value is returned, otherwise the value of defaultToken is returned. *)

BEGIN
  IF lexeme = NIL THEN
    (* TO DO : error message *)
    HALT
  END; (* IF *)

  CASE String.length(lexeme) OF
    2 :
    CASE String.charAtIndex(lexeme, 0) OF
      'C' :

      (* 'CG' *)

      IF lexeme = cg THEN
        RETURN Token.Cg
      END (* IF *)

    | 'I' :
 
      (* 'IN' *)
      
      IF lexeme = in THEN
        RETURN Token.In
      END (* IF *)

    END (* CASE *)

  | 3 :
    CASE String.charAtIndex(lexeme, 1) OF
      'B' :
    
      (* 'ABI' *)
      
      IF lexeme = abi THEN
        RETURN Token.Abi
      END (* IF *)

    | 'N' :

      (* 'AND' *)
      
      IF lexeme = and THEN
        RETURN Token.And
      END (* IF *)

    | 'R' :
      
      (* 'ARC' *)
      
      IF lexeme = arc THEN
        RETURN Token.Arc
      END (* IF *)
      
    | 'I' :
    
      (* 'DIV' *)
      
      IF lexeme = div THEN
        RETURN Token.Div
      END (* IF *)

    | 'F' :

      (* 'FFI' *)
      
      IF lexeme = ffi THEN
        RETURN Token.Ffi
      END (* IF *)

    | 'O' :
     
      (* 'MOD' *)
      
      IF lexeme = mod THEN
          RETURN Token.Mod

      (* 'NOT' *)
      
      ELSIF lexeme = not THEN
        RETURN Token.Not
      END (* IF *)

    | 'S' :

      (* 'MSG' *)
      
      IF lexeme = msg THEN
        RETURN Token.Msg
      END (* IF *)

    | 'U' :

      (* 'OUT' *)
      
      IF lexeme = out THEN
        RETURN Token.Out
      END (* IF *)
    
    END (* CASE *)
  
  | 4 :
    CASE String.charAtIndex(lexeme, 0) OF
      'A' :

      (* 'ADDR' *)
      
      IF lexeme = addr THEN
        RETURN Token.Addr
      END (* IF *)

    | 'D' :

      (* 'DETM' *)
      
      IF lexeme = detm THEN
        RETURN Token.Detm
      END (* IF *)

    | 'F' :

      (* 'FROM' *)
      
      IF lexeme = from THEN
        RETURN Token.From
      END (* IF *)

    | 'I' :
      
      (* 'INFO' *)
      
      IF lexeme = info THEN
        RETURN Token.Info
      END (* IF *)

    | 'P' :
 
      (* 'PURE' *)
      
      IF lexeme = pure THEN
        RETURN Token.Pure
      END (* IF *)

    | 'T' :
      
      (* 'TELL' *)
      
      IF lexeme = tell THEN
        RETURN Token.Tell
      END (* IF *)
      
    | 'W' :
      
      (* 'WARN' *)
      
      IF lexeme = warn THEN
        RETURN Token.Warn
        
      (* 'WEAK' *)
      
      ELSIF lexeme = weak THEN
        RETURN Token.Weak
      END (* IF *)
      
    END (* CASE *)
  
  | 5 :
    CASE String.charAtIndex(lexeme, 0) OF
      'A' :

      (* 'ALIGN' *)
      
      IF lexeme = align THEN
        RETURN Token.Align
      END (* IF *)

    | 'E' :
    
      (* 'ERROR' *)
      
      IF lexeme = error THEN
        RETURN Token.Error
      END (* IF *)
    
    | 'F' :
    
      (* 'FATAL' *)
      
      IF lexeme = fatal THEN
        RETURN Token.Fatal
      END (* IF *)
    
    | 'O' :
    
      (* 'OWNER' *)
      
      IF lexeme = owner THEN
        RETURN Token.Owner
      END (* IF *)
    
    | 'R' :
    
      (* 'RANGE' *)
      
      IF lexeme = range THEN
        RETURN Token.Range
      END (* IF *)
    
    | 'U' :
    
      (* 'UNSET' *)
      
      IF lexeme = unset THEN
        RETURN Token.Unset
      END (* IF *)
    
    END (* CASE *)

  | 6 :
    CASE String.charAtIndex(lexeme, 0) OF
      'E' :
    
      (* 'ENDFWD' *)
      
      IF lexeme = endfwd THEN
        RETURN Token.Endfwd
      END (* IF *)

    | 'I' :
    
      (* 'INLINE' *)
      
      IF lexeme = inline THEN
        RETURN Token.Inline
      END (* IF *)

    | 'P' :

      (* 'PACKED' *)
      IF lexeme = packed THEN
        RETURN Token.Packed
      END (* IF *)

    | 'R' :
     
      (* 'RETAIN' *)
      
      IF lexeme = retain THEN
        RETURN Token.Retain
      END (* IF *)

    | 'T' :

      (* 'TICKET' *)
      
      IF lexeme = ticket THEN
        RETURN Token.Ticket
      END (* IF *)
    
    END (* CASE *)

  | 7 :
    CASE String.charAtIndex(lexeme, 3) OF
      'D' :
    
      (* 'FFIDENT' *)
      
      IF lexeme = ffident THEN
        RETURN Token.Ffident
      END (* IF *)
      
    | 'W' :
    
      (* 'FORWARD' *)
      
      IF lexeme = forward THEN
        RETURN Token.Forward
      END (* IF *)
      
    | 'B' :
    
      (* 'PADBITS' *)
      
      IF lexeme = padbits THEN
        RETURN Token.Padbits
      END (* IF *)
       
    | 'S' :
    
      (* 'PRESETS' *)
      
      IF lexeme = presets THEN
        RETURN Token.Presets
      END (* IF *)
      
    | 'E' :
    
      (* 'RELEASE' *)
      
      IF lexeme = release THEN
        RETURN Token.Release
      END (* IF *)
      
    | 'I' :
    
      (* 'VARIANT' *)
      
      IF lexeme = variant THEN
        RETURN Token.Variant
      END (* IF *)
      
    END (* CASE *)
    
  | 8 :
    CASE String.charAtIndex(lexeme, 0) OF
      'A' :
    
      (* 'ANYORDER' *)
      
      IF lexeme = anyorder THEN
        RETURN Token.Anyorder
      END (* IF *)
      
    | 'B' :
    
      (* 'BORROWER' *)
      
      IF lexeme = borrower THEN
        RETURN Token.Borrower
      END (* IF *)

    | 'E' :
    
      (* 'ENCODING' *)
      
      IF lexeme = encoding THEN
        RETURN Token.Encoding
      END (* IF *)

    | 'M' :
    
      (* 'MEMALIGN' *)
      
      IF lexeme = memalign THEN
        RETURN Token.Memalign
      END (* IF *)

    | 'N' :
    
      (* 'NOINLINE' *)
      
      IF lexeme = noinline THEN
        RETURN Token.Noinline
        
      (* 'NORETURN' *)
      
      ELSIF lexeme = noreturn THEN
        RETURN Token.Noreturn
      END (* IF *)

    | 'V' :
    
      (* 'VOLATILE' *)
      
      IF lexeme = volatile THEN
        RETURN Token.Volatile
      END (* IF *)
    
  | 9 :

    (* 'GENERATED' *)
    
    IF lexeme = generated THEN
      RETURN Token.Generated
      
    (* 'PRIVATETO' *)
    
    ELSIF lexeme = privateto THEN
      RETURN Token.Privateto
    END (* IF *)
    
  | 10 :
    CASE String.charAtIndex(lexeme, 0) OF
      'C' :
    
      (* 'CONTIGUOUS' *)
      
      IF lexeme = contiguous THEN
        RETURN Token.Contiguous
      END (* IF *)
      
    | 'D' :
    
      (* 'DEPRECATED' *)
      
      IF lexeme = deprecated THEN
        RETURN Token.Deprecated
      END (* IF *)

    | 'L' :
    
      (* 'LOWLATENCY' *)
      
      IF lexeme = lowlatency THEN
        RETURN Token.Lowlatency
      END (* IF *)
    
  | 12 :

    (* 'SINGLEASSIGN' *)
    
    IF lexeme = singleassign THEN
      RETURN Token.Singleassign
    END (* IF *)

  END; (* CASE *)

  (* no match *)
  RETURN defaultToken
END tokenForLexeme;


PROCEDURE lexemeForToken ( token : TokenT ) : StringT;
(* If token represents a reserved word, an interned string with its corresponding
   lexeme is returned, otherwise NIL is returned. *)

BEGIN
  IF Token.isResword(token) THEN
    RETURN lexeme[token]
  ELSE
    RETURN NIL
  END (* IF *)
END lexemeForToken;


BEGIN (* initialise lexemes *)
  abi := String.forArray("ABI");
  lexeme[Token.Abi] := abi;

  and := String.forArray("AND");
  lexeme[Token.And] := and;

  addr := String.forArray("ADDR");
  lexeme[Token.Addr] := addr;

  aligm := String.forArray("ALIGN");
  lexeme[Token.Align] := align;

  anyorder := String.forArray("ANYORDER");
  lexeme[Token.Anyorder] := anyorder;

  arc := String.forArray("ARC");
  lexeme[Token.Arc] := arc;

  borrower := String.forArray("BORROWER");
  lexeme[Token.Borrower] := borrower;

  cg := String.forArray("CG");
  lexeme[Token.Cg] := cg;

  contiguous := String.forArray("CONTIGUOUS");
  lexeme[Token.Contiguous] := contiguous;

  deprecated := String.forArray("DEPRECATED");
  lexeme[Token.Deprecated] := Deprecated;

  detm := String.forArray("DETM");
  lexeme[Token.Detm] := detm;

  div := String.forArray("DIV");
  lexeme[Token.Div] := div;

  encoding := String.forArray("ENCODING");
  lexeme[Token.Encoding] := encoding;

  endfwd := String.forArray("ENDFWD");
  lexeme[Token.Endfwd] := endfwd;

  error := String.forArray("ERROR");
  lexeme[Token.Error] := error;

  fatal := String.forArray("FATAL");
  lexeme[Token.Fatal] := fatal;

  ffi := String.forArray("FFI");
  lexeme[Token.Ffi] := ffi;

  ffident := String.forArray("FFIDENT");
  lexeme[Token.Ffident] := ffident;

  forward := String.forArray("FORWARD");
  lexeme[Token.Forward] := forward;

  from := String.forArray("FROM");
  lexeme[Token.From] := from;

  generated := String.forArray("GENERATED");
  lexeme[Token.Generated] := generated;

  in := String.forArray("IN");
  lexeme[Token.In] := in;

  info := String.forArray("INFO");
  lexeme[Token.Info] := info;

  inline := String.forArray("INLINE");
  lexeme[Token.Inline] := inline;

  leadbits := String.forArray("LEADBITS");
  lexeme[Token.Leadbits] := leadbits;

  lowlatency := String.forArray("LOWLATENCY");
  lexeme[Token.Lowlatency] := lowlatency;

  memalign := String.forArray("MEMALIGN");
  lexeme[Token.Memalign] := memalign;

  mod := String.forArray("MOD");
  lexeme[Token.Mod] := mod;

  msg := String.forArray("MSG");
  lexeme[Token.Msg] := msg;

  noinline := String.forArray("NOINLINE");
  lexeme[Token.Noinline] := noinline;

  noreturn := String.forArray("NORETURN");
  lexeme[Token.Noreturn] := noreturn;

  not := String.forArray("NOT");
  lexeme[Token.Not] := not;

  out := String.forArray("OUT");
  lexeme[Token.Out] := out;

  owner := String.forArray("OWNER");
  lexeme[Token.Owner] := owner;

  packed := String.forArray("PACKED");
  lexeme[Token.Packed] := packed;

  padbits := String.forArray("PADBITS");
  lexeme[Token.Padbits] := padbits;

  presets := String.forArray("PRESETS");
  lexeme[Token.Presets] := presets;

  privateto := String.forArray("PRIVATETO");
  lexeme[Token.Privateto] := privateto;

  pure := String.forArray("PURE");
  lexeme[Token.Pure] := pure;

  range := String.forArray("RANGE");
  lexeme[Token.Range] := range;

  release := String.forArray("RELEASE");
  lexeme[Token.Release] := release;

  resident := String.forArray("RESIDENT");
  lexeme[Token.Resident] := resident;

  retain := String.forArray("RETAIN");
  lexeme[Token.Retain] := retain;

  singleassign := String.forArray("SINGLEASSIGN");
  lexeme[Token.Singleassign] := singleassign;

  tell := String.forArray("TELL");
  lexeme[Token.Tell] := tell;

  ticket := String.forArray("TICKET");
  lexeme[Token.Ticket] := ticket;

  unset := String.forArray("UNSET");
  lexeme[Token.Unset] := unset;

  variant := String.forArray("VARIANT");
  lexeme[Token.Variant] := variant;

  volatile := String.forArray("VOLATILE");
  lexeme[Token.Volatile] := volatile;

  warn := String.forArray("WARN");
  lexeme[Token.Warn] := warn;

  weak := String.forArray("WEAK");
  lexeme[Token.Weak] := weak;
END Resword.