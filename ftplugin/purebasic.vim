" ftplugin/purebasic.vim
" Buffer-local settings for PureBasic

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

let s:save_cpo = &cpo
set cpo&vim

" ── Basic buffer settings ─────────────────────────────────────────────────────
setlocal expandtab
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal tabstop=2

" Comments start with ;
setlocal commentstring=;\ %s
setlocal comments=:;

" ── Folding ───────────────────────────────────────────────────────────────────
setlocal foldmethod=syntax

" ── Keyword characters ───────────────────────────────────────────────────────
" Include # so that gd / * works on #Constants
setlocal iskeyword+=#

" ── matchit support (% jumps between If/EndIf, For/Next etc.) ────────────────
if exists("loaded_matchit")
  let b:match_ignorecase = 1
  let b:match_words =
    \ '\<If\>:\<ElseIf\>:\<Else\>:\<EndIf\>,'     .
    \ '\<For\>:\<Next\>,'                           .
    \ '\<ForEach\>:\<Next\>,'                       .
    \ '\<While\>:\<Wend\>,'                         .
    \ '\<Repeat\>:\<Until\>:\<ForEver\>,'           .
    \ '\<Select\>:\<Case\>:\<Default\>:\<EndSelect\>,' .
    \ '\<Procedure\>\|\<ProcedureC\>\|\<ProcedureDLL\>\|\<ProcedureCDLL\>:\<EndProcedure\>,' .
    \ '\<Structure\>:\<EndStructure\>,'             .
    \ '\<StructureUnion\>:\<EndStructureUnion\>,'   .
    \ '\<Interface\>:\<EndInterface\>,'             .
    \ '\<Macro\>:\<EndMacro\>,'                     .
    \ '\<Module\>:\<EndModule\>,'                   .
    \ '\<DeclareModule\>:\<EndDeclareModule\>,'     .
    \ '\<Enumeration\>:\<EndEnumeration\>,'         .
    \ '\<With\>:\<EndWith\>,'                       .
    \ '\<DataSection\>:\<EndDataSection\>,'         .
    \ '\<Import\>\|\<ImportC\>:\<EndImport\>,'      .
    \ '\<CompilerIf\>:\<CompilerElseIf\>:\<CompilerElse\>:\<CompilerEndIf\>,' .
    \ '\<CompilerSelect\>:\<CompilerCase\>:\<CompilerDefault\>:\<CompilerEndSelect\>'
endif

" ── :make integration ─────────────────────────────────────────────────────────
" Set makeprg to the PureBasic compiler if configured
if !empty($PUREBASIC_HOME)
  if has('win32') || has('win64')
    setlocal makeprg=$PUREBASIC_HOME/Compilers/pbcompiler\ \"%\"
  else
    setlocal makeprg=$PUREBASIC_HOME/pbcompiler\ \"%\"
  endif
  " Error format: Error: <file> Line <n> - <message>
  setlocal errorformat=Error:\ %f\ Line\ %l\ -\ %m,Line\ %l\ -\ %m
endif

" ── Restore ───────────────────────────────────────────────────────────────────
let &cpo = s:save_cpo
unlet s:save_cpo
