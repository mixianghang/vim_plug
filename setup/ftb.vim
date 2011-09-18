" Vim syntax file
" Language:	Visual Basic
" Maintainer:	Tim Chase <vb.vim@tim.thechases.com>
" Former Maintainer:	Robert M. Cortopassi <cortopar@mindspring.com>
"	(tried multiple times to contact, but email bounced)
" Last Change:
"   2005 May 25  Synched with work by Thomas Barthel
"   2004 May 30  Added a few keywords

" This was thrown together after seeing numerous requests on the
" VIM and VIM-DEV mailing lists.  It is by no means complete.
" Send comments, suggestions and requests to the maintainer.

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" Foxtable is case insensitive
syn case ignore
"判断语句
syn keyword ftbConditional If Then ElseIf Else Select Case End
"连接字符
syn keyword ftbOperator AddressOf And ByRef ByVal Eqv Imp In Of
syn keyword ftbOperator Is Like Mod Not Or Xor TypeOf IsNot
"操作符号
syn match ftbOperator "[()+.,\-/*=&]"
syn match ftbOperator "[<>]=\="
syn match ftbOperator "<>"
syn match ftbOperator "\s\+_$"
"逻辑变量
syn keyword ftbBoolean True False
"空值
syn keyword ftbConst Null Nothing
"循环语句
syn keyword ftbRepeat Do For Each Loop Next
syn keyword ftbRepeat Step To Until Wend While
"事件
syn keyword ftbEvents AfterCheckNode AfterCheckRow AfterClose
syn keyword ftbEvents AfterDragColumn AfterEdit AfterExpandNode AfterFreezeColumn
syn keyword ftbEvents AfterLoad AfterLoadTableSetting AfterLockDataRow
syn keyword ftbEvents AfterOpenProject AfterResizeColumn AfterResizeRow
syn keyword ftbEvents AfterSaveProject AfterSelChange AfterSelectNode 
syn keyword ftbEvents AfterSelRangeChange AfterUnLockDataRow BeforeAddDataRow
syn keyword ftbEvents BeforeCheckRow BeforeClose BeforeCloseProject
syn keyword ftbEvents BeforeConnectOuterDataSource BeforeDeleteDataRow
syn keyword ftbEvents BeforeDragColumn BeforeExpandNode BeforeFreezeColumn
syn keyword ftbEvents BeforeLoadInnerTable BeforeLoadOuterTable BeforeLockDataRow
syn keyword ftbEvents BeforeOpenProject BeforeResizeColumn BeforeResizeRow
syn keyword ftbEvents BeforeSaveDataRow BeforeSelChange BeforeSelectNode
syn keyword ftbEvents BeforeSelRangeChange BeforeShowContextMenu 
syn keyword ftbEvents CellButtonClick ChangeCanceled ChangeCommitted ChangeEdit
syn keyword ftbEvents CheckedChanged Closed CurrentChanged CurrentTableChanged
syn keyword ftbEvents DataColChanged DataColChanging DataFormat DataParse
syn keyword ftbEvents DataRowAdded DataRowAdding DataRowDeleted DataRowDeleting
syn keyword ftbEvents DeselectTab DialogLauncherClick DoubleClick DrawCell
syn keyword ftbEvents DropDownClosed Enter FilterRow GlobalVariableChanged
syn keyword ftbEvents KeyDownEdit KeyPressEdit BeforeUnLockDataRow
syn keyword ftbEvents KeyUpEdit Leave ListItemFormat LoadUserSetting
syn keyword ftbEvents MainTableChanged MainTableChanging MouseEnter
syn keyword ftbEvents MouseHover MouseLeave NodeMouseClick
syn keyword ftbEvents NodeMouseDoubleClick NodeMouseNover Popup PositionChanged
syn keyword ftbEvents PrepareEdit PressedButtonChanged PressedChanged
syn keyword ftbEvents SelectedColorChanged SelectedIndexChanged SelectTab
syn keyword ftbEvents SplitterMoved StartEdit SystemIdle TextChanged TimerTick
syn keyword ftbEvents TopicLinkClick ValidateEdit Validating ValueChanged
"函数
syn keyword ftbFunction Abs Array Asc AscB AscW Atn Avg BOF CBool CByte
syn keyword ftbFunction CCur CDate CDbl CInt CLng CSng CStr CVDate CVErr
syn keyword ftbFunction CVar CallByName Cdec Choose Chr ChrB ChrW Command
syn keyword ftbFunction Cos Count CreateObject CurDir DDB Date DateAdd
syn keyword ftbFunction DateDiff DatePart DateSerial DateValue Day Dir
syn keyword ftbFunction DoEvents EOF Environ Error Exp FV FileAttr
syn keyword ftbFunction FileDateTime FileLen FilterFix Fix Format
syn keyword ftbFunction FormatCurrency FormatDateTime FormatNumber
syn keyword ftbFunction FormatPercent FreeFile GetAllStrings GetAttr
syn keyword ftbFunction GetAutoServerSettings GetObject GetSetting Hex
syn keyword ftbFunction Hour IIf IMEStatus IPmt InStr Input InputB
syn keyword ftbFunction InputBox InstrB Int IsArray IsDate IsEmpty IsError
syn keyword ftbFunction IsMissing IsNull IsNumeric IsObject Join LBound
syn keyword ftbFunction LCase LOF LTrim Left LeftB Len LenB LoadPicture
syn keyword ftbFunction LoadResData LoadResPicture LoadResString Loc Log
syn keyword ftbFunction MIRR Max Mid MidB Min Minute Month MonthName
syn keyword ftbFunction MsgBox NPV NPer Now Oct PPmt PV Partition Pmt
syn keyword ftbFunction QBColor RGB RTrim Rate Replace Right RightB Rnd
syn keyword ftbFunction Round SLN SYD Second Seek Sgn Shell Sin Space Spc
syn keyword ftbFunction Split Sqr StDev StDevP StrComp StrConv CheckedIndices
syn keyword ftbFunction StrReverse String Sum Switch Tab Tan Time GetCheckedRows
syn keyword ftbFunction TimeSerial TimeValue Timer Trim TypeName UBound
syn keyword ftbFunction UCase Val Var VarP VarType Weekday WeekdayName
syn keyword ftbFunction Year DataTables DataCols DataRows Tables Cols Rows
syn keyword ftbFunction Functions Eval GetComboListString InStrRev IsNumberic
syn keyword ftbFunction Len CUDate CLDate CCDate GetDigit CUMoney CUNumber
syn keyword ftbFunction CCNumber EUMoney EUNumber Mid MessageBox GetUniqueValues
syn keyword ftbFunction Chars StartsWith FindRow Connections Reports Groups
syn keyword ftbFunction RibbonTabs items Relations FileSys Link Page Controls
syn keyword ftbFunction GetFiles
"方法
syn keyword ftbMethods AboutBox Accept Activate Add AddCustom AddFile
syn keyword ftbMethods AddFromFile AddFromGuid AddFromString
syn keyword ftbMethods AddFromTemplate AddItem AddNew AddToAddInToolbar
syn keyword ftbMethods AddToolboxProgID Append AppendAppendChunk
syn keyword ftbMethods AppendChunk Arrange Assert AsyncRead BatchUpdate
syn keyword ftbMethods BeginQueryEdit BeginTrans Bind BuildPath
syn keyword ftbMethods CanPropertyChange Cancel CancelAsyncRead
syn keyword ftbMethods CancelBatch CancelUpdate CaptureImage CellText
syn keyword ftbMethods CellValue Circle Clear ClearFields ClearSel
syn keyword ftbMethods ClearSelCols ClearStructure Clone Close Cls
syn keyword ftbMethods ColContaining CollapseAll ColumnSize CommitTrans
syn keyword ftbMethods CompactDatabase Compose Connect Copy CopyFile
syn keyword ftbMethods CopyFolder CopyQueryDef Count CreateDatabase
syn keyword ftbMethods CreateDragImage CreateEmbed CreateField
syn keyword ftbMethods CreateFolder CreateGroup CreateIndex CreateLink
syn keyword ftbMethods CreatePreparedStatement CreatePropery CreateQuery
syn keyword ftbMethods CreateQueryDef CreateRelation CreateTableDef
syn keyword ftbMethods CreateTextFile CreateToolWindow CreateUser
syn keyword ftbMethods CreateWorkspace Customize Cut Delete
syn keyword ftbMethods DeleteColumnLabels DeleteColumns DeleteFile
syn keyword ftbMethods DeleteFolder DeleteLines DeleteRowLabels
syn keyword ftbMethods DeleteRows DeselectAll DesignerWindow DoVerb Drag
syn keyword ftbMethods Draw DriveExists Edit EditCopy EditPaste EndDoc
syn keyword ftbMethods EnsureVisible EstablishConnection Execute Exists
syn keyword ftbMethods Expand Export ExportReport ExtractIcon Fetch
syn keyword ftbMethods FetchVerbs FileExists Files FillCache Find
syn keyword ftbMethods FindFirst FindItem FindLast FindNext FindPrevious
syn keyword ftbMethods FolderExists Forward GetAbsolutePathName
syn keyword ftbMethods GetBaseName GetBookmark GetChunk GetClipString
syn keyword ftbMethods GetData GetDrive GetDriveName GetFile GetFileName
syn keyword ftbMethods GetFirstVisible GetFolder GetFormat GetHeader
syn keyword ftbMethods GetLineFromChar GetNumTicks GetParentFolderName
syn keyword ftbMethods GetRows GetSelectedPart GetSelection
syn keyword ftbMethods GetSpecialFolder GetTempName GetText
syn keyword ftbMethods GetVisibleCount GoBack GoForward Hide HitTest
syn keyword ftbMethods HoldFields Idle Import InitializeLabels Insert
syn keyword ftbMethods InsertColumnLabels InsertColumns InsertFile
syn keyword ftbMethods InsertLines InsertObjDlg InsertRowLabels
syn keyword ftbMethods InsertRows Item Keys KillDoc Layout Line Lines
syn keyword ftbMethods LinkExecute LinkPoke LinkRequest LinkSend Listen
syn keyword ftbMethods LoadFile LoadResData LoadResPicture LoadResString
syn keyword ftbMethods LogEvent MakeCompileFile MakeCompiledFile
syn keyword ftbMethods MakeReplica MoreResults Move MoveData MoveFile
syn keyword ftbMethods MoveFirst MoveFolder MoveLast MoveNext
syn keyword ftbMethods MovePrevious NavigateTo NewPage NewPassword
syn keyword ftbMethods NextRecordset OLEDrag OnAddinsUpdate OnConnection
syn keyword ftbMethods OnDisconnection OnStartupComplete Open
syn keyword ftbMethods OpenAsTextStream OpenConnection OpenDatabase
syn keyword ftbMethods OpenQueryDef OpenRecordset OpenResultset OpenURL
syn keyword ftbMethods Overlay PSet PaintPicture PastSpecialDlg Paste
syn keyword ftbMethods PeekData Play Point PopulatePartial PopupMenu
syn keyword ftbMethods Print PrintForm PrintReport PropertyChanged Quit
syn keyword ftbMethods Raise RandomDataFill RandomFillColumns
syn keyword ftbMethods RandomFillRows ReFill Read ReadAll ReadFromFile
syn keyword ftbMethods ReadLine ReadProperty Rebind Refresh RefreshLink
syn keyword ftbMethods RegisterDatabase ReleaseInstance Reload Remove
syn keyword ftbMethods RemoveAddInFromToolbar RemoveAll RemoveItem Render
syn keyword ftbMethods RepairDatabase ReplaceLine Reply ReplyAll Requery
syn keyword ftbMethods ResetCustom ResetCustomLabel ResolveName
syn keyword ftbMethods RestoreToolbar Resync Rollback RollbackTrans
syn keyword ftbMethods RowBookmark RowContaining RowTop Save SaveAs
syn keyword ftbMethods SaveFile SaveToFile SaveToOle1File SaveToolbar
syn keyword ftbMethods Scale ScaleX ScaleY Scroll SelPrint SelectAll
syn keyword ftbMethods SelectPart Send SendData Set SetAutoServerSettings
syn keyword ftbMethods SetData SetFocus SetOption SetSelection SetSize
syn keyword ftbMethods SetText SetViewport Show ShowColor ShowFont
syn keyword ftbMethods ShowHelp ShowOpen ShowPrinter ShowSave
syn keyword ftbMethods ShowWhatsThis SignOff SignOn Size Skip SkipLine
syn keyword ftbMethods Span Split SplitContaining StartLabelEdit
syn keyword ftbMethods StartLogging Stop Synchronize Tag TextHeight
syn keyword ftbMethods TextWidth ToDefaults Trace TwipsToChartPart
syn keyword ftbMethods TypeByChartType URLFor Update UpdateControls
syn keyword ftbMethods UpdateRecord UpdateRow Upto ValidateControls Value
syn keyword ftbMethods WhatsThisMode Write WriteBlankLines WriteLine
syn keyword ftbMethods WriteProperty WriteTemplate ZOrder Text
syn keyword ftbMethods Name Width SelectedText MessageBoxButtons
syn keyword ftbMethods MessageBoxIcon Fill Contains
"状态,
syn keyword ftbStatement Alias AppActivate As Base Beep Begin Call ChDir
syn keyword ftbStatement ChDrive Close Const Date Declare DefBool DefByte
syn keyword ftbStatement DefCur DefDate DefDbl DefDec DefInt DefLng DefObj
syn keyword ftbStatement DefSng DefStr DefVar Deftype DeleteSetting Dim Do
syn keyword ftbStatement Enum Erase Error Event Exit
syn keyword ftbStatement Explicit FileCopy Function Get GoSub
syn keyword ftbStatement GoTo Gosub Implements Kill LSet Let Lib LineInput
syn keyword ftbStatement Load Lock MkDir Name On OnError Open
syn keyword ftbStatement Option Preserve Private Property Public Put RSet
syn keyword ftbStatement RaiseEvent Randomize ReDim Redim Rem Reset Resume
syn keyword ftbStatement Return RmDir SavePicture SaveSetting Seek SendKeys
syn keyword ftbStatement Sendkeys Set SetAttr Static Step Stop Sub Time
syn keyword ftbStatement Type Unload Unlock Until Wend While Width With
syn keyword ftbStatement Write Length OKCancel Enabled  Keys MouseButtons
syn keyword ftbStatement DataRowState LineStyleEnum StateFilterEnum XLS
syn keyword ftbStatement DateGroupEnum AggregateEnum MergeModeEnum UserTypeEnum
syn keyword ftbStatement DialogResult FontStyle VisualStyleEnum AlignHorzEnum 
syn keyword ftbStatement AlignVertEnum SplitBehaviorEnum StackingRulesEnum 
syn keyword ftbStatement BreakEnum ImageAlignVertEnum TextPositionEnum 
syn keyword ftbStatement BarCodeEnum BarDirectionEnum TableHeaderEnum
syn keyword ftbStatement TableFooterEnum ChartTypeEnum CompassEnum FitTypeEnum
syn keyword ftbStatement LinePatternEnum MarkShapeEnum LabelCompassEnum 
syn keyword ftbStatement histogramtypeenum BooleanEnum ImageSizeMode DashStyleEnum
syn keyword ftbStatement LineDirectionEnum HitTypeEnum Color Appearance 
syn keyword ftbStatement audioplaymode BorderStyle ContentAlignment ImageFormat
syn keyword ftbStatement ExtendTypeEnum FlatStyle ContentAlignment ImageLayout
syn keyword ftbStatement datetimeformatenum TableTypeEnum HorizontalAlignment 
syn keyword ftbStatement TextAlignEnum TextImageRelation textimagerelationenum
syn keyword ftbStatement diagonalenum imagealignhorzenum 

