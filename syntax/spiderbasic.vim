" Vim syntax file for SpiderBasic
" Language:   SpiderBasic
" Maintainer: You
" Generated from the SpiderBasic Reference Manual

if exists("b:current_syntax") | finish | endif
let b:current_syntax = "spiderbasic"

" Case-insensitive — SpiderBasic is case-insensitive
syn case ignore

" ── Comments ────────────────────────────────────────────────────────────
syn match spComment ";.*$"

" ── Strings ─────────────────────────────────────────────────────────────
syn region spString  start='"'  end='"'  oneline
syn region spString  start='~"' end='"'  oneline contains=spEscape
syn match  spEscape  "\\[nt\"\\]" contained

" ── Numbers ─────────────────────────────────────────────────────────────
syn match spNumber "\$[0-9A-Fa-f]\+"
syn match spNumber "%[01]\+"
syn match spNumber "\<[0-9]\+\(\.\?[0-9]*\)\?\([eE][+-]\?[0-9]\+\)\?\>"

" ── Type suffixes (.i .l .s .d etc.) ────────────────────────────────────
syn match spType "\.[bawuliqfdsc]\b"
syn match spType "\.String\b"

" ── Control flow ────────────────────────────────────────────────────────
syn keyword spConditional If Else ElseIf EndIf Select Case Default EndSelect
syn keyword spRepeat For To Step Next ForEach While Wend Repeat Until ForEver Break Continue
syn keyword spStatement Goto Gosub Return End Stop FakeReturn With EndWith Import ImportC EndImport IncludeFile XIncludeFile IncludeBinary IncludePath EnableExplicit DisableExplicit EnableDebugger DisableDebugger

" ── Declarations ────────────────────────────────────────────────────────
syn keyword spFunction Procedure ProcedureC ProcedureDLL ProcedureCDLL EndProcedure ProcedureReturn Declare DeclareC DeclareDLL DeclareCDLL Prototype PrototypeC Macro EndMacro Structure EndStructure StructureUnion EndStructureUnion Extends Interface EndInterface Module EndModule DeclareModule EndDeclareModule UseModule UnuseModule Enumeration EndEnumeration

" ── Storage / variable keywords ─────────────────────────────────────────
syn keyword spStorageClass Define Dim ReDim Global Protected Static Shared Threaded NewList NewMap DataSection EndDataSection Data Read Restore Runtime

" ── Operators ───────────────────────────────────────────────────────────
syn keyword spOperator And Or Not XOr As Align OffsetOf SizeOf TypeOf Swap Bool

" ── Debug ───────────────────────────────────────────────────────────────
syn keyword spDebug Debug DebugLevel CallDebugger

" ── Compiler directives ─────────────────────────────────────────────────
syn keyword spPreProc CompilerIf CompilerElseIf CompilerElse CompilerEndIf CompilerSelect CompilerCase CompilerDefault CompilerEndSelect CompilerError CompilerWarning EnableJS DisableJS

