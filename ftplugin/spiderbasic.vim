" ftplugin/spiderbasic.vim
" Buffer-local settings for SpiderBasic

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
setlocal iskeyword+=#

" ── matchit support ───────────────────────────────────────────────────────────
if exists("loaded_matchit")
  let b:match_ignorecase = 1
  let b:match_words =
    \ '\<If\>:\<ElseIf\>:\<Else\>:\<EndIf\>,'        .
    \ '\<For\>:\<Next\>,'                              .
    \ '\<ForEach\>:\<Next\>,'                          .
    \ '\<While\>:\<Wend\>,'                            .
    \ '\<Repeat\>:\<Until\>:\<ForEver\>,'              .
    \ '\<Select\>:\<Case\>:\<Default\>:\<EndSelect\>,' .
    \ '\<Procedure\>\|\<ProcedureC\>:\<EndProcedure\>,' .
    \ '\<Structure\>:\<EndStructure\>,'                .
    \ '\<StructureUnion\>:\<EndStructureUnion\>,'      .
    \ '\<Interface\>:\<EndInterface\>,'                .
    \ '\<Macro\>:\<EndMacro\>,'                        .
    \ '\<Module\>:\<EndModule\>,'                      .
    \ '\<DeclareModule\>:\<EndDeclareModule\>,'        .
    \ '\<Enumeration\>:\<EndEnumeration\>,'            .
    \ '\<With\>:\<EndWith\>,'                          .
    \ '\<DataSection\>:\<EndDataSection\>,'            .
    \ '\<Import\>\|\<ImportC\>:\<EndImport\>,'         .
    \ '\<EnableJS\>:\<DisableJS\>,'                    .
    \ '\<CompilerIf\>:\<CompilerElseIf\>:\<CompilerElse\>:\<CompilerEndIf\>,' .
    \ '\<CompilerSelect\>:\<CompilerCase\>:\<CompilerDefault\>:\<CompilerEndSelect\>'
endif

" ── :make integration ─────────────────────────────────────────────────────────
if !empty($SPIDERBASIC_HOME)
  if has('win32') || has('win64')
    setlocal makeprg=$SPIDERBASIC_HOME/Compilers/sbcompiler\ \"%\"
  else
    setlocal makeprg=$SPIDERBASIC_HOME/sbcompiler\ \"%\"
  endif
  setlocal errorformat=Error:\ %f\ Line\ %l\ -\ %m,Line\ %l\ -\ %m
endif

" ── Restore ───────────────────────────────────────────────────────────────────
let &cpo = s:save_cpo
unlet s:save_cpo