"关键字
syn keyword ftbkeyword As Binary ByRef ByVal Date Empty Error Friend Get
syn keyword ftbkeyword Input Is Lock Me New Nothing Null On
syn keyword ftbkeyword Option Optional ParamArray Print Private Property
syn keyword ftbkeyword Public PublicNotCreateable OnNewProcessSingleUse
syn keyword ftbkeyword InSameProcessMultiUse GlobalMultiUse Resume Seek
syn keyword ftbkeyword Set Static Step String Time WithEvents Sender
syn keyword ftbkeyword RowSel Position ColSel ExcludeExistValue Index
syn keyword ftbkeyword BackColor ForeColor courier bold 
"特殊标注
syn keyword ftbTodo contained	TODO

"数据类型
syn keyword ftbTypes Boolean Byte Currency Date Decimal Double Empty
syn keyword ftbTypes Integer Long Object Single String Variant
syn keyword ftbTypes DataTable DataCol DataRow Table Col Row
syn keyword ftbTypes WinForm TreeView Button CheckBox PrintDoc
syn keyword ftbTypes Prt Xls RibbonMenu Process Book Sheet Control
syn keyword ftbTypes List RenderText RenderTable ContextMenu Tab
syn keyword ftbTypes Group Style Form TimeSpan Label Chart NavBar RadioButton
syn keyword ftbTypes Color Forms ListBox ComboList DialogResult ComboBox
syn keyword ftbTypes CheckedComboBox TextBox Pages Links TreeNode ChartBuilder
syn keyword ftbTypes CrossTableBuilder DataTableBuilder GroupTableBuilder 
syn keyword ftbTypes OuterTableBuilder QueryBuilder SQLCrossTableBuilder 
syn keyword ftbTypes SQLGroupTableBuilder SQLCommand connection OpenFileDialog
syn keyword ftbTypes Exporter Filler Font ActiveForm BarCode ChartAxis ColorLabel
syn keyword ftbTypes CheckedListBox ChartSeries DateTimePicker GroupBox
syn keyword ftbTypes NumericComboBox NavPage Painter Panel PictureBox ProgressBar
syn keyword ftbTypes SplitContainer TabPage TopicBar TabControl TopicLink
syn keyword ftbTypes TopicPage WebBrowser FTPClient Graphics Importer DataMap
syn keyword ftbTypes ImageMap MultiDataMap Merger ContextCommandMenu
syn keyword ftbTypes RibbonItem MailSender Pen DataBinding Aggregate LineDef
syn keyword ftbTypes RenderArea RenderEmpty RenderImage RenderLine RenderPie
syn keyword ftbTypes RenderParagraph RenderGraphics relation RtfPrinter Short
syn keyword ftbTypes saveexcelflags
"系统变量
syn keyword ftbDefine Checked CheckBoxes Collapsed BottomPosition StatusBar