" ── Built-in functions (1808 PB / 777 SB, chunked for Vim line limits) ──
syn keyword spBuiltin ACos ACosH AESDecoder AESEncoder ASin ASinH ATan ATan2 ATanH Abs AccelerometerTime AccelerometerX AccelerometerY AccelerometerZ AddCipherBuffer AddDate AddElement AddFingerprintBuffer AddGadgetColumn AddGadgetItem AddJSONElement AddJSONMember AddKeyboardShortcut AddListMobileItem AddMapElement AddPathArc AddPathBox AddPathCircle AddPathCurve AddPathEllipse AddPathLine AddPathSegments AddScreenShader AddSpriteShader AddTabBarMobileItem AddTimer AddWindowTimer AffectedDatabaseRows AlertMobile AllocateMemory AllocateStructure Alpha AppProductDescription AppProductID AppProductName AppProductPrice ArraySize Asc BackColor Base64Decoder Base64DecoderBuffer Base64Encoder Base64EncoderBuffer BatteryLevel BeginVectorLayer
syn keyword spBuiltin Bin BindEvent BindGadgetEvent BindMenuEvent Blue Box ButtonGadget ButtonImageGadget ButtonMobile CalendarGadget CanvasGadget CanvasOutput CanvasVectorOutput ChangeCurrentElement ChangeNavigatorMobilePage CheckBoxGadget CheckBoxMobile CheckDatabaseNull ChildXMLNode Chr Circle ClearDebugOutput ClearGadgetItems ClearJSONElements ClearJSONMembers ClearList ClearMap ClearScreen ClipSprite CloseDatabase CloseDebugOutput CloseFile CloseGadgetList CloseMobileContainer ClosePath CloseScreen CloseSubMenu CloseWebSocket CloseWindow ComboBoxGadget CompareMemory ComposeJSON ComposeXML CompressMemory CompressString ContainerGadget ContainerMobile ConvertCoordinateX ConvertCoordinateY CopyArray CopyImage CopyList CopyMap CopySprite Cos
syn keyword spBuiltin CosH CountGadgetItems CountProgramParameters CountString CreateDialog CreateFile CreateImage CreateImageMenu CreateJSON CreateMenu CreatePopupImageMenu CreatePopupMenu CreateRegularExpression CreateSprite CreateToolBar CreateXML CreateXMLNode CustomDashPath DashPath DatabaseColumnIndex DatabaseColumnName DatabaseColumns DatabaseError DatabaseID DatabaseQuery DatabaseUpdate Date DateGadget Day DayOfWeek DayOfYear Degree DeleteElement DeleteMapElement DeleteXMLNode DesktopDepth DesktopFrequency DesktopHeight DesktopMouseX DesktopMouseY DesktopName DesktopResolutionX DesktopResolutionY DesktopScaledX DesktopScaledY DesktopUnscaledX DesktopUnscaledY DesktopWidth DesktopX DesktopY DeviceAlwaysOn DeviceBrightness DeviceInfo DialogError DialogGadget
syn keyword spBuiltin DialogID DialogWindow DisableGadget DisableMenuItem DisableMobile DisableToolBarButton DisableWindow DisplayPopupMenu DisplaySprite DisplayTransparentSprite DotPath DrawImage DrawText DrawVectorImage DrawVectorText DrawingFont DrawingMode EditorGadget ElapsedMilliseconds Ellipse EncodeImage EndVectorLayer Eof Event EventData EventGadget EventMenu EventMobile EventString EventTimer EventType EventWebSocket EventWindow ExamineAppProducts ExamineDesktops ExamineJSONMembers ExamineJoystick ExamineKeyboard ExamineMouse ExamineTouchScreen ExamineXMLAttributes Exp ExportDatabase ExportDatabaseMemory ExportFile ExportFileMemory ExportImage ExportJSON ExportXML ExtractJSONArray ExtractJSONList ExtractJSONMap ExtractJSONStructure ExtractRegularExpression FetchAppProducts
syn keyword spBuiltin FetchData FileID FileProgress FileSeek FillPath FillVectorOutput FindMapElement FindString Fingerprint FinishCipher FinishDatabaseQuery FinishFingerprint FirstDatabaseRow FirstElement FlipBuffers FontID FormatDate FormatNumber FrameGadget FreeArray FreeDialog FreeFont FreeGadget FreeImage FreeJSON FreeList FreeMap FreeMemory FreeMenu FreeMobile FreeRegularExpression FreeSound FreeSprite FreeStructure FreeToolBar FreeXML FrontColor FullScreen GadgetHeight GadgetID GadgetToolTip GadgetType GadgetWidth GadgetX GadgetY GeolocationAltitude GeolocationHeading GeolocationLatitude GeolocationLongitude GeolocationSpeed GeolocationTime GetActiveGadget GetActiveWindow GetDatabaseBlob GetDatabaseDouble
syn keyword spBuiltin GetDatabaseFloat GetDatabaseLong GetDatabaseQuad GetDatabaseString GetGadgetAttribute GetGadgetColor GetGadgetData GetGadgetItemAttribute GetGadgetItemData GetGadgetItemState GetGadgetItemText GetGadgetState GetGadgetText GetJSONBoolean GetJSONDouble GetJSONElement GetJSONFloat GetJSONInteger GetJSONMember GetJSONQuad GetJSONString GetMenuItemText GetMenuTitleText GetMobileAttribute GetMobileState GetMobileText GetRuntimeDouble GetRuntimeInteger GetRuntimeString GetSoundPosition GetToolBarButtonState GetWindowColor GetWindowData GetWindowTitle GetXMLAttribute GetXMLEncoding GetXMLNodeName GetXMLNodeOffset GetXMLNodeText GetXMLStandalone GrabImage Green HTTPRequest Hex HideGadget HideWindow Hour HtmlMobile HyperLinkGadget IconMobile ImageDepth ImageFormat ImageGadget ImageHeight ImageID
syn keyword spBuiltin ImageMobile ImageOutput ImageVectorOutput ImageWidth Infinity InitJoystick InitKeyboard InitMouse InitSound InitSprite InputMobile InputRequester InsertElement InsertJSONArray InsertJSONList InsertJSONMap InsertJSONStructure InsertString Int IntQ IsDatabase IsDialog IsFile IsFingerprint IsFont IsGadget IsImage IsInfinity IsInsidePath IsJSON IsMenu IsMobile IsNaN IsPathEmpty IsRegularExpression IsRuntime IsScreenActive IsSound IsSprite IsToolBar IsWebSocket IsWindow IsXML JSONArraySize JSONErrorLine JSONErrorMessage JSONErrorPosition JSONMemberKey JSONMemberValue JSONObjectSize JSONType JSONValue JoystickAxisX JoystickAxisY JoystickAxisZ
syn keyword spBuiltin JoystickButton JoystickName KeyboardInkey KeyboardPushed KeyboardReleased LCase LSet LTrim LastElement Left Len Line LineXY ListIconGadget ListIndex ListMobile ListSize ListViewGadget LoadFont LoadImage LoadJSON LoadScript LoadSound LoadSprite LoadXML Loc Lof Log Log10 MainXMLNode MapKey MapSize MatchRegularExpression MemorySize MenuBar MenuID MenuItem MenuTitle MergeLists MessageRequester Mid Minute MobileStyle Mod Month MouseButton MouseDeltaX MouseDeltaY MouseLocate MouseWheel MouseX MouseY MoveElement MovePathCursor NaN
syn keyword spBuiltin NavigatorMobile NextAppProduct NextDatabaseRow NextElement NextJSONMember NextMapElement NextSelectedFile NextXMLAttribute NextXMLNode OpenDatabase OpenFile OpenFileRequester OpenGadgetList OpenScreen OpenSubMenu OpenWebSocket OpenWindow OpenWindowedScreen OpenXMLDialog OptionGadget OptionMobile OutputDepth OutputHeight OutputWidth PanelGadget ParentXMLNode ParseDate ParseJSON ParseXML PathBoundsHeight PathBoundsWidth PathBoundsX PathBoundsY PathCursorX PathCursorY PathLength PathPointAngle PathPointX PathPointY PathSegments PauseSound PeekA PeekB PeekC PeekD PeekF PeekL PeekS PeekU PeekW PlaySound Plot Point PokeA PokeB
syn keyword spBuiltin PokeC PokeD PokeF PokeL PokeS PokeU PokeW PopListPosition PopMapPosition PostEvent Pow PreviousElement PreviousXMLNode ProgramParameter ProgressBarGadget ProgressBarMobile PurchaseAppProduct PushListPosition PushMapPosition RGB RGBA RSet RTrim Radian Random RandomSeed RandomizeArray RandomizeList ReAllocateMemory ReadAsciiCharacter ReadByte ReadCharacter ReadData ReadDouble ReadFile ReadFloat ReadInteger ReadLong ReadQuad ReadString ReadStringFormat ReadUnicodeCharacter ReadWord Red RefreshDialog RegisterAppProduct RegularExpressionError ReleaseMouse RemoveGadgetColumn RemoveGadgetItem RemoveJSONElement RemoveJSONMember RemoveKeyboardShortcut RemoveScreenShader RemoveSpriteShader
syn keyword spBuiltin RemoveString RemoveTimer RemoveWindowTimer RemoveXMLAttribute ReplaceRegularExpression ReplaceString ResetCoordinates ResetList ResetMap ResetPath ResizeGadget ResizeImage ResizeJSONElements ResizeScreen ResizeWindow ResolveXMLAttributeName ResolveXMLNodeName RestoreVectorState ResumeSound ReverseString Right RootXMLNode RotateCoordinates RotateSprite Round RoundBox SaveVectorState ScaleCoordinates ScreenDepth ScreenHeight ScreenShaderAttribute ScreenWidth ScrollAreaGadget Second SelectElement SelectedFileID SelectedFileName SendWebSocketData SendWebSocketString SetActiveGadget SetActiveWindow SetClipboardText SetDatabaseBlob SetDatabaseDouble SetDatabaseFloat SetDatabaseLong SetDatabaseNull SetDatabaseQuad SetDatabaseString SetFrameRate SetGadgetAttribute SetGadgetColor SetGadgetData SetGadgetFont SetGadgetItemAttribute
syn keyword spBuiltin SetGadgetItemData SetGadgetItemImage SetGadgetItemState SetGadgetItemText SetGadgetState SetGadgetText SetJSONArray SetJSONBoolean SetJSONDouble SetJSONFloat SetJSONInteger SetJSONNull SetJSONObject SetJSONQuad SetJSONString SetMenuItemText SetMenuTitleText SetMobileAttribute SetMobileState SetMobileText SetRuntimeDouble SetRuntimeInteger SetRuntimeString SetSoundPosition SetToolBarButtonState SetWindowColor SetWindowData SetWindowTitle SetXMLAttribute SetXMLEncoding SetXMLNodeOffset SetXMLNodeText SetXMLStandalone ShowDebugOutput ShowMobile Sign Sin SinH SkewCoordinates SortArray SortList SoundLength SoundPan SoundStatus SoundVolume Space SpinGadget SplashScreenControl SplitList SplitterGadget SplitterMobile SpriteCollision SpriteDepth SpriteHeight SpriteOutput
syn keyword spBuiltin SpritePixelCollision SpriteQuality SpriteShaderAttribute SpriteWidth Sqr StartAESCipher StartAccelerometer StartDrawing StartFingerprint StartGeolocation StartVectorDrawing StickyWindow StopAccelerometer StopDrawing StopGeolocation StopSound StopVectorDrawing Str StrD StrF StrU StringField StringFingerprint StringGadget StrokePath SwapElements SwitchMobile TabBarMobile Tan TanH TextGadget TextHeight TextMobile TextWidth ToolBarHeight ToolBarID ToolBarImageButton ToolBarMobile ToolBarSeparator ToolBarToolTip TouchDeltaX TouchDeltaY TouchScreenPushed TouchX TouchY TrackBarGadget TrackBarMobile TranslateCoordinates TreeGadget Trim UCase URLDecoder URLEncoder UnbindEvent UnbindGadgetEvent
syn keyword spBuiltin UnbindMenuEvent UncompressMemory UncompressString UseCRC32Fingerprint UseGadgetList UseMD5Fingerprint UseSHA1Fingerprint UseSHA2Fingerprint UseSHA3Fingerprint Val ValD ValF VectorFont VectorOutputHeight VectorOutputWidth VectorResolutionX VectorResolutionY VectorSourceCircularGradient VectorSourceColor VectorSourceGradientColor VectorSourceLinearGradient VectorTextHeight VectorTextWidth VectorUnit VibrateDevice WebGadget WindowBounds WindowHeight WindowID WindowMouseX WindowMouseY WindowOpacity WindowWidth WindowX WindowY WriteAsciiCharacter WriteByte WriteCharacter WriteData WriteDouble WriteFloat WriteInteger WriteLong WriteQuad WriteString WriteStringFormat WriteStringN WriteUnicodeCharacter WriteWord XMLAttributeName XMLAttributeValue XMLChildCount XMLError XMLErrorLine XMLErrorPosition
syn keyword spBuiltin XMLNodeFromID XMLNodeFromPath XMLNodePath XMLNodeType XMLStatus Year ZoomSprite

