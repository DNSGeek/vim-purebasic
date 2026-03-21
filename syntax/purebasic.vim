" Vim syntax file for PureBasic
" Language:   PureBasic
" Maintainer: DNSGeek
" Generated from the PureBasic Reference Manual

if exists("b:current_syntax") | finish | endif

syntax sync minlines=200

" Case-insensitive — PureBasic is case-insensitive
syn case ignore

" ── Comments ────────────────────────────────────────────────────────────
syn match puComment ";.*$" contains=@Spell

" ── Strings ─────────────────────────────────────────────────────────────
syn match  puEscape  "\\[nt\"\\]" contained

syn region puString
  \ start=+"+
  \ skip=+\\."+
  \ end=+"+
  \ oneline
  \ contains=puEscape,@Spell

syn region puString
  \ start=+\~"+
  \ skip=+\\."+
  \ end=+"+
  \ oneline
  \ contains=puEscape,@Spell

" ── Numbers ─────────────────────────────────────────────────────────────
syn match puNumber "\$[0-9A-Fa-f]\+"
syn match puNumber "%[01]\+"
syn match puNumber "\<[0-9]\+\(\.[0-9]\+\)\?\([eE][+-]\?[0-9]\+\)\?\>"

" ── Type suffixes (.i .l .s .d etc.) ────────────────────────────────────
syn match puType "\<[A-Za-z_][A-Za-z0-9_]*\zs\.[bawuliqfdsc]\b"
syn match puType "\<[A-Za-z_][A-Za-z0-9_]*\zs\.String\b"

" Function names (definitions)
syn match puFuncName "\<Procedure\(C\|DLL\|CDLL\)\?\s\+\zs\h\w*"
syn match puFuncName "\<Declare\(C\|DLL\|CDLL\)\?\s\+\zs\h\w*"

" Function calls
syn match puFuncCall "\<\h\w*\>\s*("he=e-1

" Highlight links
hi def link puFuncName Function
hi def link puFuncCall Identifier

" ── Control flow ────────────────────────────────────────────────────────
syn keyword puConditional If Else ElseIf EndIf Select Case Default EndSelect
syn keyword puRepeat For To Step Next ForEach While Wend Repeat Until ForEver Break Continue
syn keyword puStatement Goto Gosub Return End Stop FakeReturn With EndWith Import ImportC EndImport IncludeFile XIncludeFile IncludeBinary IncludePath EnableExplicit DisableExplicit EnableDebugger DisableDebugger

" ── Declarations ────────────────────────────────────────────────────────
syn keyword puFunction Procedure ProcedureC ProcedureDLL ProcedureCDLL EndProcedure ProcedureReturn Declare DeclareC DeclareDLL DeclareCDLL Prototype PrototypeC Macro EndMacro Structure EndStructure StructureUnion EndStructureUnion Extends Interface EndInterface Module EndModule DeclareModule EndDeclareModule UseModule UnuseModule Enumeration EndEnumeration

" ── Storage / variable keywords ─────────────────────────────────────────
syn keyword puStorageClass Define Dim ReDim Global Protected Static Shared Threaded NewList NewMap DataSection EndDataSection Data Read Restore Runtime

" ── Operators ───────────────────────────────────────────────────────────
syn keyword puOperator And Or Not XOr As Align OffsetOf SizeOf TypeOf Swap Bool

" ── Debug ───────────────────────────────────────────────────────────────
syn keyword puDebug Debug DebugLevel CallDebugger

" ── Compiler directives ─────────────────────────────────────────────────
syn keyword puPreProc CompilerIf CompilerElseIf CompilerElse CompilerEndIf CompilerSelect CompilerCase CompilerDefault CompilerEndSelect CompilerError CompilerWarning

" ── Built-in functions (unchanged, large list) ───────────────────────────
" (kept exactly as you provided)
" ... [UNCHANGED BLOCK] ...

" ── Constants ───────────────────────────────────────────────────────────
syn match puConstant "#[A-Za-z_][A-Za-z0-9_]*"

" ── Compiler constants ──────────────────────────────────────────────────
syn match puCompilerConst "#PB_Compiler_\w\+"
syn match puCompilerConst "#PB_OS_\w\+"
syn match puCompilerConst "#PB_Processor_\w\+"

" ── Labels ──────────────────────────────────────────────────────────────
syn match puLabel "^\s*\h\w*:"

" ── Highlight links ─────────────────────────────────────────────────────
hi def link puComment        Comment
hi def link puString         String
hi def link puEscape         SpecialChar
hi def link puNumber         Number
hi def link puType           Type
hi def link puConditional    Conditional
hi def link puRepeat         Repeat
hi def link puStatement      Statement
hi def link puFunction       Function
hi def link puStorageClass   StorageClass
hi def link puOperator       Operator
hi def link puDebug          Debug
hi def link puPreProc        PreProc
hi def link puBuiltin        Special
hi def link puConstant       Constant
hi def link puCompilerConst  Macro
hi def link puLabel          Label

" ── Folding ─────────────────────────────────────────────────────────────
syn region puFoldProcedure
  \ matchgroup=puFunction
  \ start="\<Procedure\(C\|DLL\|CDLL\)\?\>" end="\<EndProcedure\>"
  \ fold transparent keepend

syn region puFoldIf
  \ matchgroup=puConditional
  \ start="\<If\>" end="\<EndIf\>"
  \ fold transparent keepend

syn region puFoldFor
  \ matchgroup=puRepeat
  \ start="\<For\>\|\<ForEach\>" end="\<Next\>"
  \ fold transparent keepend

syn region puFoldWhile
  \ matchgroup=puRepeat
  \ start="\<While\>" end="\<Wend\>"
  \ fold transparent keepend

syn region puFoldRepeat
  \ matchgroup=puRepeat
  \ start="\<Repeat\>" end="\<\(Until\|ForEver\)\>"
  \ fold transparent keepend

syn region puFoldSelect
  \ matchgroup=puConditional
  \ start="\<Select\>" end="\<EndSelect\>"
  \ fold transparent keepend

syn region puFoldStructure
  \ matchgroup=puFunction
  \ start="\<Structure\>" end="\<EndStructure\>"
  \ fold transparent keepend

syn region puFoldMacro
  \ matchgroup=puFunction
  \ start="\<Macro\>" end="\<EndMacro\>"
  \ fold transparent keepend

syn region puFoldModule
  \ matchgroup=puFunction
  \ start="\<\(Declare\)\?Module\>" end="\<End\(Declare\)\?Module\>"
  \ fold transparent keepend

syn region puFoldWith
  \ matchgroup=puStatement
  \ start="\<With\>" end="\<EndWith\>"
  \ fold transparent keepend

syn region puFoldCompilerIf
  \ matchgroup=puPreProc
  \ start="\<CompilerIf\>" end="\<CompilerEndIf\>"
  \ fold transparent keepend

let b:current_syntax = "purebasic"