"系统属性
syn keyword ftbDefine InstalledPrinters ApplicationMenu ConfigBar CurrentTable
syn keyword ftbDefine User MainTable QAT ProjectFile ProjectPath e
syn keyword ftbDefine ApplicationPath MouseButton ModifierKey
syn keyword ftbDefine VisualStyle Output FileSys Math
syn keyword ftbDefine LightPink Pink Crimson LavenderBlush PaleVioletRed
syn keyword ftbDefine HotPink DeepPink MediumVioletRed Orchid Thistle plum
syn keyword ftbDefine Violet Magenta Fuchsia DarkMagenta Purple MediumOrchid
syn keyword ftbDefine DarkViolet DarkOrchid Indigo BlueViolet MediumPurple 
syn keyword ftbDefine MediumSlateBlue SlateBlue DarkSlateBlue Lavender GhostWhite
syn keyword ftbDefine Blue MediumBlue MidnightBlue DarkBlue Navy RoyalBlue 
syn keyword ftbDefine CornflowerBlue LightSteelBlue LightSlateGray SlateGray 
syn keyword ftbDefine DodgerBlue AliceBlue SteelBlue LightSkyBlue SkyBlue 
syn keyword ftbDefine DeepSkyBlue LightBLue PowDerBlue CadetBlue Azure
syn keyword ftbDefine LightCyan PaleTurquoise Cyan Aqua DarkTurquoise 
syn keyword ftbDefine DarkSlateGray DarkCyan Teal MediumTurquoise LightSeaGreen 
syn keyword ftbDefine Turquoise Aquamarine MediumAquamarine MediumSpringGreen
syn keyword ftbDefine MintCream SpringGreen SeaGreen Honeydew LightGreen 
syn keyword ftbDefine PaleGreen DarkSeaGreen LimeGreen Lime ForestGreen Green 
syn keyword ftbDefine DarkGreen Chartreuse LawnGreen GreenYellow OliveDrab 
syn keyword ftbDefine Beige LightGoldenrodYellow Ivory LightYellow Yellow
syn keyword ftbDefine Olive DarkKhaki LemonChiffon PaleGoldenrod Khaki Gold 
syn keyword ftbDefine Cornsilk GoldEnrod FloralWhite OldLace Wheat Moccasin 
syn keyword ftbDefine Orange PapayaWhip BlanchedAlmond NavajoWhite AntiqueWhite
syn keyword ftbDefine Tan BurlyWood Bisque DarkOrange Linen Peru PeachPuff 
syn keyword ftbDefine SandyBrown Chocolate SaddleBrown SeaShell Sienna
syn keyword ftbDefine LightSalmon Coral 
syn keyword ftbDefine OrangeRed DarkSalmon Tomato MistyRose Salmon Snow 
syn keyword ftbDefine LightCoral RosyBrown IndianRed Red Brown FireBrick
syn keyword ftbDefine DarkRed Maroon White WhiteSmoke Gainsboro LightGray 
syn keyword ftbDefine Silver DarkGray Gray DimGray Black
syn keyword ftbDefine Alt Middle None Apps Attn back browserback browserfavorites
syn keyword ftbDefine BrowserForward BrowserHome BrowserRefresh BrowserSearch 
syn keyword ftbDefine BrowserStop Office2007Blue Office2007Silver Office2007Black
syn keyword ftbDefine italic regular zoom strikeout underline ok abortretryignore
syn keyword ftbDefine retrycancel yesno yesnocancel information question warning
syn keyword ftbDefine abort ignore no retry yes developer administrator standard
syn keyword ftbDefine free average percent std stdpop varpop quarter week center
syn keyword ftbDefine general Bottom Top undefined medium mediumdashdotdotted
syn keyword ftbDefine hair mediumdashdotted mediumdashed thick thindashdotted
syn keyword ftbDefine Thin ThinDashDotDotted backward dashed dotted added deleted
syn keyword ftbDefine modified unchanged detached Default junjamode kanamode
syn keyword ftbDefine kanjimode keycode launchapplication1 launchapplication2
syn keyword ftbDefine launchmail lbutton lcontrolkey linefeed lmenu lshiftkey
syn keyword ftbDefine lwinmbutton medianexttrack mediaplaypause mediaprevioustrack
syn keyword ftbDefine mediastop menu modifiers noname numlock oembackslash
syn keyword ftbDefine oemclear oemclosebrackets oemcomma oemminus oemopenbrackets
syn keyword ftbDefine oemperiod oempipe oemplus oemquestion oemquotes oemtilde
syn keyword ftbDefine oemsemicolon palpacket pagedown pageup pause printscreen
syn keyword ftbDefine original modifiedoriginal never splitifneeded splitiflarge
syn keyword ftbDefine splitnewpage blocktoptobottom blocklefttorigth column
syn keyword ftbDefine inlinelefttoright normal subscript superscript codabar
syn keyword ftbDefine code128 code39 code93 codei2of5 ean13 ean8 postnet upca
syn keyword ftbDefine down up all area bar bubble candle hilo hiloopenclose
syn keyword ftbDefine histogram xyplot west east south north spline beziers dash
syn keyword ftbDefine dashdot dashdotdot dot solid box cross diagcross diamond
syn keyword ftbDefine horizontalline invertedtri opendiamond openinvertedtri
syn keyword ftbDefine opentri square star tri verticalline auto northeast
syn keyword ftbDefine northwest orthogonal radial southeast southwest 
syn keyword ftbDefine frequencygraph steppedfrequencyGraph centerimage vertical
syn keyword ftbDefine stretchimage diagonaldescending diagonalascending cell range
syn keyword ftbDefine capital capslock controlkey crsel divide eraseeof escape
syn keyword ftbDefine exsel finalmode hanguelmode hangulmode hanjamode help home
syn keyword ftbDefine blocklefttoright pie horizontal background backgroundloop
syn keyword ftbDefine waittocomplete fixed3d fixedsingle bottomcenter bottomleft
syn keyword ftbDefine bottomright middlecenter middleleft middleright topcenter
syn keyword ftbDefine topleft topright bmp emf exif gif guid icon jpeg png tiff
syn keyword ftbDefine wmf email web file images values flat system stretch tile
syn keyword ftbDefine shift datatime datalongtime longtime sqltable sqlquery
syn keyword ftbDefine imageabovetext imagebeforetext textaboveimage
syn keyword ftbDefine textbeforeimage automatic imageabovetext imagebeforetext
syn keyword ftbDefine IMEAccept IMEConvert IMEModeChange IMENonconvert MButton
syn keyword ftbDefine LWin Multiply packet prior processkey rbutton rcontrolkey
syn keyword ftbDefine Rmenu rshiftkey selectMedia separator shiftkey volumedown
syn keyword ftbDefine volumemute volumeup xButton1 xbutton2

"Numbers
"integer number, or floating point number without a dot.
syn match ftbNumber "\<\d\+\>"
"floating point number, with dot
syn match ftbNumber "\<\d\+\.\d*\>"
"floating point number, starting with a dot
syn match ftbNumber "\.\d\+\>"
"syn match  ftbNumber		"{[[:xdigit:]-]\+}\|&[hH][[:xdigit:]]\+&"
"syn match  ftbNumber		":[[:xdigit:]]\+"
"syn match  ftbNumber		"[-+]\=\<\d\+\>"
syn match  ftbFloat		"[-+]\=\<\d\+[eE][\-+]\=\d\+"
syn match  ftbFloat		"[-+]\=\<\d\+\.\d*\([eE][\-+]\=\d\+\)\="
syn match  ftbFloat		"[-+]\=\<\.\d\+\([eE][\-+]\=\d\+\)\="