" ── Constants: #Name (matched, not keyworded, because of the # sigil) ───
syn match spConstant "#[A-Za-z_][A-Za-z0-9_]*"

" ── Compiler constants get a distinct highlight ──────────────────────────
syn match spCompilerConst "#PB_Compiler_\w\+"
syn match spCompilerConst "#PB_OS_\w\+"
syn match spCompilerConst "#PB_Processor_\w\+"

" ── Labels (word followed by colon at start of line) ────────────────────
syn match spLabel "^\s*\w\+:"

" ── Inline JavaScript (lines starting with !) ───────────────────────────
syn match spInlineJS "^\s*!.*$"

" ── Highlight links ─────────────────────────────────────────────────────
hi def link spComment                    Comment
hi def link spString                     String
hi def link spEscape                     SpecialChar
hi def link spNumber                     Number
hi def link spType                       Type
hi def link spConditional                Conditional
hi def link spRepeat                     Repeat
hi def link spStatement                  Statement
hi def link spFunction                   Function
hi def link spStorageClass               StorageClass
hi def link spOperator                   Operator
hi def link spDebug                      Debug
hi def link spPreProc                    PreProc
hi def link spBuiltin                    Special
hi def link spConstant                   Constant
hi def link spCompilerConst              Macro
hi def link spLabel                      Label
hi def link spInlineJS                   Special
" ── Folding ───────────────────────────────────────────────────────────────────

