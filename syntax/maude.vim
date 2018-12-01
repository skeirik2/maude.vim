" Vim syntax file
" Language:      Maude <http://maude.cs.uiuc.edu/>
" Maintainer:    Steven N. Severinghaus <sns@severinghaus.org>
" Contributor:   Stephen Skeirik <skeirik2@illinois.edu>
" Last Modified: 2018-12-01
" Version: 0.2

" Quit if syntax file is already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

command! -nargs=+ MaudeHiLink hi def link <args>

syn keyword Todo            TODO contained
syn keyword maudeModule     mod fmod omod endm endfm endm is
syn keyword maudeImports    pr protecting inc including ex extending
syn keyword maudeStatements sort sorts subsort subsorts
syn keyword maudeStatements op ops var vars eq ceq rl crl if
syn match   maudeFlags      "\[.*\]"
syn keyword maudeCommands   red reduce rew rewrite in load sload select
syn match   maudeComment    "\*\*\*.*" contains=Todo
syn match   maudeComment    "---.*" contains=Todo
syn match   maudeOps        "->"
syn match   maudeOps        ":"
syn match   maudeOps        "="
syn match   maudeOps        "\.\s*$"
syn match   maudeOps        "=>"

syn keyword maudeModules    INT FLOAT NAT RAT BOOL QID TRUTH STRING
syn keyword maudeModules    CONVERSION
syn match   maudeModules    "TRUTH-VALUE"
syn match   maudeModules    "EXT-BOOL"
syn match   maudeModules    "QID-LIST"
syn match   maudeModules    "META-MODULE"
syn match   maudeModules    "META-TERM"
syn match   maudeModules    "META-LEVEL"
syn match   maudeModules    "LOOP-MODE"
syn match   maudeModules    "CONFIGURATION"

syn keyword maudeSorts      Bool Int Float Nat Qid
syn keyword maudeSorts      Zero NzNat NzInt NzRat Rat FiniteFloat
syn keyword maudeSorts      String Char FindResult DecFloat

syn keyword maudeAttrs      assoc comm idem iter id left-id right-id strat memo
syn keyword maudeAttrs      prec gather format ctor config object msg frozen
syn keyword maudeAttrs      poly special label metadata owise nonexec variant

" Meta stuff; this may not actually be useful
syn keyword maudeSorts      Sort Kind Type
syn keyword maudeSorts      Constant Variable GroundTerm Term GroundTermList TermList
syn keyword maudeSorts      Assignment Substitution
syn keyword maudeSorts      Context CTermList GTermList
syn keyword maudeSorts      Attr AttrSet
syn keyword maudeSorts      Renaming RenamingSet
syn keyword maudeSorts      ModuleExpression
syn keyword maudeSorts      Import ImportList
syn keyword maudeSorts      SortSet SubsortDecl SubsortDeclSet
syn keyword maudeSorts      TypeList NatList QidList
syn keyword maudeSorts      Hook HookList
syn keyword maudeSorts      OpDecl OpDeclSet EqCondition Condition
syn keyword maudeSorts      MembAx MembAxSet Equation EquationSet
syn keyword maudeSorts      Rule RuleSet
syn keyword maudeSorts      FModule SModule FTheory STheory Module
syn keyword maudeSorts      Bound KindSet
syn keyword maudeSorts      ResultPair ResultTriple Result4Tuple MatchPair
syn keyword maudeSorts      State System
syn keyword maudeSorts      Attribute AttributeSet
syn keyword maudeSorts      Oid Cid Object Msg Configuration
syn match   maudeSorts      "Type\?"
syn match   maudeSorts      "ResultPair\?"
syn match   maudeSorts      "ResultTriple\?"
syn match   maudeSorts      "Result4Tuple\?"
syn match   maudeSorts      "MatchPair\?"
syn match   maudeSorts      "Substitution\?"

" From the BOOL module
syn keyword maudeStatements and or xor not implies

syn keyword maudeLiteral    true false
syn match   maudeLiteral    "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syn match   maudeLiteral    "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syn region  maudeString     start=/\v"/ skip=/\v\\./ end=/\v"/
syn match   maudeQid        "'[^[\]() \t]\+"

MaudeHiLink maudeModule     PreProc
MaudeHiLink maudeImports    PreProc
MaudeHiLink maudeSorts      Type
MaudeHiLink maudeStatements Keyword
MaudeHiLink maudeModules    String
MaudeHiLink maudeComment    Comment
MaudeHiLink maudeOps        Special
MaudeHiLink maudeCommands   Special
MaudeHiLink maudeFlags      PreProc
MaudeHiLink maudeSorts      Type
MaudeHiLink maudeLiteral    Constant
MaudeHiLink maudeString     String
MaudeHiLink maudeQid        Identifier

delcommand MaudeHiLink

let b:current_syntax = "maude"

"EOF vim: tw=78:ft=vim:ts=8