" String and Character contstants
syn region  ftbString		start=+"+  end=+"\|$+
syn region  ftbComment		start="\(^\|\s\)REM\s" end="$" contains=ftbTodo
syn region  ftbComment		start="\(^\|\s\)\'"   end="$" contains=ftbTodo
syn match   ftbLineNumber	"^\d\+\(\s\|$\)"
syn match   ftbTypespecifier  "[a-zA-Z0-9][\$%&!#]"ms=s+1
syn match   ftbTypespecifier  "#[a-zA-Z0-9]"me=e-1

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_ftb_syntax_inits")
	if version < 508
		let did_ftb_syntax_inits = 1
		command -nargs=+ HiLink hi link <args>
	else
		command -nargs=+ HiLink hi def link <args>
	endif

	HiLink ftbBoolean		Boolean
	HiLink ftbLineNumber	Comment
	HiLink ftbComment		Comment
	HiLink ftbConditional	Conditional
	HiLink ftbConst			Constant
	HiLink ftbDefine		Constant
	HiLink ftbError			Error
	HiLink ftbFunction		Identifier
	HiLink ftbIdentifier	Identifier
	HiLink ftbNumber		Number
	HiLink ftbFloat			Float
	HiLink ftbMethods		PreProc
	HiLink ftbOperator		Operator
	HiLink ftbRepeat		Repeat
	HiLink ftbString		String
	HiLink ftbStatement		Statement
	HiLink ftbkeyword		Statement
	HiLink ftbEvents		Special
	HiLink ftbTodo			Todo
	HiLink ftbTypes			Type
	HiLink ftbTypespecifier	Type

	delcommand HiLink
endif

let b:current_syntax = "ftb"