syn region spFoldProcedure
  \ matchgroup=spFunction
  \ start="\<Procedure\(C\)\?\>" end="\<EndProcedure\>"
  \ fold transparent keepend

syn region spFoldIf
  \ matchgroup=spConditional
  \ start="\<If\>" end="\<EndIf\>"
  \ fold transparent keepend

syn region spFoldFor
  \ matchgroup=spRepeat
  \ start="\<For\>\|\<ForEach\>" end="\<Next\>"
  \ fold transparent keepend

syn region spFoldWhile
  \ matchgroup=spRepeat
  \ start="\<While\>" end="\<Wend\>"
  \ fold transparent keepend

syn region spFoldRepeat
  \ matchgroup=spRepeat
  \ start="\<Repeat\>" end="\<\(Until\|ForEver\)\>"
  \ fold transparent keepend

syn region spFoldSelect
  \ matchgroup=spConditional
  \ start="\<Select\>" end="\<EndSelect\>"
  \ fold transparent keepend

syn region spFoldStructure
  \ matchgroup=spFunction
  \ start="\<Structure\>" end="\<EndStructure\>"
  \ fold transparent keepend

syn region spFoldMacro
  \ matchgroup=spFunction
  \ start="\<Macro\>" end="\<EndMacro\>"
  \ fold transparent keepend

syn region spFoldModule
  \ matchgroup=spFunction
  \ start="\<\(Declare\)\?Module\>" end="\<End\(Declare\)\?Module\>"
  \ fold transparent keepend

syn region spFoldWith
  \ matchgroup=spStatement
  \ start="\<With\>" end="\<EndWith\>"
  \ fold transparent keepend

syn region spFoldJS
  \ matchgroup=spPreProc
  \ start="\<EnableJS\>" end="\<DisableJS\>"
  \ fold transparent keepend

syn region spFoldCompilerIf
  \ matchgroup=spPreProc
  \ start="\<CompilerIf\>" end="\<CompilerEndIf\>"
  \ fold transparent keepend
