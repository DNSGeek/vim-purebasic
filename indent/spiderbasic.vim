" indent/spiderbasic.vim
" Indentation for SpiderBasic

if exists("b:did_indent") | finish | endif
let b:did_indent = 1

setlocal indentexpr=basicindent#GetIndent(v:lnum)
setlocal indentkeys=!^F,o,O,=~EndIf,=~Else,=~ElseIf,=~Next,=~Wend,=~Until,=~ForEver
setlocal indentkeys+=,=~EndSelect,=~Case,=~Default,=~EndProcedure,=~EndStructure
setlocal indentkeys+=,=~EndStructureUnion,=~EndInterface,=~EndMacro,=~EndModule
setlocal indentkeys+=,=~EndDeclareModule,=~EndEnumeration,=~EndWith,=~EndDataSection
setlocal indentkeys+=,=~EndImport,=~DisableJS,=~CompilerEndIf,=~CompilerElseIf
setlocal indentkeys+=,=~CompilerElse,=~CompilerEndSelect,=~CompilerCase,=~CompilerDefault