" vim: ts=8
ab abs Abs
ab account Account
ab acos Acos
ab activecontrol ActiveControl
ab activeform ActiveForm
ab add Add
ab addattachments AddAttachments
ab addcols AddCols
ab addconnection AddConnection
ab addcontrol AddControl
ab adddays AddDays
ab adddef AddDef
ab addexp AddExp
ab addhours AddHours
ab addimage AddImage
ab addminutes AddMinutes
ab addmonths AddMonths
ab addnavpage AddNavPage
ab addnew AddNew
ab addreceiver AddReceiver
ab address Address
ab addseconds AddSeconds
ab addtable AddTable
ab addtext AddText
ab adduserstyle AddUserStyle
ab addyears AddYears
ab afterdragcolumn AfterDragColumn
ab afteredit AfterEdit
ab afterfreezecolumn AfterFreezeColumn
ab afterlockdatarow AfterLockDataRow
ab afterresizecolumn AfterResizeColumn
ab afterresizerow AfterResizeRow
ab afterrowcheck AfterRowCheck
ab afterselchange AfterSelChange
ab afterselrangechange AfterSelRangeChange
ab afterunlockdatarow AfterUnlockDataRow
ab aggregate Aggregate
ab alignhorz AlignHorz
ab alignvert AlignVert
ab all All
ab allowaddnew AllowAddNew
ab allowallbuttonsup AllowAllButtonsUp
ab allowclicksort AllowClickSort
ab allowclipboard AllowClipBoard
ab allowdelete AllowDelete
ab allowdirecttype AllowDirectType
ab allowdragcolumn AllowDragColumn
ab allowedit AllowEdit
ab alloweditvalue AllowEditValue
ab allowfreezecolumn AllowFreezeColumn
ab allowinitialize AllowInitialize
ab allowlockrow AllowLockRow
ab allowmerge AllowMerge
ab allowresizecolumn AllowResizeColumn
ab allowresizerow AllowResizeRow
ab allowresizesinglerow AllowResizeSingleRow
ab allowtypeassistant AllowTypeAssistant
ab allowunlockrow AllowUnlockRow
ab alt Alt
ab and And
ab annoformatstring AnnoFormatString
ab annorotation AnnoRotation
ab annowithlabels AnnoWithLabels
ab appearance Appearance
ab append Append
ab applicationmenu ApplicationMenu
ab applicationpath ApplicationPath
ab applyfilter ApplyFilter
ab applysort ApplySort
ab apps Apps
ab arguments Arguments
ab as As
ab asc Asc
ab asin Asin
ab atan Atan
ab atan2 Atan2
ab attn Attn
ab audio Audio
ab autoaddnew AutoAddNew
ab autocomplete AutoComplete
ab autohidetext AutoHideText
ab autorotate AutoRotate
ab autoscale AutoScale
ab autoscroll AutoScroll
ab autosize AutoSize
ab autosizecol AutoSizeCol
ab autosizecols AutoSizeCols
ab autosizeheaderrow AutoSizeHeaderRow
ab autosizerow AutoSizeRow
ab autosizerows AutoSizeRows
ab axisx AxisX
ab axisy AxisY
ab axisy2 AxisY2
ab backcolor BackColor
ab back Back
ab backmost BackMost
ab barclusterwidth BarClusterWidth
ab barclusterwidth2 BarClusterWidth2
ab barcode BarCode
ab barcodetype BarCodeType
ab bardirection BarDirection
ab barnarrow BarNarrow
ab barwide BarWide
ab beforeadddatarow BeforeAddDataRow
ab beforeconnectouterdatasourceeventargs BeforeConnectOuterDataSourceEventArgs
ab beforedeletedatarow BeforeDeleteDataRow
ab beforedragcolumn BeforeDragColumn
ab beforefreezecolumn BeforeFreezeColumn
ab beforelockdatarow BeforeLockDataRow
ab beforeresizecolumn BeforeResizeColumn
ab beforeresizerow BeforeResizeRow
ab beforerowcheck BeforeRowCheck
ab beforesavedatarow BeforeSaveDataRow
ab beforeselchange BeforeSelChange
ab beforeselrangechange BeforeSelRangeChange
ab beforeshowcontextmenu BeforeShowContextMenu
ab beforeshowcontextmenueventargs BeforeShowContextMenuEventArgs
ab beforeunlockdatarow BeforeUnlockDataRow
ab belowribbon BelowRibbon
ab bindingeventargs BindingEventArgs
ab bindingfield BindingField
ab bindtables BindTables
ab bintodec BinToDec
ab blackandwhite BlackAndWhite
ab bold Bold
ab body Body
ab book Book
ab boolean Boolean
ab borderbottom BorderBottom
ab bordercolor BorderColor
ab bordercolorbottom BorderColorBottom
ab bordercolorleft BorderColorLeft
ab bordercolorright BorderColorRight
ab bordercolortop BorderColorTop
ab borderleft BorderLeft
ab borderright BorderRight
ab borders Borders
ab bordersize BorderSize
ab borderstyle BorderStyle
ab bordertop BorderTop
ab bottom Bottom
ab bottomitems BottomItems
ab bottommargin BottomMargin
ab bottomposition BottomPosition
ab bottomrow BottomRow
ab breakafter BreakAfter
ab breakbefore BreakBefore
ab browserback BrowserBack
ab browserfavorites BrowserFavorites
ab browserforward BrowserForward
ab browserhome BrowserHome
ab browserrefresh BrowserRefresh 
ab browsersearch BrowserSearch
ab browserstop BrowserStop
ab build Build
ab builddatasource BuildDataSource
ab builddatatree BuildDataTree
ab builddatatree2 BuildDataTree2
ab buildheader BuildHeader
ab button Button
ab buttonimagefile ButtonImageFile
ab buttonsmallimagefile ButtonSmallImageFile
ab buttontext ButtonText
ab byte Byte
ab c1 C1
ab c2 C2
ab cancel Cancel
ab canredo CanRedo
ab canundo CanUndo
ab caption Caption
ab cbyte Cbyte
ab ccdate CCDate
ab ccnumber CCNumber
ab cdate CDate
ab cdbl CDbl
ab cdec CDec
ab ceiling Ceiling
ab cell Cell
ab cellbuttonclick CellButtonClick
ab cellrange CellRange
ab cellrangechangeeventargs CellRangeChangeEventArgs
ab cells Cells
ab cellstyle CellStyle
ab centerhorizontal CenterHorizontal
ab centervertical CenterVertical
ab changeconnection ChangeConnection
ab changeedit ChangeEdit
ab char Char
ab chars Chars
ab charspacing CharSpacing
ab chart Chart
ab chartaxis ChartAxis
ab chartbuilder ChartBuilder
ab chartdataarray ChartDataArray
ab charthistogram ChartHistogram
ab chartseries ChartSeries
ab charttype ChartType
ab charttype2 ChartType2
ab checkalign CheckAlign
ab checkautotoggle CheckAutoToggle
ab checkbox CheckBox
ab checkboxes CheckBoxes
ab checked Checked
ab checkedcombobox CheckedComboBox
ab checkedindices CheckedIndices
ab checkedlistbox CheckedListBox
ab children Children
ab chr Chr
ab cint CInt
ab circlegrowth CircleGrowth
ab cldate CLDate
ab clear Clear
ab clearcheckedrows ClearCheckedRows
ab clearconfigitem ClearConfigItem
ab clearcontrol ClearControl
ab cleareditinfos ClearEditInfos
ab clearmergedcells ClearMergedCells
ab clearsubtotal ClearSubtotal
ab clng CLng
ab clone Clone
ab close Close
ab closewindow CloseWindow
ab col Col
ab colend ColEnd
ab colgroups ColGroups
ab collapse Collapse
ab collapseall CollapseAll
ab collapsed Collapsed
ab colname ColName
ab color Color
ab colorlabel ColorLabel
ab colorpicker ColorPicker
ab cols Cols
ab colsel ColSel
ab columns Columns
ab combobox ComboBox
ab combolist ComboList
ab command Command
ab commandmenu CommandMenu
ab commandtext CommandText
ab commandvisible CommandVisible
ab compactaccessfile CompactAccessFile
ab compacttoaccess CompactToAccess
ab compare Compare
ab compass Compass
ab compute Compute
ab computerid ComputerId
ab configbar ConfigBar
ab connection Connection
ab connections Connections
ab connectionname ConnectionName
ab connectionstring ConnectionString
ab container Container
ab contains Contains
ab content Content
ab contextcommand ContextCommand
ab contextcommandeventargs ContextCommandEventArgs
ab contextcommandmenu ContextCommandMenu
ab contextcommandmenueventargs ContextCommandMenuEventArgs
ab contextmenu ContextMenu
ab contextmenus ContextMenus
ab control Control
ab controlmouseeventargs ControlMouseEventArgs
ab controls Controls
ab coordtodataindex CoordToDataIndex
ab coordtodataindex2 CoordToDataIndex2
ab copy Copy
ab copydirectory CopyDirectory
ab copyfile CopyFile
ab copyimage CopyImage
ab cos Cos
ab cosh Cosh
ab count Count
ab courier Courier
ab crccheckfile CRCCheckFile
ab crccheckstring CRCCheckString
ab createcontrol CreateControl
ab createdirectory CreateDirectory
ab crosstablebuilder CrossTableBuilder
ab cshort CShort
ab csng CSng
ab cstr CStr
ab cudate CUDate
ab cumoney CUMoney
ab cunumber CUNumber
ab current Current
ab currentchanged CurrentChanged
ab currenttable CurrentTable
ab cut Cut
ab dashstyle DashStyle
ab databinding DataBinding
ab datacol DataCol
ab datacolchanged DataColChanged
ab datacolchanging DataColChanging
ab datacoleventargs DataColEventArgs
ab datacols DataCols
ab datafield DataField
ab datafilter DataFilter
ab datalabelbackcolor DataLabelBackColor
ab datalabelborder DataLabelBorder
ab datalabelbordercolor DataLabelBorderColor
ab datalabelcompass DataLabelCompass
ab datalabelconnected DataLabelConnected
ab datalabeltext DataLabelText
ab datalabelvisible DataLabelVisible
ab datamap DataMap
ab datarow DataRow
ab datarowadded DataRowAdded
ab datarowadding DataRowAdding
ab datarowdeleted DataRowDeleted
ab datarowdeleting DataRowDeleting
ab datarows DataRows
ab datasort DataSort
ab datasource DataSource
ab datatable DataTable
ab datatablebuilder DataTableBuilder
ab datatablename DataTableName
ab datatables DataTables
ab date Date
ab dategroup DateGroup
ab datetimepicker DateTimePicker
ab datetype DateType
ab day Day
ab dayofweek DayOfWeek
ab dayofyear DayOfYear
ab days Days
ab daysinmonth DaysInMonth
ab ddb DDB
ab decimal Decimal
ab decimals Decimals
ab decryptfile DecryptFile
ab decrypttext DecryptText
ab dectobin DecToBin
ab dectohex DecToHex
ab dectooct DecToOct
ab default Default
ab defaultcolumnwidth DefaultColumnWidth
ab defaultfont DefaultFont
ab defaultmessage DefaultMessage
ab defaultrowheight DefaultRowHeight
ab defaultvalue DefaultValue
ab delete Delete
ab deletedir DeleteDir
ab deletedirectory DeleteDirectory
ab deletefile DeleteFile
ab deletefor DeleteFor
ab delimiter Delimiter
ab diagonal Diagonal
ab diagonalcolor DiagonalColor
ab diagonalstyle DiagonalStyle
ab directoryexists DirectoryExists
ab directprint DirectPrint
ab displaycol DisplayCol
ab displaymember DisplayMember
ab distinct Distinct
ab ditection Ditection
ab dim Dim
ab double Double
ab doubleclick DoubleClick
ab download Download
ab downloadfile DownloadFile
ab dragcolumneventargs DragColumnEventArgs
ab drawcell DrawCell
ab drawdatalistcelleventargs DrawDataListCellEventArgs
ab editbox EditBox
ab editmask EditMask
ab enabled Enabled
ab encryptfile EncryptFile
ab encrypttext EncryptText
ab end End
ab endswith EndsWith
ab ensurevisible EnsureVisible
ab enterkeyactiondown EnterKeyActionDown
ab eumoney EUMoney
ab eunumber EUNumber
ab eval Eval
ab excludeexistvalue ExcludeExistValue
ab excludenullvalue ExcludeNullValue
ab execute Execute
ab executenonquery ExecuteNonQuery
ab executereader ExecuteReader
ab executescalar ExecuteScalar
ab existcontrol ExistControl
ab exp Exp
ab expand Expand
ab expandall ExpandAll
ab export Export
ab exporter Exporter
ab expression Expression
ab expressions Expressions
ab expressiontext ExpressionText
ab extendedvalues ExtendedValues
ab extendsize ExtendSize
ab extendtype ExtendType
ab fieldmaps FieldMaps
ab fields Fields
ab file File
ab fileexists FileExists
ab filemanager FileManager
ab filename FileName
ab filepath FilePath
ab filesys FileSys
ab fill Fill
ab fillcolor FillColor
ab filler Filler
ab filter Filter
ab find Find
ab findrow FindRow
ab finishediting FinishEditing
ab fitpagesacross FitPagesAcross
ab fitpagesdown FitPagesDown
ab fittype FitType
ab fixedpanel FixedPanel
ab flatstyle FlatStyle
ab floor Floor
ab focus Focus
ab focused Focused
ab focusrect FocusRect
ab font Font
ab fontbold FontBold
ab fontcombobox FontComboBox
ab fontitalic FontItalic
ab fontstrikeout FontStrikeout
ab fontunderline FontUnderline
ab footer Footer
ab footerfont FooterFont
ab footertext FooterText
ab forecolor ForeColor
ab form Form
ab format Format
ab formatstring FormatString
ab forms Forms
ab from From
ab fromserver FromServer
ab frozen Frozen
ab ftpclient FTPClient
ab fullpath FullPath
ab func Func
ab functions Functions
ab fv FV
ab getcheckedrows GetCheckedRows
ab getchildrows GetChildRows
ab getcomboliststring GetComboListString
ab getconfigvalue GetConfigValue
ab getdigit GetDigit
ab getdirectories GetDirectories
ab getdirectorylist GetDirectoryList
ab getfilelist GetFileList
ab getfiles GetFiles
ab getimage GetImage
ab getitemchecked GetItemChecked
ab getname GetName
ab getparentpath GetParentPath
ab getparentrow GetParentRow
ab getparentrows GetParentRows
ab getpy GetPy
ab getuniquevalues GetUniqueValues
ab globalevents GlobalEvents
ab globalhandler GlobalHandler
ab goback GoBack
ab goforward GoForward
ab gohome GoHome
ab grandproportion GrandProportion
ab graphics Graphics
ab gridcolor GridColor
ab gridlines GridLines
ab gridmajorvisible GridMajorVisible
ab gridminorvisible GridMinorVisible
ab group Group
ab groupabovedata GroupAboveData
ab groupbox GroupBox
ab grouping Grouping
ab groupon GroupOn
ab groupproportion GroupProportion
ab groups Groups
ab grouptablebuilder GroupTableBuilder
ab haschanges HasChanges
ab haslauncherbutton HasLauncherButton
ab header Header
ab headerfont HeaderFont
ab headertext HeaderText
ab height Height
ab hextodec HexToDec
ab hgroups HGroups
ab histogram Histogram
ab histogramtype HistogramType
ab hittype HitType
ab horizontalproportion HorizontalProportion
ab horizontalproportioncaption HorizontalProportionCaption
ab horizontaltotal HorizontalTotal
ab horz Horz
ab host Host
ab hour Hour
ab hours Hours
ab hyperlink Hyperlink
ab iconfile IconFile
ab ignorenullvalues IgnoreNullValues
ab iif IIF
ab if If
ab image Image
ab imagealign ImageAlign
ab imageandtext ImageAndText
ab imagefile ImageFile
ab imagelayout ImageLayout
ab imagemap ImageMap
ab imemode ImeMode
ab import Import
ab importer Importer
ab increment Increment
ab index Index
ab indexof IndexOf
ab initialdirectory InitialDirectory
ab insert Insert
ab installedprinters InstalledPrinters
ab intax InTax
ab integer Integer
ab interval Interval
ab intervalnumber IntervalNumber
ab intervalstart IntervalStart
ab intervalwidth IntervalWidth
ab inverted Inverted
ab ipmt IPmt
ab irr IRR
ab isboolean IsBoolean
ab ischild IsChild
ab iscontrol IsControl
ab iscopy IsCopy
ab isdate IsDate
ab isdigit IsDigit
ab isexpanded IsExpanded
ab isfocuscell IsFocusCell
ab isgroup IsGroup
ab isleapmonth IsLeapMonth
ab isleapyear IsLeapYear
ab isletter IsLetter
ab isletterordigit IsLetterOrDigit
ab islower IsLower
ab isnot IsNot
ab isnull IsNull
ab isnumber IsNumber
ab isnumeric IsNumeric
ab isparent IsParent
ab ispunctuation IsPunctuation
ab isrelation IsRelation
ab isselected IsSelected
ab isseparator IsSeparator
ab issplitterfixed IsSplitterFixed
ab isstring IsString
ab issymbol IsSymbol
ab isupper IsUpper
ab iswhitespace IsWhiteSpace
ab item Item
ab items Items
ab join Join
ab keepaspectratio KeepAspectRatio
ab keychar KeyChar
ab keycode KeyCode
ab keydown KeyDown
ab keydownedit KeyDownEdit
ab keyediteventargs KeyEditEventArgs
ab keypressedit KeyPressEdit
ab keypressediteventargs KeyPressEditEventArgs
ab keyup KeyUp
ab keyupedit KeyUpEdit
ab label Label
ab landscape Landscape
ab largeimage LargeImage
ab lastindexof LastIndexOf
ab leapmonth LeapMonth
ab left Left
ab leftcol LeftCol
ab leftitems LeftItems
ab leftmargin LeftMargin
ab legendcompass LegendCompass
ab legendentry LegendEntry
ab legendfont LegendFont
ab legendtext LegendText
ab legendvisible LegendVisible
ab length Length
ab level Level
ab line Line
ab linecolor LineColor
ab linedef LineDef
ab linepattern LinePattern
ab lines Lines
ab linespacing LineSpacing
ab linethickness LineThickNess
ab link Link
ab links Links
ab list List
ab listbase ListBase
ab listbox ListBox
ab listcols ListCols
ab listitem ListItem
ab listitemformateventargs ListItemFormatEventArgs
ab listmode ListMode
ab load Load
ab loadfilter LoadFilter
ab loadorder LoadOrder
ab loadpage LoadPage
ab loadtop LoadTop
ab locked Locked
ab log Log
ab log10 Log10
ab logs Logs
ab long Long
ab lunar Lunar
ab lunardate LunarDate
ab mailsender MailSender
ab maintable MainTable
ab maintablechangingeventargs MaintableChangingEventArgs
ab major Major
ab majortick MajorTick
ab makedir MakeDir
ab marginbottom MarginBottom
ab marginfooter MarginFooter
ab marginheader MarginHeader
ab marginleft MarginLeft
ab marginright MarginRight
ab margintop MarginTop
ab markbordercolor MarkBorderColor
ab markborderwidth MarkBorderWidth
ab markcolor MarkColor
ab markshape MarkShape
ab marksize MarkSize
ab math Math
ab max Max
ab maximum Maximum
ab maxlength MaxLength
ab maxrows MaxRows
ab md5encrypt MD5Encrypt
ab menubutton MenuButton
ab menuitems MenuItems
ab merge Merge
ab mergecell MergeCell
ab mergecols MergeCols
ab mergefree MergeFree
ab mergemode MergeMode
ab merger Merger
ab mergesort MergeSort
ab message1 Message1
ab message2 Message2
ab message3 Message3
ab messagebox MessageBox
ab middle Middle
ab milliseconds Milliseconds
ab min Min
ab minimum Minimum
ab minor Minor
ab minortick MinorTick
ab minrows MinRows
ab minute Minute
ab minutes Minutes
ab mirr MIRR
ab modifierkey ModifierKey
ab month Month
ab mousebutton MouseButton
ab mousedownbackcolor MouseDownBackColor
ab mouseoverbackcolor MouseOverBackColor
ab move Move
ab movedirectory MoveDirectory
ab movefile MoveFile
ab moveroweventargs MoveRowEventArgs
ab multidatamap MultiDataMap
ab multiline MultiLine
ab mytimer MyTimer
ab mytimers MyTimers
ab name Name
ab navbar NavBar
ab navpage NavPage
ab navpages NavPages
ab network Network
ab new New
ab newindex NewIndex
ab newpage NewPage
ab newrange NewRange
ab newstyle NewStyle
ab newtablecaption NewTableCaption
ab newtablename NewTableName
ab newvalue NewValue
ab next Next
ab nextdouble NextDouble
ab nextstring NextString
ab node Node
ab nodes Nodes
ab none None
ab now Now
ab nper NPer
ab npv NPV
ab numericcombobox NumericComboBox
ab octtodec OctToDec
ab offset Offset
ab oldindex OldIndex
ab oldrange OldRange
ab oldtablename OldTableName
ab open Open
ab opened Opened
ab openfiledialog OpenFileDialog
ab openmanager OpenManager
ab openview OpenView
ab openwindow OpenWindow
ab orderbytotal OrderByTotal
ab outertablebuilder OuterTableBuilder
ab output Output
ab overwriteprompt OverwritePrompt
ab padding Padding
ab padleft PadLeft
ab padright PadRight
ab page Page
ab pagebreak PageBreak
ab pagefooter PageFooter
ab pageheader PageHeader
ab pages Pages
ab pagesetting PageSetting
ab pagesetup PageSetup
ab painter Painter
ab panel Panel
ab panel1 Panel1
ab panel2 Panel2
ab paperkind PaperKind
ab parentnode ParentNode
ab password PassWord
ab passwordchar PasswordChar
ab paste Paste
ab pen Pen
ab pi PI
ab picturebox PictureBox
ab pictureviewer PictureViewer
ab ping Ping
ab play Play
ab pmt Pmt
ab port Port
ab position Position
ab positionchanged PositionChanged
ab positon Positon
ab ppmt PPmt
ab prepareedit PrepareEdit
ab pressed Pressed
ab preview Preview
ab print Print
ab printable Printable
ab printdoc PrintDoc
ab printername PrinterName
ab printgridlines PrintGridlines
ab printheaders PrintHeaders
ab printheight PrintHeight
ab printrownumber PrintRowNumber
ab printsetting PrintSetting
ab printwidth PrintWidth
ab process Process
ab progressbar ProgressBar
ab projectfile ProjectFile
ab projectpath ProjectPath
ab pv PV
ab qat QAT
ab querybuilder QueryBuilder
ab radiobutton RadioButton
ab raisecurrentchanged RaiseCurrentChanged
ab raisedatacolchanged RaiseDataColChanged
ab raisepositionchanged RaisePositionChanged
ab rand Rand
ab rate Rate
ab readalltext ReadAllText
ab readbirthday ReadBirthDay
ab readonly ReadOnly
ab readsex ReadSex
ab readvalue ReadValue
ab redo Redo
ab redraw Redraw
ab refresh Refresh
ab rejectchanges RejectChanges
ab relation Relation
ab relations Relations
ab remove Remove
ab removeat RemoveAt
ab removeconfigitem RemoveConfigItem
ab removecontrol RemoveControl
ab rename Rename
ab renamedirectory RenameDirectory
ab renamefile RenameFile
ab renderarc RenderArc
ab renderarea RenderArea
ab renderbarcode RenderBarCode
ab renderellipse RenderEllipse
ab renderempty RenderEmpty
ab rendergraphics RenderGraphics
ab renderimage RenderImage
ab renderline RenderLine
ab renderobject RenderObject
ab renderparagraph RenderParagraph
ab renderpie RenderPie
ab renderrectangle RenderRectangle
ab rendertable RenderTable
ab rendertext RenderText
ab repaint Repaint
ab replace Replace
ab replacefor ReplaceFor
ab report Report
ab reports Reports
ab reset Reset
ab resetautocompletesource ResetAutoCompleteSource
ab resettext ResetText
ab resumeredraw ResumeRedraw
ab reversed Reversed
ab ribboncheckboxeventargs RibbonCheckBoxEventArgs
ab ribboncolorpickereventargs RibbonColorPickerEventArgs
ab ribboncomboboxeventargs RibbonComboBoxEventArgs
ab ribboneditboxeventargs RibbonEditBoxEventArgs
ab ribbonfontcomboboxeventargs RibbonFontComboBoxEventArgs
ab ribbonitem RibbonItem
ab ribbonmenubuttoneventargs RibbonMenuButtonEventArgs
ab ribbonsplitbuttoneventargs RibbonSplitButtonEventArgs
ab ribbontabeventargs RibbonTabEventArgs
ab ribbontabs RibbonTabs
ab ribbontogglebuttoneventargs RibbonToggleButtonEventArgs
ab ribbontogglegroupeventargs RibbonToggleGroupEventArgs
ab ribbontoolbareventargs RibbonToolBarEventArgs
ab right Right
ab rightcol RightCol
ab rightitems RightItems
ab rightmargin RightMargin
ab rotation Rotation
ab round Round
ab row Row
ab rowcoleventargs RowColEventArgs
ab rowend RowEnd
ab rowgroups RowGroups
ab rowheadervisible RowHeaderVisible
ab rows Rows
ab rowsel RowSel
ab rowstate RowState
ab rtfprinter RtfPrinter
ab running Running
ab sameperiodgrowth SamePeriodGrowth
ab save Save
ab saveallconfigitem SaveAllConfigItem
ab saveconfigvalue SaveConfigValue
ab saveexcel SaveExcel
ab saveexcelflags SaveExcelFlags
ab savefiledialog SaveFileDialog
ab saveimage SaveImage
ab scalingfactor ScalingFactor
ab second Second
ab seconds Seconds
ab select Select
ab selectall SelectAll
ab selectedindex SelectedIndex
ab selecteditem SelectedItem
ab selectednode SelectedNode
ab selectedpage SelectedPage
ab selectedtext SelectedText
ab selectedvalue SelectedValue
ab selectfile SelectFile
ab selectionlength SelectionLength
ab selectionstart SelectionStart
ab selectstring SelectString
ab send Send
ab sendasync SendAsync
ab sender Sender
ab sendkeys Sendkeys
ab sendwait SendWait
ab separator Separator
ab serieslist SeriesList
ab serieslist2 SeriesList2
ab setbounds SetBounds
ab setcolvisiblewidth SetColVisibleWidth
ab setdatetimeformat SetDateTimeFormat
ab setformat SetFormat
ab setheadercellfont SetHeaderCellFont
ab setheadercellforecolor SetHeaderCellForeColor
ab setheaderrowheight SetHeaderRowHeight
ab setitemchecked SetItemChecked
ab setupeditor SetupEditor
ab setvaluelabel SetValueLabel
ab sheet Sheet
ab sheets Sheets
ab shift Shift
ab short Short
ab show Show
ab showcheckbox ShowCheckBox
ab showdialog ShowDialog
ab showdropdownbutton ShowDropDownButton
ab showgridlines ShowGridLines
ab showheaders ShowHeaders
ab showtext ShowText
ab showupdownbuttons ShowUpDownButtons
ab sin Sin
ab single Single
ab sinh Sinh
ab size Size
ab sizemode SizeMode
ab sln SLN
ab smallimage SmallImage
ab solardate SolarDate
ab sort Sort
ab sourcecols SourceCols
ab sourcepath SourcePath
ab sourcetable SourceTable
ab sourcetablename SourceTableName
ab spacing Spacing
ab spancols SpanCols
ab spanrows SpanRows
ab split Split
ab splitbutton SplitButton
ab splitcontainer SplitContainer
ab splithorzbehavior SplitHorzBehavior
ab splitpanel SplitPanel
ab splitterdistance SplitterDistance
ab splitterwidth SplitterWidth
ab splitvertbehavior SplitVertBehavior
ab sqlcommand SQLCommand
ab sqlcrosstablebuilder SQLCrossTableBuilder
ab sqlgrouptablebuilder SQLGroupTableBuilder
ab sqrt Sqrt
ab stacked Stacked
ab stacked2 Stacked2
ab stacking Stacking
ab start Start
ab startangle startAngle
ab startedit StartEdit
ab startediting StartEditing
ab startswith StartsWith
ab statefilter StateFilter
ab statusbar StatusBar
ab statusbar_progressbar StatusBar_ProgressBar
ab stop Stop
ab stopredraw StopRedraw
ab stretch Stretch
ab stretchhorz StretchHorz
ab stretchvert StretchVert
ab string String
ab strtonarrow StrToNarrow
ab strtosimplified StrToSimplified
ab strtotraditional StrToTraditional
ab strtowide StrToWide
ab style Style
ab styles Styles
ab substring SubString
ab subtotal Subtotal
ab subtotalgroup SubtotalGroup
ab subtotalgroups SubtotalGroups
ab subtract Subtract
ab sweepangle sweepAngle
ab syd SYD
ab sysstyles SysStyles
ab tab Tab
ab tabcontrol TabControl
ab tabkeyactiondown TabKeyActionDown
ab table Table
ab tables Tables
ab tablecaption TableCaption
ab tabledatamap TableDataMap
ab tablename TableName
ab tabletype TableType
ab tablevisible TableVisible
ab tabpage TabPage
ab tabpages TabPages
ab tan Tan
ab tanh Tanh
ab template TempLate
ab text Text
ab textalign TextAlign
ab textalignfixed TextAlignFixed
ab textalignhorz TextAlignHorz
ab textalignvert TextAlignVert
ab textangle TextAngle
ab textareawidth TextAreaWidth
ab textbox TextBox
ab textboxbase TextBoxBase
ab textcolor TextColor
ab textimagerelation TextImageRelation
ab textindent TextIndent
ab then Then
ab thickness Thickness
ab tilehorz TileHorz
ab tilevert TileVert
ab timeout TimeOut
ab timerenabled TimerEnabled
ab timerinterval TimerInterval
ab timespan TimeSpan
ab title Title
ab to To
ab today Today
ab toggle Toggle
ab togglebutton ToggleButton
ab togglegroup ToggleGroup
ab tolower ToLower
ab toolbar ToolBar
ab tooltip ToolTip
ab tooltiptext TooltipText
ab top Top
ab topicbar TopicBar
ab topiclink TopicLink
ab topiclinkeventargs TopicLinkEventArgs
ab topicpage TopicPage
ab topmargin TopMargin
ab topmost TopMost
ab topposition TopPosition
ab toprow TopRow
ab totaldays TotalDays
ab totalhours TotalHours
ab totalmilliseconds TotalMilliseconds
ab totalminutes TotalMinutes
ab totalon TotalOn
ab totalpages TotalPages
ab totals Totals
ab totalseconds TotalSeconds
ab toupper ToUpper
ab treenode TreeNode
ab treeview TreeView
ab treevieweventargs TreeViewEventArgs
ab treevisible TreeVisible
ab trim Trim
ab trimend TrimEnd
ab trimstart TrimStart
ab tryparse TryParse
ab type Type
ab undo Undo
ab unique Unique
ab upload Upload
ab uploadfile UploadFile
ab user User
ab usetbuildineditor UsetBuildInEditor
ab val Val
ab validateedit ValidateEdit
ab value Value
ab valuecol ValueCol
ab valuemember ValueMember
ab vars Vars
ab verb Verb
ab verbs Verbs
ab vert Vert
ab verticalproportion VerticalProportion
ab verticalproportioncaption VerticalProportionCaption
ab verticaltotal VerticalTotal
ab vgroups VGroups
ab visible Visible
ab visualeffect VisualEffect
ab visualstyle VisualStyle
ab waitforclose WaitForClose
ab waitforinputidle WaitForInputIdle
ab watermark WaterMark
ab webbrowser WebBrowser
ab width Width
ab winform WinForm
ab with With
ab wordwrap WordWrap
ab writealltext WriteAllText
ab writevalue WriteValue
ab year Year
ab nothing Nothing
ab afterchecknode AfterCheckNode
ab aftercheckrow AfterCheckRow
ab afterclose AfterClose
ab afterdragcolumn AfterDragColumn
ab afteredit AfterEdit
ab afterexpandnode AfterExpandNode
ab afterfreezecolumn AfterFreezeColumn
ab afterload AfterLoad
ab afterloadtablesetting AfterLoadTableSetting
ab afterlockdatarow AfterLockDataRow
ab afteropenproject AfterOpenProject
ab afterresizecolumn AfterResizeColumn
ab afterresizerow AfterResizeRow
ab aftersaveproject AfterSaveProject
ab afterselchange AfterSelChange
ab afterselectnode AfterSelectNode
ab afterselrangechange AfterSelRangeChange
ab afterunlockdatarow AfterUnLockDataRow
ab beforeadddatarow BeforeAddDataRow
ab beforecheckrow BeforeCheckRow
ab beforeclose BeforeClose
ab beforecloseproject BeforeCloseProject
ab beforeconnectouterdatasource BeforeConnectOuterDataSource
ab beforedeletedatarow BeforeDeleteDataRow
ab beforedragcolumn BeforeDragColumn
ab beforeexpandnode BeforeExpandNode
ab beforefreezecolumn BeforeFreezeColumn
ab beforeloadinnertable BeforeLoadInnerTable
ab beforeloadoutertable BeforeLoadOuterTable
ab beforelockdatarow BeforeLockDataRow
ab beforeopenproject BeforeOpenProject
ab beforeresizecolumn BeforeResizeColumn
ab beforeresizerow BeforeResizeRow
ab beforesavedatarow BeforeSaveDataRow
ab beforeselchange BeforeSelChange
ab beforeselectnode BeforeSelectNode
ab beforeselrangechange BeforeSelRangeChange
ab beforeshowcontextmenu BeforeShowContextMenu
ab beforeunlockdatarow BeforeUnLockDataRow
ab bindtable BindTable
ab bingcol BingCol
ab like Like
ab cellbuttonclick CellButtonClick
ab changecanceled ChangeCanceled
ab changecommitted ChangeCommitted
ab changeedit ChangeEdit
ab checkedchanged CheckedChanged
ab click Click
ab closed Closed
ab currentchanged CurrentChanged
ab currenttablechanged CurrentTableChanged
ab datacolchanged DataColChanged
ab datacolchanging DataColChanging
ab dataformat DataFormat
ab dataparse DataParse
ab datarowadded DataRowAdded
ab datarowadding DataRowAdding
ab datarowdeleted DataRowDeleted
ab datarowdeleting DataRowDeleting
ab deselecttab DeselectTab
ab dialoglauncherclick DialogLauncherClick
ab doubleclick DoubleClick
ab drawcell DrawCell
ab dropdown DropDown
ab dropdownclosed DropDownClosed
ab enter Enter
ab false False
ab filterrow FilterRow
ab globalvariablechanged GlobalVariableChanged
ab gotfocus GotFocus
ab initialize Initialize
ab keydown KeyDown
ab keydownedit KeyDownEdit
ab keypress KeyPress
ab keypressedit KeyPressEdit
ab keyup KeyUp
ab keyupedit KeyUpEdit
ab leave Leave
ab listitemformat ListItemFormat
ab loadusersetting LoadUserSetting
ab lostfocus LostFocus
ab maintablechanged MainTableChanged
ab maintablechanging MainTableChanging
ab mousedown MouseDown
ab mouseenter MouseEnter
ab mousehover MouseHover
ab mouseleave MouseLeave
ab mousemove MouseMove
ab mouseup MouseUp
ab nodemouseclick NodeMouseClick
ab nodemousedoubleclick NodeMouseDoubleClick
ab nodemousenover NodeMouseNover
ab popup Popup
ab positionchanged PositionChanged
ab prepareedit PrepareEdit
ab pressedbuttonchanged PressedButtonChanged
ab pressedchanged PressedChanged
ab selectedcolorchanged SelectedColorChanged
ab selectedindexchanged SelectedIndexChanged
ab selecttab SelectTab
ab splittermoved SplitterMoved
ab startedit StartEdit
ab systemidle SystemIdle
ab textchanged TextChanged
ab timertick TimerTick
ab topiclinkclick TopicLinkClick
ab true True
ab validateedit ValidateEdit
ab validating Validating
ab valuechanged ValueChanged
ab foxtable FoxTable
ab aggregateenum AggregateEnum
ab appearance Appearance
ab barcodeenum BarCodeEnum
ab bardirectionenum BarDirectionEnum
ab booleanenum BooleanEnum
ab charttypeenum ChartTypeEnum
ab compassenum CompassEnum
ab contentalignment ContentAlignment
ab dashstyleenum DashStyleEnum
ab datarowstate DataRowState
ab dategroupenum DateGroupEnum
ab dialogresult DialogResult
ab extendtypeenum ExtendTypeEnum
ab fittypeenum FitTypeEnum
ab flatstyle FlatStyle
ab fontstyle FontStyle
ab histogramtypeenum HistogramTypeEnum
ab hittypeenum HitTypeEnum
ab horizontalalignment HorizontalAlignment
ab imageformat ImageFormat
ab imagelayout ImageLayout
ab imagesizemode ImageSizeMode
ab keys Keys
ab labelcompassenum LabelCompassEnum
ab linedirectionenum LineDirectionEnum
ab linepatternenum LinePatternEnum
ab markshapeenum MarkShapeEnum
ab mergemodeenum MergeModeEnum
ab messageboxbuttons MessageBoxButtons
ab messageboxicon MessageBoxIcon
ab mousebuttons MouseButtons
ab statefilterenum StateFilterEnum
ab tabletypeenum TableTypeEnum
ab textalignenum TextAlignEnum
ab textimagerelation TextImageRelation
ab textimagerelationenum TextImageRelationEnum
ab usertypeenum UserTypeEnum
ab visualstyleenum VisualStyleEnum
ab controlte ControlTypeEnum
ab alignhorzenum AlignHorzEnum
ab alignhorzenum AlignHorzEnum
ab alignvertenum AlignVertEnum
ab alignvertenum AlignVertEnum
ab breakenum BreakEnum
ab diagonalenum DiagonalEnum
ab imagealignhorzenum ImageAlignHorzEnum
ab imagealignvertenum ImageAlignVertEnum
ab linestyleenum LineStyleEnum
ab splitbehaviorenum SplitBehaviorEnum
ab stackingrulesenum StackingRulesEnum
ab tablefooterenum TableFooterEnum
ab tableheaderenum TableHeaderEnum
ab textpositionenum TextPositionEnum
ab createsqltable CreatSQLTable
ab createsqlquery CreateSQLQuery
ab createtable CreatTable
ab splitterpanel SplitterPanel
ab xmlnode XmlNode
ab xmldocument XmlDocument
ab dom DOM
ab xmlexception XmlException
ab childnodes ChildNodes
ab firstchild FirstChild
ab haschildnodes HasChildNodes
ab innertext InnerText
ab lastchild LastChild
ab prevnode PrevNode
ab prevvisiblenode PrevVisibleNode
ab nextnode NextNode
ab nextvisiblenode NextVisibeNode
ab firstnode FirstNode
ab lastnode LastNode
ab gettablenamefromconnection GetTableNamesFromConnection
ab for For
ab each Each
ab xmlreader XmlReader
ab readcontentasBoolean ReadContenAsBoolean
ab readcontentasdatetime ReadContentAsDateTime
ab readcontentasdouble ReadContentAsDouble
ab readcontentaslong ReadContentAsLong
ab readcontentasint ReadContentAsInt
ab readcontentasString ReadContentString
ab readcontentasobject ReadContentAsObject
ab valuetype ValueType
ab element Element
ab endelement EndElement
ab xmlnodetype XmlNodeType
ab cdata CDATA
ab readelementcontentasboolean ReadElementContentAsBoolean
ab readelementcontentasdatetime ReadElementContentAsDateTime
ab readelementcontentasdouble ReadElementContentAsDouble
ab readelementcontentaslong   ReadElementContentAsLong
ab readelementcontentasint    ReadElementContentAsInt
ab readelementcontentasstring ReadElementContentAsString
ab xmlreadersettings XmlReaderSettings
ab validationtype ValidationType
ab schema Schema
ab schemas Schemas
ab movetocontent MoveToContent
ab readtodescendant ReadToDescendant
ab datetime DateTime
ab create Create
ab xmltextreader XmlTextReader
ab byval ByVal
ab nodetype NodeType
ab xmldeclaration XmlDeclaration
ab movetonextattribute MoveToNextAttribute
ab processinginstruction ProcessingInstruction
ab document Document
ab whitespace WhiteSpace
ab significantwhitespace SignificantWhiteSpace
ab catch Catch
ab try Try
ab exception Exception
ab sub Sub
ab private Private
ab Click Click
ab system System
ab object Object
ab eventargs EventArgs
ab handles Handles
