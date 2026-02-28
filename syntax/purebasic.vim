" Vim syntax file for PureBasic
" Language:   PureBasic
" Maintainer: You
" Generated from the PureBasic Reference Manual

if exists("b:current_syntax") | finish | endif
let b:current_syntax = "purebasic"

" Case-insensitive — PureBasic is case-insensitive
syn case ignore

" ── Comments ────────────────────────────────────────────────────────────
syn match puComment ";.*$"

" ── Strings ─────────────────────────────────────────────────────────────
syn region puString  start='"'  end='"'  oneline
syn region puString  start='~"' end='"'  oneline contains=puEscape
syn match  puEscape  "\\[nt\"\\]" contained

" ── Numbers ─────────────────────────────────────────────────────────────
syn match puNumber "\$[0-9A-Fa-f]\+"
syn match puNumber "%[01]\+"
syn match puNumber "\<[0-9]\+\(\.\?[0-9]*\)\?\([eE][+-]\?[0-9]\+\)\?\>"

" ── Type suffixes (.i .l .s .d etc.) ────────────────────────────────────
syn match puType "\.[bawuliqfdsc]\b"
syn match puType "\.String\b"

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

" ── Built-in functions (1808 PB / 777 SB, chunked for Vim line limits) ──
syn keyword puBuiltin ACos ACosH AESDecoder AESEncoder ASin ASinH ATan ATan2 ATanH AbortFTPFile AbortHTTP Abs Add3DArchive AddBillboard AddCipherBuffer AddDate AddElement AddEntityAnimationTime AddFingerprintBuffer AddGadgetColumn AddGadgetItem AddGadgetItem3D AddImageFrame AddJSONElement AddJSONMember AddKeyboardShortcut AddMailAttachment AddMailAttachmentData AddMailRecipient AddMapElement AddMaterialLayer AddMeshManualLOD AddNodeAnimationTime AddPackDirectory AddPackFile AddPackMemory AddPathArc AddPathBox AddPathCircle AddPathCurve AddPathEllipse AddPathLine AddPathSegments AddPathText AddSkeletonAnimationKeyFrame AddSplinePoint AddStaticGeometryEntity AddStatusBarField AddSubEntity AddSubMesh AddSysTrayIcon AddTerrainTexture AddVehicleWheel AddVertexPoseReference AddWindowTimer
syn keyword puBuiltin AffectedDatabaseRows AllocateMemory AllocateStructure Alpha AlphaBlend AmbientColor AntialiasingMode ApplyEntityForce ApplyEntityImpulse ApplyEntityTorque ApplyEntityTorqueImpulse ApplyVehicleBrake ApplyVehicleForce ApplyVehicleSteering ArraySize Asc Ascii AttachEntityObject AttachNodeObject AttachRibbonEffect AudioCDLength AudioCDName AudioCDStatus AudioCDTrackLength AudioCDTrackSeconds AudioCDTracks AvailableProgramOutput AvailableSerialPortInput AvailableSerialPortOutput BackColor Base64Decoder Base64DecoderBuffer Base64Encoder Base64EncoderBuffer BeginVectorLayer BillboardGroupCommonDirection BillboardGroupCommonUpVector BillboardGroupID BillboardGroupMaterial BillboardGroupX BillboardGroupY BillboardGroupZ BillboardHeight BillboardLocate BillboardWidth BillboardX BillboardY BillboardZ Bin BindEvent BindGadgetEvent BindMenuEvent BindWebViewCallback Blue BodyPick
syn keyword puBuiltin Box BoxedGradient BuildMeshLOD BuildMeshShadowVolume BuildMeshTangents BuildStaticGeometry BuildTerrain ButtonGadget ButtonGadget3D ButtonImageGadget CGIBuffer CGICookieName CGICookieValue CGIParameterData CGIParameterDataSize CGIParameterName CGIParameterType CGIParameterValue CGIVariable CPUName CalendarGadget CallCFunction CallCFunctionFast CallFunction CallFunctionFast CameraBackColor CameraCustomParameter CameraDirection CameraDirectionX CameraDirectionY CameraDirectionZ CameraFOV CameraFixedYawAxis CameraFollow CameraID CameraLookAt CameraPitch CameraProjectionMode CameraProjectionX CameraProjectionY CameraRange CameraReflection CameraRenderMode CameraRoll CameraViewHeight CameraViewWidth CameraViewX CameraViewY CameraX CameraY CameraYaw CameraZ CanvasGadget CanvasOutput CanvasVectorOutput
syn keyword puBuiltin CatchImage CatchJSON CatchMusic CatchPack CatchSound CatchSprite CatchXML ChangeCurrentElement ChangeGamma ChangeSysTrayIcon CheckBoxGadget CheckBoxGadget3D CheckDatabaseNull CheckFTPConnection CheckFilename CheckObjectVisibility ChildXMLNode Chr Circle CircularGradient ClearBillboards ClearClipboard ClearConsole ClearDebugOutput ClearGadgetItems ClearGadgetItems3D ClearJSONElements ClearJSONMembers ClearList ClearMap ClearScreen ClearSpline ClipOutput ClipPath ClipSprite CloseConsole CloseCryptRandom CloseDatabase CloseDebugOutput CloseFTP CloseFile CloseGadgetList CloseGadgetList3D CloseHelp CloseLibrary CloseNetworkConnection CloseNetworkServer ClosePack ClosePath ClosePreferences CloseProgram CloseScreen CloseSerialPort CloseSubMenu CloseWindow
syn keyword puBuiltin CloseWindow3D CocoaMessage ColorRequester ComboBoxGadget ComboBoxGadget3D CompareArray CompareList CompareMap CompareMemory CompareMemoryString ComposeJSON ComposeXML CompositorEffectParameter CompressMemory ComputeSpline ComputerName ConeTwistJoint ConicalGradient ConnectionID ConsoleColor ConsoleCursor ConsoleError ConsoleLocate ConsoleTitle ContainerGadget ContainerGadget3D ConvertCoordinateX ConvertCoordinateY ConvertDate ConvertLocalToWorldPosition ConvertWorldToLocalPosition CopyArray CopyDebugOutput CopyDirectory CopyEntity CopyFile CopyImage CopyLight CopyList CopyMap CopyMaterial CopyMemory CopyMemoryString CopyMesh CopySprite CopyTexture CopyXMLNode Cos CosH CountBillboards CountCGICookies CountCGIParameters CountCPUs CountGadgetItems CountGadgetItems3D
syn keyword puBuiltin CountLibraryFunctions CountMaterialLayers CountProgramParameters CountRegularExpressionGroups CountSplinePoints CountString CreateAnimatedMaterial CreateBillboardGroup CreateBone CreateCamera CreateCapsule CreateCompositorEffect CreateCone CreateCube CreateCubeMapTexture CreateCubicTexture CreateCylinder CreateDataMesh CreateDialog CreateDirectory CreateEntity CreateEntityBody CreateFTPDirectory CreateFile CreateIcoSphere CreateImage CreateImageMenu CreateJSON CreateLensFlareEffect CreateLight CreateLine3D CreateMail CreateMaterial CreateMenu CreateMesh CreateMutex CreateNetworkServer CreateNode CreateNodeAnimation CreateNodeAnimationKeyFrame CreatePack CreateParticleEmitter CreatePasswordHash CreatePlane CreatePopupImageMenu CreatePopupMenu CreatePreferences CreateRegularExpression CreateRenderTexture CreateRibbonEffect CreateSemaphore CreateShader CreateShaderMaterial CreateSkeleton CreateSkeletonAnimation
syn keyword puBuiltin CreateSphere CreateSpline CreateSprite CreateStaticGeometry CreateStatusBar CreateTerrain CreateTerrainBody CreateText3D CreateTexture CreateThread CreateToolBar CreateTorus CreateTube CreateVehicle CreateVehicleBody CreateVertexAnimation CreateVertexPoseKeyFrame CreateVertexTrack CreateWater CreateXML CreateXMLNode CryptRandom CryptRandomData CustomDashPath CustomFilterCallback CustomGradient CustomSortArray CustomSortList DESFingerprint DashPath DatabaseColumnIndex DatabaseColumnName DatabaseColumnSize DatabaseColumnType DatabaseColumns DatabaseDriverDescription DatabaseDriverName DatabaseError DatabaseID DatabaseQuery DatabaseUpdate Date DateGadget DateUTC Day DayOfWeek DayOfYear DebuggerError DebuggerWarning DefaultPrinter DefineTerrainTile Degree Delay DeleteDirectory DeleteElement
syn keyword puBuiltin DeleteFTPDirectory DeleteFTPFile DeleteFile DeleteMapElement DeleteXMLNode DeriveCipherKey DesktopDepth DesktopFrequency DesktopHeight DesktopMouseX DesktopMouseY DesktopName DesktopResolutionX DesktopResolutionY DesktopScaledX DesktopScaledY DesktopUnscaledX DesktopUnscaledY DesktopWidth DesktopX DesktopY DetachEntityObject DetachNodeObject DetachRibbonEffect DialogError DialogGadget DialogID DialogWindow DirectoryEntryAttributes DirectoryEntryDate DirectoryEntryName DirectoryEntrySize DirectoryEntryType DisableEntityBody DisableGadget DisableGadget3D DisableLightShadows DisableMaterialLighting DisableMenuItem DisableParticleEmitter DisableToolBarButton DisableWindow DisableWindow3D DisplayPopupMenu DisplaySprite DisplayTransparentSprite DotPath DoubleClickTime DragFiles DragImage DragOSFormats DragPrivate DragText DraggedItemIndex DrawAlphaImage
syn keyword puBuiltin DrawImage DrawRotatedText DrawText DrawVectorImage DrawVectorParagraph DrawVectorText DrawingBuffer DrawingBufferPitch DrawingBufferPixelFormat DrawingFont DrawingMode EditorGadget EditorGadget3D EjectAudioCD ElapsedMilliseconds Ellipse EllipticalGradient EnableGadgetDrop EnableGraphicalConsole EnableHingeJointAngularMotor EnableManualEntityBoneControl EnableWindowDrop EnableWorldCollisions EnableWorldPhysics EncodeImage EndVectorLayer Engine3DStatus EntityAngularFactor EntityAnimationBlendMode EntityAnimationStatus EntityBonePitch EntityBoneRoll EntityBoneX EntityBoneY EntityBoneYaw EntityBoneZ EntityBoundingBox EntityCollide EntityCubeMapTexture EntityCustomParameter EntityDirection EntityDirectionX EntityDirectionY EntityDirectionZ EntityFixedYawAxis EntityID EntityLinearFactor EntityLookAt EntityParentNode EntityPitch EntityRenderMode EntityRoll EntityVelocity EntityX EntityY
syn keyword puBuiltin EntityYaw EntityZ EnvironmentVariableName EnvironmentVariableValue Eof ErrorAddress ErrorCode ErrorFile ErrorLine ErrorMessage ErrorRegister ErrorTargetAddress EscapeString Event EventClient EventData EventDropAction EventDropBuffer EventDropFiles EventDropImage EventDropPrivate EventDropSize EventDropText EventDropType EventDropX EventDropY EventGadget EventGadget3D EventMenu EventServer EventTimer EventType EventType3D EventWindow EventWindow3D EventlParam EventwParam ExamineAssembly ExamineDatabaseDrivers ExamineDesktops ExamineDirectory ExamineDraggedItems ExamineEnvironmentVariables ExamineFTPDirectory ExamineIPAddresses ExamineJSONMembers ExamineJoystick ExamineKeyboard ExamineLibraryFunctions ExamineMouse ExaminePack ExaminePreferenceGroups ExaminePreferenceKeys ExamineRegularExpression ExamineScreenModes
syn keyword puBuiltin ExamineWorldCollisions ExamineXMLAttributes Exp ExplorerComboGadget ExplorerListGadget ExplorerTreeGadget ExportJSON ExportJSONSize ExportXML ExportXMLSize ExtractJSONArray ExtractJSONList ExtractJSONMap ExtractJSONStructure ExtractRegularExpression ExtractXMLArray ExtractXMLList ExtractXMLMap ExtractXMLStructure FTPDirectoryEntryAttributes FTPDirectoryEntryDate FTPDirectoryEntryName FTPDirectoryEntryRaw FTPDirectoryEntrySize FTPDirectoryEntryType FTPProgress FetchEntityMaterial FetchOrientation FileBuffersSize FileFingerprint FileID FileSeek FileSize FillArea FillMemory FillPath FillVectorOutput FindMapElement FindString Fingerprint FinishBoneAssignment FinishCipher FinishDatabaseQuery FinishDirectory FinishFTPDirectory FinishFastCGIRequest FinishFingerprint FinishHTTP FinishMesh FirstDatabaseRow FirstElement FirstWorldCollisionEntity FlipBuffers FlipCoordinatesX FlipCoordinatesY
syn keyword puBuiltin FlushFileBuffers FlushPreferenceBuffers Fog FontID FontRequester FormatDate FormatNumber FormatXML FrameGadget FrameGadget3D FreeArray FreeBillboardGroup FreeCamera FreeDialog FreeEffect FreeEntity FreeEntityBody FreeEntityJoints FreeFont FreeGadget FreeGadget3D FreeIP FreeImage FreeJSON FreeJoint FreeLight FreeList FreeMail FreeMap FreeMaterial FreeMemory FreeMenu FreeMesh FreeMovie FreeMusic FreeMutex FreeNode FreeNodeAnimation FreeParticleEmitter FreeRegularExpression FreeSemaphore FreeSound FreeSound3D FreeSpline FreeSprite FreeStaticGeometry FreeStatusBar FreeStructure FreeTerrain FreeTerrainBody FreeText3D FreeTexture FreeToolBar FreeXML FrontColor
syn keyword puBuiltin GadgetHeight GadgetHeight3D GadgetID GadgetID3D GadgetItemID GadgetToolTip GadgetToolTip3D GadgetType GadgetType3D GadgetWidth GadgetWidth3D GadgetX GadgetX3D GadgetY GadgetY3D GenericJoint GetActiveGadget GetActiveGadget3D GetActiveWindow GetActiveWindow3D GetClientIP GetClientPort GetClipboardImage GetClipboardText GetCurrentDirectory GetDatabaseBlob GetDatabaseDouble GetDatabaseFloat GetDatabaseLong GetDatabaseQuad GetDatabaseString GetEntityAnimationLength GetEntityAnimationTime GetEntityAnimationWeight GetEntityAttribute GetEntityCollisionGroup GetEntityCollisionMask GetEntityMesh GetEnvironmentVariable GetExtensionPart GetFTPDirectory GetFileAttributes GetFileDate GetFilePart GetFunction GetFunctionEntry GetGadgetAttribute GetGadgetAttribute3D GetGadgetColor GetGadgetData GetGadgetData3D GetGadgetFont GetGadgetItemAttribute GetGadgetItemColor GetGadgetItemData
syn keyword puBuiltin GetGadgetItemData3D GetGadgetItemState GetGadgetItemState3D GetGadgetItemText GetGadgetItemText3D GetGadgetState GetGadgetState3D GetGadgetText GetGadgetText3D GetHomeDirectory GetImageFrame GetImageFrameDelay GetJSONBoolean GetJSONDouble GetJSONElement GetJSONFloat GetJSONInteger GetJSONMember GetJSONQuad GetJSONString GetJointAttribute GetLightColor GetMailAttribute GetMailBody GetMaterialAttribute GetMaterialColor GetMenuItemState GetMenuItemText GetMenuTitleText GetMeshData GetMusicPosition GetMusicRow GetNodeAnimationKeyFramePitch GetNodeAnimationKeyFrameRoll GetNodeAnimationKeyFrameTime GetNodeAnimationKeyFrameX GetNodeAnimationKeyFrameY GetNodeAnimationKeyFrameYaw GetNodeAnimationKeyFrameZ GetNodeAnimationLength GetNodeAnimationTime GetNodeAnimationWeight GetOriginX GetOriginY GetPathPart GetRuntimeDouble GetRuntimeInteger GetRuntimeString GetScriptMaterial GetScriptParticleEmitter GetScriptTexture GetSerialPortStatus GetSoundFrequency GetSoundPosition GetTemporaryDirectory
syn keyword puBuiltin GetTerrainTileHeightAtPoint GetTerrainTileLayerBlend GetToolBarButtonState GetURLPart GetUserDirectory GetVehicleAttribute GetW GetWindowColor GetWindowData GetWindowState GetWindowTitle GetWindowTitle3D GetWorldAttribute GetX GetXMLAttribute GetXMLEncoding GetXMLNodeName GetXMLNodeOffset GetXMLNodeText GetXMLStandalone GetY GetZ GrabDrawingImage GrabImage GrabSprite GradientColor Green HTTPInfo HTTPMemory HTTPProgress HTTPProxy HTTPRequest HTTPRequestMemory HTTPTimeout Hex HideBillboardGroup HideEffect HideEntity HideGadget HideGadget3D HideLight HideMenu HideParticleEmitter HideWindow HideWindow3D HingeJoint HingeJointMotorTarget HostName Hour HyperLinkGadget IPAddressField IPAddressGadget IPString ImageDepth ImageFormat
syn keyword puBuiltin ImageFrameCount ImageGadget ImageGadget3D ImageHeight ImageID ImageOutput ImageVectorOutput ImageWidth Infinity InitAudioCD InitCGI InitEngine3D InitFastCGI InitJoystick InitKeyboard InitMouse InitMovie InitScintilla InitSound InitSprite Inkey Input InputEvent3D InputRequester InsertElement InsertJSONArray InsertJSONList InsertJSONMap InsertJSONStructure InsertString InsertXMLArray InsertXMLList InsertXMLMap InsertXMLStructure InstructionAddress InstructionString Int IntQ IsBillboardGroup IsCamera IsCipher IsDatabase IsDialog IsDirectory IsEffect IsEntity IsFile IsFingerprint IsFont IsFtp IsGadget IsGadget3D IsImage IsInfinity IsInsidePath
syn keyword puBuiltin IsInsideStroke IsJSON IsJoint IsLibrary IsLight IsMail IsMaterial IsMenu IsMesh IsMovie IsMusic IsNaN IsNode IsPack IsParticleEmitter IsPathEmpty IsProgram IsRegularExpression IsRuntime IsScreenActive IsSerialPort IsSound IsSound3D IsSprite IsStaticGeometry IsStatusBar IsSysTrayIcon IsText3D IsTexture IsThread IsToolBar IsWindow IsWindow3D IsXML JSONArraySize JSONErrorLine JSONErrorMessage JSONErrorPosition JSONMemberKey JSONMemberValue JSONObjectSize JSONType JSONValue JoystickAxisX JoystickAxisY JoystickAxisZ JoystickButton JoystickName KeyboardInkey KeyboardMode KeyboardPushed KeyboardReleased KillProgram KillThread LCase
syn keyword puBuiltin LSet LTrim LastElement Left Len LensFlareEffectColor LibraryFunctionAddress LibraryFunctionName LibraryID LightAttenuation LightDirection LightDirectionX LightDirectionY LightDirectionZ LightID LightLookAt LightPitch LightRoll LightX LightY LightYaw LightZ Line LineXY LinearGradient ListIconGadget ListIndex ListSize ListViewGadget ListViewGadget3D LoadFont LoadImage LoadJSON LoadMesh LoadMovie LoadMusic LoadSound LoadSound3D LoadSprite LoadTexture LoadWorld LoadXML Loc LockMutex Lof Log Log10 MDIGadget MailProgress MainXMLNode MakeIPAddress MapKey MapSize MatchRegularExpression MaterialAnimation
syn keyword puBuiltin MaterialBlendingMode MaterialCullingMode MaterialFilteringMode MaterialFog MaterialID MaterialShaderAutoParameter MaterialShaderParameter MaterialShaderTexture MaterialShadingMode MaterialShininess MaterialTextureAliases MemorySize MemoryStatus MemoryStringLength MenuBar MenuHeight MenuID MenuItem MenuTitle MergeLists MeshDirectAdd MeshFace MeshID MeshIndex MeshIndexCount MeshPoseCount MeshPoseName MeshRadius MeshVertex MeshVertexColor MeshVertexCount MeshVertexNormal MeshVertexPosition MeshVertexTangent MeshVertexTextureCoordinate MessageRequester Mid Minute Mod Month MouseButton MouseDeltaX MouseDeltaY MouseLocate MousePick MouseRayCast MouseWheel MouseX MouseY MoveBillboard MoveBillboardGroup MoveCamera MoveElement MoveEntity MoveEntityBone
syn keyword puBuiltin MoveLight MoveMemory MoveNode MoveParticleEmitter MovePathCursor MoveText3D MoveXMLNode MovieAudio MovieHeight MovieInfo MovieLength MovieSeek MovieStatus MovieWidth MusicVolume NaN NetworkClientEvent NetworkServerEvent NewPrinterPage NewVectorPage NextDatabaseDriver NextDatabaseRow NextDirectoryEntry NextDraggedItem NextElement NextEnvironmentVariable NextFTPDirectoryEntry NextIPAddress NextInstruction NextJSONMember NextLibraryFunction NextMapElement NextPackEntry NextPreferenceGroup NextPreferenceKey NextRegularExpressionMatch NextScreenMode NextSelectedFilename NextWorldCollision NextXMLAttribute NextXMLNode NodeAnimationStatus NodeFixedYawAxis NodeID NodeLookAt NodePitch NodeRoll NodeX NodeY NodeYaw NodeZ NormalX NormalY NormalZ NormalizeMesh
syn keyword puBuiltin OSVersion OnErrorCall OnErrorDefault OnErrorExit OnErrorGoto OpenConsole OpenCryptRandom OpenDatabase OpenDatabaseRequester OpenFTP OpenFile OpenFileRequester OpenGLGadget OpenGadgetList OpenGadgetList3D OpenHelp OpenLibrary OpenNetworkConnection OpenPack OpenPreferences OpenScreen OpenSerialPort OpenSubMenu OpenWindow OpenWindow3D OpenWindowedScreen OpenXMLDialog OptionGadget OptionGadget3D OutputDepth OutputHeight OutputWidth PackEntryDate PackEntryName PackEntrySize PackEntryType PanelGadget PanelGadget3D ParentXMLNode Parse3DScripts ParseDate ParseJSON ParseXML ParticleAcceleration ParticleAngle ParticleColorFader ParticleColorRange ParticleEmissionRate ParticleEmitterAngle ParticleEmitterDirection ParticleEmitterID ParticleEmitterX ParticleEmitterY ParticleEmitterZ ParticleMaterial
syn keyword puBuiltin ParticleScaleRate ParticleSize ParticleSpeedFactor ParticleTimeToLive ParticleVelocity PathBoundsHeight PathBoundsWidth PathBoundsX PathBoundsY PathCursorX PathCursorY PathLength PathPointAngle PathPointX PathPointY PathRequester PathSegments PauseAudioCD PauseMovie PauseSound PauseThread PdfVectorOutput PeekA PeekB PeekC PeekD PeekF PeekI PeekL PeekQ PeekS PeekU PeekW PickX PickY PickZ Pitch PlayAudioCD PlayMovie PlayMusic PlaySound PlaySound3D Plot Point PointJoint PointPick PokeA PokeB PokeC PokeD PokeF PokeI PokeL PokeQ PokeS
syn keyword puBuiltin PokeU PokeW PopListPosition PopMapPosition PostEvent Pow PreferenceComment PreferenceGroup PreferenceGroupName PreferenceKeyName PreferenceKeyValue PreviousDatabaseRow PreviousElement PreviousXMLNode Print PrintN PrintRequester PrinterOutput PrinterPageHeight PrinterPageWidth PrinterVectorOutput ProgramExitCode ProgramFilename ProgramID ProgramParameter ProgramRunning ProgressBarGadget ProgressBarGadget3D PurifierGranularity PushListPosition PushMapPosition RGB RGBA RSet RTrim Radian RaiseError Random RandomData RandomSeed RandomizeArray RandomizeList RawKey RayCast RayCollide RayPick ReAllocateMemory ReadAsciiCharacter ReadByte ReadCGI ReadCharacter ReadConsoleData ReadData ReadDouble ReadFile
syn keyword puBuiltin ReadFloat ReadInteger ReadLong ReadPreferenceDouble ReadPreferenceFloat ReadPreferenceInteger ReadPreferenceLong ReadPreferenceQuad ReadPreferenceString ReadProgramData ReadProgramError ReadProgramString ReadQuad ReadSerialPortData ReadString ReadStringFormat ReadUnicodeCharacter ReadWord ReceiveFTPFile ReceiveHTTPFile ReceiveHTTPMemory ReceiveNetworkData Red RefreshDialog RegisterFontFile RegularExpressionError RegularExpressionGroup RegularExpressionGroupLength RegularExpressionGroupPosition RegularExpressionMatchLength RegularExpressionMatchPosition RegularExpressionMatchString RegularExpressionNamedGroup RegularExpressionNamedGroupLength RegularExpressionNamedGroupPosition ReleaseMouse ReloadMaterial RemoveBillboard RemoveEnvironmentVariable RemoveGadgetColumn RemoveGadgetItem RemoveGadgetItem3D RemoveImageFrame RemoveJSONElement RemoveJSONMember RemoveKeyboardShortcut RemoveMailRecipient RemoveMaterialLayer RemovePreferenceGroup RemovePreferenceKey RemoveString RemoveSysTrayIcon RemoveWindowTimer RemoveXMLAttribute RenameFTPFile
syn keyword puBuiltin RenameFile RenderWorld ReplaceRegularExpression ReplaceString ResetCoordinates ResetGradientColors ResetList ResetMap ResetMaterial ResetPath ResetProfiler ResizeBillboard ResizeCamera ResizeGadget ResizeGadget3D ResizeImage ResizeJSONElements ResizeMovie ResizeParticleEmitter ResizeWindow ResizeWindow3D ResolveXMLAttributeName ResolveXMLNodeName RestoreVectorState ResumeAudioCD ResumeMovie ResumeSound ResumeThread ReverseString RibbonEffectColor RibbonEffectWidth Right Roll RootXMLNode RotateBillboardGroup RotateCamera RotateCoordinates RotateEntity RotateEntityBone RotateLight RotateMaterial RotateNode RotateSprite Round RoundBox RunProgram SaveDebugOutput SaveFileRequester SaveImage SaveJSON SaveMesh SaveRenderTexture SaveSprite SaveTerrain SaveVectorState
syn keyword puBuiltin SaveXML ScaleCoordinates ScaleEntity ScaleEntityBone ScaleMaterial ScaleNode ScaleText3D ScintillaGadget ScintillaSendMessage ScreenDepth ScreenHeight ScreenID ScreenModeDepth ScreenModeHeight ScreenModeRefreshRate ScreenModeWidth ScreenOutput ScreenWidth ScrollAreaGadget ScrollAreaGadget3D ScrollBarGadget ScrollBarGadget3D ScrollMaterial Second SecondWorldCollisionEntity SelectElement SelectedFilePattern SelectedFontColor SelectedFontName SelectedFontSize SelectedFontStyle SendFTPFile SendMail SendNetworkData SendNetworkString SerialPortError SerialPortID SerialPortTimeouts ServerID SetActiveGadget SetActiveGadget3D SetActiveWindow SetActiveWindow3D SetClipboardImage SetClipboardText SetCurrentDirectory SetDatabaseBlob SetDatabaseDouble SetDatabaseFloat SetDatabaseLong SetDatabaseNull SetDatabaseQuad SetDatabaseString SetDragCallback SetDropCallback
syn keyword puBuiltin SetEntityAnimationLength SetEntityAnimationTime SetEntityAnimationWeight SetEntityAttribute SetEntityCollisionFilter SetEntityMaterial SetEnvironmentVariable SetFTPDirectory SetFileAttributes SetFileDate SetFrameRate SetGUITheme3D SetGadgetAttribute SetGadgetAttribute3D SetGadgetColor SetGadgetData SetGadgetData3D SetGadgetFont SetGadgetItemAttribute SetGadgetItemColor SetGadgetItemData SetGadgetItemData3D SetGadgetItemImage SetGadgetItemState SetGadgetItemState3D SetGadgetItemText SetGadgetItemText3D SetGadgetState SetGadgetState3D SetGadgetText SetGadgetText3D SetImageFrame SetImageFrameDelay SetJSONArray SetJSONBoolean SetJSONDouble SetJSONFloat SetJSONInteger SetJSONNull SetJSONObject SetJSONQuad SetJSONString SetJointAttribute SetLightColor SetMailAttribute SetMailBody SetMaterialAttribute SetMaterialColor SetMenuItemState SetMenuItemText SetMenuTitleText SetMeshData SetMeshMaterial SetMusicPosition SetNodeAnimationKeyFramePosition
syn keyword puBuiltin SetNodeAnimationKeyFrameRotation SetNodeAnimationKeyFrameScale SetNodeAnimationLength SetNodeAnimationTime SetNodeAnimationWeight SetOrientation SetOrigin SetRenderQueue SetRuntimeDouble SetRuntimeInteger SetRuntimeString SetSerialPortStatus SetSoundFrequency SetSoundPosition SetTerrainTileHeightAtPoint SetTerrainTileLayerBlend SetToolBarButtonState SetURLPart SetVehicleAttribute SetWindowCallback SetWindowColor SetWindowData SetWindowState SetWindowTitle SetWindowTitle3D SetWorldAttribute SetXMLAttribute SetXMLEncoding SetXMLNodeName SetXMLNodeOffset SetXMLNodeText SetXMLStandalone SetupTerrains ShortcutGadget ShowAssemblyViewer ShowCallstack ShowDebugOutput ShowGUI ShowLibraryViewer ShowMemoryViewer ShowProfiler ShowVariableViewer ShowWatchlist Sign SignalSemaphore Sin SinH SkewCoordinates SkyBox SkyDome SliderJoint SmartWindowRefresh SortArray SortList SortStructuredArray
syn keyword puBuiltin SortStructuredList SoundCone3D SoundID3D SoundLength SoundListenerLocate SoundPan SoundRange3D SoundStatus SoundVolume SoundVolume3D Space SpinGadget SpinGadget3D SplinePointX SplinePointY SplinePointZ SplineX SplineY SplineZ SplitList SplitterGadget SpotLightRange SpriteBlendingMode SpriteCollision SpriteDepth SpriteHeight SpriteID SpriteOutput SpritePixelCollision SpriteQuality SpriteWidth Sqr StartAESCipher StartDrawing StartEntityAnimation StartFingerprint StartNodeAnimation StartPrinting StartProfiler StartVectorDrawing StatusBarHeight StatusBarID StatusBarImage StatusBarProgress StatusBarText StickyWindow StopAudioCD StopDrawing StopEntityAnimation StopMovie StopMusic StopNodeAnimation StopPrinting StopProfiler StopSound
syn keyword puBuiltin StopSound3D StopVectorDrawing Str StrD StrF StrU StringByteLength StringField StringFingerprint StringGadget StringGadget3D StrokePath SubMeshCount SvgVectorOutput SwapElements SysTrayIconMenu SysTrayIconToolTip Tan TanH TerrainHeight TerrainLocate TerrainMousePick TerrainRenderMode TerrainTileHeightAtPosition TerrainTileLayerMapSize TerrainTilePointX TerrainTilePointY TerrainTileSize Text3DAlignment Text3DCaption Text3DColor Text3DID Text3DX Text3DY Text3DZ TextGadget TextGadget3D TextHeight TextWidth TextureHeight TextureID TextureOutput TextureWidth ThreadID ThreadPriority ToolBarButtonText ToolBarHeight ToolBarID ToolBarImageButton ToolBarSeparator ToolBarToolTip TrackBarGadget TransformMesh TransformSprite TranslateCoordinates
syn keyword puBuiltin TransparentSpriteColor TreeGadget Trim TruncateFile TryLockMutex TrySemaphore UCase URLDecoder URLEncoder UTF8 UnbindEvent UnbindGadgetEvent UnbindMenuEvent UnbindWebViewCallback UnclipOutput UncompressMemory UncompressPackFile UncompressPackMemory UnescapeString UnlockMutex UpdateEntityAnimation UpdateMesh UpdateMeshBoundingBox UpdateRenderTexture UpdateSplinePoint UpdateTerrain UpdateTerrainTileLayerBlend UpdateVertexPoseReference UseAudioCD UseBriefLZPacker UseCRC32Fingerprint UseDialogOpenGLGadget UseDialogScintillaGadget UseDialogWebGadget UseDialogWebViewGadget UseFLACSoundDecoder UseGIFImageDecoder UseGadgetList UseJPEG2000ImageDecoder UseJPEG2000ImageEncoder UseJPEGImageDecoder UseJPEGImageEncoder UseJcalg1Packer UseLzmaPacker UseMD5Fingerprint UseMySQLDatabase UseNetworkTLS UseODBCDatabase UseOGGSoundDecoder UsePNGImageDecoder UsePNGImageEncoder UsePostgreSQLDatabase UseSHA1Fingerprint UseSHA2Fingerprint UseSHA3Fingerprint
syn keyword puBuiltin UseSQLiteDatabase UseTGAImageDecoder UseTIFFImageDecoder UseTarPacker UseZipPacker UserName Val ValD ValF VectorFont VectorOutputHeight VectorOutputWidth VectorParagraphHeight VectorResolutionX VectorResolutionY VectorSourceCircularGradient VectorSourceColor VectorSourceGradientColor VectorSourceImage VectorSourceLinearGradient VectorTextHeight VectorTextWidth VectorUnit VerifyPasswordHash VertexBoneAssignment VertexPoseReferenceCount WaitFastCGIRequest WaitProgram WaitSemaphore WaitThread WaitWindowEvent WebGadget WebViewExecuteScript WebViewGadget WebViewProxy WindowBounds WindowEvent WindowEvent3D WindowHeight WindowHeight3D WindowID WindowID3D WindowMouseX WindowMouseY WindowOutput WindowVectorOutput WindowWidth WindowWidth3D WindowX WindowX3D WindowY WindowY3D WorldCollisionAppliedImpulse WorldCollisionContact WorldCollisionNormal
syn keyword puBuiltin WorldDebug WorldGravity WorldShadows WriteAsciiCharacter WriteByte WriteCGIData WriteCGIFile WriteCGIHeader WriteCGIString WriteCGIStringN WriteCharacter WriteConsoleData WriteData WriteDouble WriteFloat WriteInteger WriteLong WritePreferenceDouble WritePreferenceFloat WritePreferenceInteger WritePreferenceLong WritePreferenceQuad WritePreferenceString WriteProgramData WriteProgramString WriteProgramStringN WriteQuad WriteSerialPortData WriteSerialPortString WriteString WriteStringFormat WriteStringN WriteUnicodeCharacter WriteWord XMLAttributeName XMLAttributeValue XMLChildCount XMLError XMLErrorLine XMLErrorPosition XMLNodeFromID XMLNodeFromPath XMLNodePath XMLNodeType XMLStatus Yaw Year ZoomSprite

