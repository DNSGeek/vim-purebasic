" Vim syntax file
" Language: PureBasic v6.20
" Maintainer: Thomas Knox
" Latest Revision: 06 Mar 2025

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "purebasic"

" Keywords
syntax keyword pureBasicLanguageKeywords Gosub Return FakeReturn Goto
syntax keyword pureBasicLanguageKeywords DataSection EndDataSection
syntax keyword pureBasicLanguageKeywords Data Restore Read
syntax keyword pureBasicLanguageKeywords Define Dim ReDimr Global
syntax keyword pureBasicLanguageKeywords Enumeration EnumerationBinary EndEnumeration
syntax keyword pureBasicLanguageKeywords Global NewList NewMap Protected
syntax keyword pureBasicLanguageKeywords Threaded Import
syntax keyword pureBasicLanguageKeywords VariableName FunctionName EndImport
syntax keyword pureBasicLanguageKeywords IncludeFile XIncludeFile IncludeBinary
syntax keyword pureBasicLanguageKeywords IncludePath Macro EndMacro
syntax keyword pureBasicLanguageKeywords UndefineMacro MacroExpandedCount
syntax keyword pureBasicLanguageKeywords DeclareModule EndDeclareModule
syntax keyword pureBasicLanguageKeywords Module EndModule
syntax keyword pureBasicLanguageKeywords UseModule UnUseModule
syntax keyword pureBasicLanguageKeywords End Swap Print With EndWith
syntax keyword pureBasicLanguageKeywords Interface EndInterface
syntax keyword pureBasicLanguageKeywords Str Chr
highlight link pureBasicLanguageKeywords Keyword

syntax keyword pureBasicFunction Procedure EndProcedure ProcedureReturn
highlight link pureBasicFunction Function

syntax keyword pureBasicConditional If ElseIf Else EndIf
syntax keyword pureBasicConditional Select Case Default EndSelect
highlight link pureBasicConditional Conditional

syntax keyword pureBasicStructure Shared Static Structure Extends
syntax keyword pureBasicStructure Align EndStructure
syntax keyword pureBasicStructure StructureUnion EndStructureUnion
highlight link pureBasicStructure Structure

syntax keyword pureBasicDebug CallDebugger Debug DebugLevel
syntax keyword pureBasicDebug DisableDebugger EnableDebugger
highlight link pureBasicDebug Debug

syntax keyword pureBasicType Array List Map
syntax keyword pureBasicType Byte Ascii Character Word Unicode Long
syntax keyword pureBasicType Integer Float Quad Double String
highlight link pureBasicType Type

syntax keyword pureBasicPreCondit CompilerIf CompilerElseIf CompilerElse
syntax keyword pureBasicPreCondit CompilerEndIf CompilerSelect CompilerEndSelect
syntax keyword pureBasicPreCondit CompilerCase CompilerDefault
syntax keyword pureBasicPreCondit CompilerError CompilerWarning
syntax keyword pureBasicPreCondit EnableExplicit DisableExplicit
syntax keyword pureBasicPreCondit EnableASM DisableASM
syntax keyword pureBasicPreCondit SizeOf OffsetOf TypeOf Subsystem
syntax keyword pureBasicPreCondit Defined InitializeStructure CopyStructure
syntax keyword pureBasicPreCondit ClearStructure ResetStructure Bool
highlight link pureBasicPreCondit PreCondit

syntax match pureBasicConstant "\v#PB_(\a|_|\d)*"
syntax match pureBasicConstant "\v#(\a|_|\d)*"
highlight link pureBasicConstant Constant

syntax keyword pureBasicRepeat For ForEach To Step Next
syntax keyword pureBasicRepeat Repeat Until Forever
syntax keyword pureBasicRepeat While Wend
syntax keyword pureBasicRepeat Break Continue
highlight link pureBasicRepeat Repeat

syntax match pureBasicComment "\v\;.*$"
highlight link pureBasicComment Comment

syntax match pureBasicOperator "\v\*"
syntax match pureBasicOperator "\v/"
syntax match pureBasicOperator "\v\+"
syntax match pureBasicOperator "\v-"
syntax match pureBasicOperator "\v\%"
syntax match pureBasicOperator "\v\="
syntax match pureBasicOperator "\v\!"
syntax match pureBasicOperator "\v\&"
syntax match pureBasicOperator "\v\<"
syntax match pureBasicOperator "\v\>"
syntax match pureBasicOperator "\v\!\="
syntax match pureBasicOperator "\v\<\="
syntax match pureBasicOperator "\v\>\="
syntax match pureBasicOperator "\v\<\>"
syntax match pureBasicOperator "\v\|\|"
highlight link pureBasicOperator Operator

syntax region pureBasicString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link pureBasicString String

syntax match pureBasicNumber "\v<\d+>"
syntax match pureBasicNumber "\v<\.\d+>"
syntax match pureBasicNumber "\v<\d+\.\d+>"
highlight link pureBasicNumber Number
