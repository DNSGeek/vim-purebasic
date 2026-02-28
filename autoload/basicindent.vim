" autoload/basicindent.vim
" Shared indentation logic for PureBasic and SpiderBasic
" Called from indent/purebasic.vim and indent/spiderbasic.vim

" Returns the indent level for the given line number
function! basicindent#GetIndent(lnum) abort
  let l:prev = prevnonblank(a:lnum - 1)
  if l:prev == 0
    return 0
  endif

  let l:prevline = getline(l:prev)
  let l:curline  = getline(a:lnum)
  let l:ind      = indent(l:prev)
  let l:sw       = shiftwidth()

  " Strip inline comments and leading/trailing whitespace
  let l:p = substitute(l:prevline, '\s*;.*$', '', '')
  let l:p = substitute(l:p, '^\s*', '', '')
  let l:p = substitute(l:p, '\s*$', '', '')

  let l:c = substitute(l:curline,  '\s*;.*$', '', '')
  let l:c = substitute(l:c, '^\s*', '', '')
  let l:c = substitute(l:c, '\s*$', '', '')

  " ── Lines that INCREASE indent for the NEXT line ────────────────────────────
  " Match the opening keyword at the start of the previous line (case-insensitive)
  if l:p =~? '^\(If\|ElseIf\|Else\)\b'
        \ || l:p =~? '^\(For\|ForEach\)\b'
        \ || l:p =~? '^\(While\)\b'
        \ || l:p =~? '^\(Repeat\)\b'
        \ || l:p =~? '^\(Select\)\b'
        \ || l:p =~? '^\(Case\|Default\)\b'
        \ || l:p =~? '^\(Procedure\|ProcedureC\|ProcedureDLL\|ProcedureCDLL\)\b'
        \ || l:p =~? '^\(Structure\|StructureUnion\)\b'
        \ || l:p =~? '^\(Interface\)\b'
        \ || l:p =~? '^\(Macro\)\b'
        \ || l:p =~? '^\(Module\|DeclareModule\)\b'
        \ || l:p =~? '^\(Enumeration\)\b'
        \ || l:p =~? '^\(With\)\b'
        \ || l:p =~? '^\(DataSection\)\b'
        \ || l:p =~? '^\(Import\|ImportC\)\b'
        \ || l:p =~? '^\(CompilerIf\|CompilerElseIf\|CompilerElse\|CompilerSelect\|CompilerCase\|CompilerDefault\)\b'
        \ || l:p =~? '^\(EnableJS\)\b'
    let l:ind += l:sw
  endif

  " ── Lines that DECREASE indent for the CURRENT line ─────────────────────────
  if l:c =~? '^\(EndIf\|Else\|ElseIf\)\b'
        \ || l:c =~? '^\(Next\)\b'
        \ || l:c =~? '^\(Wend\)\b'
        \ || l:c =~? '^\(Until\|ForEver\)\b'
        \ || l:c =~? '^\(EndSelect\|Case\|Default\)\b'
        \ || l:c =~? '^\(EndProcedure\)\b'
        \ || l:c =~? '^\(EndStructure\|EndStructureUnion\)\b'
        \ || l:c =~? '^\(EndInterface\)\b'
        \ || l:c =~? '^\(EndMacro\)\b'
        \ || l:c =~? '^\(EndModule\|EndDeclareModule\)\b'
        \ || l:c =~? '^\(EndEnumeration\)\b'
        \ || l:c =~? '^\(EndWith\)\b'
        \ || l:c =~? '^\(EndDataSection\)\b'
        \ || l:c =~? '^\(EndImport\)\b'
        \ || l:c =~? '^\(CompilerEndIf\|CompilerElseIf\|CompilerElse\|CompilerEndSelect\|CompilerCase\|CompilerDefault\)\b'
        \ || l:c =~? '^\(DisableJS\)\b'
    let l:ind -= l:sw
  endif

  return max([0, l:ind])
endfunction