" ── Constants: #Name (matched, not keyworded, because of the # sigil) ───
syn match puConstant "#[A-Za-z_][A-Za-z0-9_]*"

" ── Compiler constants get a distinct highlight ──────────────────────────
syn match puCompilerConst "#PB_Compiler_\w\+"
syn match puCompilerConst "#PB_OS_\w\+"
syn match puCompilerConst "#PB_Processor_\w\+"

" ── Labels (word followed by colon at start of line) ────────────────────
syn match puLabel "^\s*\w\+:"

" ── Highlight links ─────────────────────────────────────────────────────
hi def link puComment                    Comment
hi def link puString                     String
hi def link puEscape                     SpecialChar
hi def link puNumber                     Number
hi def link puType                       Type
hi def link puConditional                Conditional
hi def link puRepeat                     Repeat
hi def link puStatement                  Statement
hi def link puFunction                   Function
hi def link puStorageClass               StorageClass
hi def link puOperator                   Operator
hi def link puDebug                      Debug
hi def link puPreProc                    PreProc
hi def link puBuiltin                    Special
hi def link puConstant                   Constant
hi def link puCompilerConst              Macro
hi def link puLabel                      Label
" ── Folding ───────────────────────────────────────────────────────────────────
" Each major block gets a fold region. Uses transparent so inner highlights
" still apply. matchgroup highlights the open/close keywords themselves.

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
