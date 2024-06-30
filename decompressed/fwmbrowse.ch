#INCLUDE "fwbrowse.ch"

#xcommand DEFINE FWMBROWSE <oFWBrowse> ;
	[ ALIAS <cAlias> ] ;
	[ GROUP <bGroup> ] ;
	[ <lNoLocate: NO LOCATE> ] ;
	[ <lNoSeek: NO SEEK> ] ;
	[ <lNoFilter: NO FILTER> ] ;
	[ <lNoConfig: NO CONFIG> ] ;
	[ <lNoReport: NO REPORT> ] ;
	[ <lNoSave: NO SAVE CONFIG> ] ;
    [ <color: COLOR, COLORS> <nClrFore> [,<nClrBack>] ] ;
	[ ALTERNATE COLOR <nClrAlterRow> ] ;
	[ FONT <oFont> ] ;
	[ LINE HEIGHT <nLineHeight> ] ;
	[ FILTERDEFAULT <cFilterDefault> ] ;
	[ <filtertopbot: FILTERTOPBOT> <cCpoFil>, <cTopFil>, <cBotFil> ] ;
	[ DESCRIPTION <cDescription> ] ;
	[ <lNoDetails: NO DETAILS> ] ;
	[ <lTemporary: TEMPORARY> ] ;
	[ PARAM <bParam> ] ;
	[ DETAILS <bDetails> ] ;
	[ ON START <bIniWindow> ] ;
	[ MENUDEF <cMenuDef> ] ;
	[ BOTTOMFUNCTION <cBotFun> ] ;
	[ TOPFUNCTION <cTopFun> ] ;
	[ <lChgAll: CHANGEALL> ] ;
	[ <lNoChgAll: NO CHANGEALL> ] ;
	[ <lSeeAll: SEEALL> ] ;
	[ <lNoSeeAll: NO SEEALL> ] ;
	[ TIMER <bTimer> ] ;
	[ INTERVAL <nInterval> ] ;
	[ X3TELA <cX3Tela> ] ;
	[ <lNoWalkThru: NO WALKTHRU> ] ;
	[ FIELDS <aFields> ] ;
	[ OPTION EXECUTE <nOption> ] ;
	[ <lNumberLegend: LEGEND NUMBER> ] ;
	[ PROFILEID <cProfileID> ] ;
	[ OF <oOwner> ] ;
	=> ;
		<oFWBrowse> := FWMBrowse():New();;
		<oFWBrowse>:SetDataTable(.T.);;
		If( ValType(<cAlias>) == "C" );;
			<oFWBrowse>:SetAlias(<cAlias>);;
		EndIf;;
		If( ValType(<cBotFun>) == "C" );;
			<oFWBrowse>:SetBotFun(<cBotFun>);;
		EndIf;;
		If( ValType(<cTopFun>) == "C" );;
			<oFWBrowse>:SetTopFun(<cTopFun>);;
		EndIf;;
		If( ValType(<bGroup>) == "B" );;
			<oFWBrowse>:SetGroup(<bGroup>);;
		EndIf;;
		If !<.lNoLocate.>;;
			<oFWBrowse>:SetLocate([<bLocate>]);;
		EndIf;;
		If <.lNoSeek.>;;
			<oFWBrowse>:SetSeek(.F.);;
		EndIf;;
		If <.lNoFilter.>;;
			<oFWBrowse>:SetUseFilter(.F.);;
		EndIf;;
		If <.lNoConfig.>;;
			<oFWBrowse>:DisableConfig();;
		EndIf;;
		If <.lNoReport.>;;
			<oFWBrowse>:DisableReport();;
		EndIf;;
		If <.lNoSave.>;;
			<oFWBrowse>:DisableSaveConfig();;
		EndIf;;
		If( ValType(<nClrFore>) == "N" );;
			<oFWBrowse>:SetForeColor(<nClrFore>);;
		EndIf;;
		If( ValType(<nClrBack>) == "N" );;
			<oFWBrowse>:SetBackColor(<nClrBack>);;
		EndIf;;
		If( ValType(<nClrAlterRow>) == "N" );;
			<oFWBrowse>:SetClrAlterRow(<nClrAlterRow>);;
		EndIf;;
		If( ValType(<oFont>) == "O" );;
			<oFWBrowse>:SetFontBrowse(<oFont>);;
		EndIf;;
		If( ValType(<nLineHeight>) == "N" );;
			<oFWBrowse>:SetLineHeight(<nLineHeight>);;
		EndIf;;
		If( ValType(<cFilterDefault>) == "C" );;
			<oFWBrowse>:SetFilterDefault(<cFilterDefault>);;
		EndIf;;
		If( ValType(<cCpoFil>) == "C" .And. ValType(<cTopFil>) == "C" .And. ValType(<cBotFil>) == "C" );;
			<oFWBrowse>:SetFilter(<cCpoFil>,<cTopFil>,<cBotFil>);;
		EndIf;;
		If( ValType(<cDescription>) == "C" );;
			<oFWBrowse>:SetDescription(<cDescription>);;
		EndIf;;
		If( ValType(<oOwner>) == "O" );;
			<oFWBrowse>:SetOwner(<oOwner>);;
		EndIf;;
		If <.lNoDetails.>;;
			<oFWBrowse>:DisableDetails();;
		EndIf;;
		If <.lTemporary.>;;
			<oFWBrowse>:SetTemporary();;
		EndIf;;
		If( ValType(<bParam>) == "B" );;
			<oFWBrowse>:SetParam(<bParam>);;
		EndIf;;
		If <.lChgAll.>;;
			<oFWBrowse>:SetChgAll(.T.);;
		ElseIf <.lNoChgAll.>;;
			<oFWBrowse>:SetChgAll(.F.);;
		EndIf;;
		If <.lSeeAll.>;;
			<oFWBrowse>:SetSeeAll(.T.);;
		ElseIf <.lNoSeeAll.>;;
			<oFWBrowse>:SetSeeAll(.F.);;
		EndIf;;
		If( ValType(<bTimer>) == "B" );;
			<oFWBrowse>:SetTimer(<bTimer>,<nInterval>);;
		EndIf;;
		If( ValType(<cX3Tela>) == "C" );;
			<oFWBrowse>:SetX3Tela(<cX3Tela>);;
		EndIf;;
		If <.lNoWalkThru.>;;
			<oFWBrowse>:SetWalkThru(.F.);;
		EndIf;;
		If( ValType(<cMenuDef>) == "C" );;
			<oFWBrowse>:SetMenuDef(<cMenuDef>);;
		EndIf;;
		If( ValType(<bIniWindow>) == "B" );;
			<oFWBrowse>:SetIniWindow(<bIniWindow>);;
		EndIf;;
		If( ValType(<aFields>) == "A" );;
			<oFWBrowse>:SetFields(<aFields>);;
		EndIf;;
		If( ValType(<nOption>) == "N" );;
			<oFWBrowse>:SetExecuteDef(<nOption>);;
		EndIf;;
		If <.lNumberLegend.>;;
			<oFWBrowse>:SetNumberLegend(<.lNumberLegend.>);;
		EndIf;;
		If( ValType(<cProfileID>) == "C" );;
			<oFWBrowse>:SetProfileID(<cProfileID>);;
		EndIf
		
#xcommand ACTIVATE FWMBROWSE <oFWBrowse> ;
	=> ;
		<oFWBrowse>:Activate()

#xcommand DEFINE FWMARKBROWSE <oFWBrowse> ;
	[ ALIAS <cAlias> ] ;
	[ <lNoLocate: NO LOCATE> ] ;
	[ <lNoSeek: NO SEEK> ] ;
	[ <lNoFilter: NO FILTER> ] ;
	[ <lNoConfig: NO CONFIG> ] ;
	[ <lNoReport: NO REPORT> ] ;
	[ <lNoSave: NO SAVE CONFIG> ] ;
    [ <color: COLOR, COLORS> <nClrFore> [,<nClrBack>] ] ;
	[ ALTERNATE COLOR <nClrAlterRow> ] ;
	[ FONT <oFont> ] ;
	[ LINE HEIGHT <nLineHeight> ] ;
	[ FILTERDEFAULT <cFilterDefault> ] ;
	[ <filtertopbot: FILTERTOPBOT> <cCpoFil>, <cTopFil>, <cBotFil> ] ;
	[ DESCRIPTION <cDescription> ] ;
	[ <lTemporary: TEMPORARY> ] ;
	[ PARAM <bParam> ] ;
	[ ON START <bIniWindow> ] ;
	[ MENUDEF <cMenuDef> ] ;
	[ BOTTOMFUNCTION <cBotFun> ] ;
	[ TOPFUNCTION <cTopFun> ] ;
	[ <lChgAll: CHANGEALL> ] ;
	[ <lNoChgAll: NO CHANGEALL> ] ;
	[ <lSeeAll: SEEALL> ] ;
	[ <lNoSeeAll: NO SEEALL> ] ;
	[ TIMER <bTimer> ] ;
	[ INTERVAL <nInterval> ] ;
	[ X3TELA <cX3Tela> ] ;
	[ <lNoWalkThru: NO WALKTHRU> ] ;
	[ FIELDS <aFields> ] ;
	[ VALID <bValid> ] ;
	[ <lSemaphore: SEMAPHORE> ] ;
	[ <lInvert: INVERT> ] ;
	[ MARK <cMark> ] ;
	[ FIELD MARK <cField> ] ;
	[ AFTER MARK <bAfterMark> ] ;
	[ ALL MARK <bAllMark> ] ;
	[ CUSTOM MARK <bCustomMark> ] ;
	[ <lNumberLegend: LEGEND NUMBER> ] ;
	[ PROFILEID <cProfileID> ] ;
	[ OF <oOwner> ] ;
	=> ;
		<oFWBrowse> := FWMarkBrowse():New();;
		<oFWBrowse>:SetDataTable(.T.);;
		If( ValType(<cAlias>) == "C" );;
			<oFWBrowse>:SetAlias(<cAlias>);;
		EndIf;;
		If( ValType(<cBotFun>) == "C" );;
			<oFWBrowse>:SetBotFun(<cBotFun>);;
		EndIf;;
		If( ValType(<cTopFun>) == "C" );;
			<oFWBrowse>:SetTopFun(<cTopFun>);;
		EndIf;;
		If !<.lNoLocate.>;;
			<oFWBrowse>:SetLocate([<bLocate>]);;
		EndIf;;
		If <.lNoSeek.>;;
			<oFWBrowse>:SetSeek(.F.);;
		EndIf;;
		If <.lNoFilter.>;;
			<oFWBrowse>:SetUseFilter(.F.);;
		EndIf;;
		If <.lNoConfig.>;;
			<oFWBrowse>:DisableConfig();;
		EndIf;;
		If <.lNoReport.>;;
			<oFWBrowse>:DisableReport();;
		EndIf;;
		If <.lNoSave.>;;
			<oFWBrowse>:DisableSaveConfig();;
		EndIf;;
		If( ValType(<nClrFore>) == "N" );;
			<oFWBrowse>:SetForeColor(<nClrFore>);;
		EndIf;;
		If( ValType(<nClrBack>) == "N" );;
			<oFWBrowse>:SetBackColor(<nClrBack>);;
		EndIf;;
		If( ValType(<nClrAlterRow>) == "N" );;
			<oFWBrowse>:SetClrAlterRow(<nClrAlterRow>);;
		EndIf;;
		If( ValType(<oFont>) == "O" );;
			<oFWBrowse>:SetFontBrowse(<oFont>);;
		EndIf;;
		If( ValType(<nLineHeight>) == "N" );;
			<oFWBrowse>:SetLineHeight(<nLineHeight>);;
		EndIf;;
		If( ValType(<cFilterDefault>) == "C" );;
			<oFWBrowse>:SetFilterDefault(<cFilterDefault>);;
		EndIf;;
		If( ValType(<cCpoFil>) == "C" .And. ValType(<cTopFil>) == "C" .And. ValType(<cBotFil>) == "C" );;
			<oFWBrowse>:SetFilter(<cCpoFil>,<cTopFil>,<cBotFil>);;
		EndIf;;
		If( ValType(<cDescription>) == "C" );;
			<oFWBrowse>:SetDescription(<cDescription>);;
		EndIf;;
		If( ValType(<oOwner>) == "O" );;
			<oFWBrowse>:SetOwner(<oOwner>);;
		EndIf;;
		If <.lTemporary.>;;
			<oFWBrowse>:SetTemporary();;
		EndIf;;
		If( ValType(<bParam>) == "B" );;
			<oFWBrowse>:SetParam(<bParam>);;
		EndIf;;
		If <.lChgAll.>;;
			<oFWBrowse>:SetChgAll(.T.);;
		ElseIf <.lNoChgAll.>;;
			<oFWBrowse>:SetChgAll(.F.);;
		EndIf;;
		If <.lSeeAll.>;;
			<oFWBrowse>:SetSeeAll(.T.);;
		ElseIf <.lNoSeeAll.>;;
			<oFWBrowse>:SetSeeAll(.F.);;
		EndIf;;
		If( ValType(<bTimer>) == "B" );;
			<oFWBrowse>:SetTimer(<bTimer>,<nInterval>);;
		EndIf;;
		If( ValType(<cX3Tela>) == "C" );;
			<oFWBrowse>:SetX3Tela(<cX3Tela>);;
		EndIf;;
		If <.lNoWalkThru.>;;
			<oFWBrowse>:SetWalkThru(.F.);;
		EndIf;;
		If( ValType(<cMenuDef>) == "C" );;
			<oFWBrowse>:SetMenuDef(<cMenuDef>);;
		EndIf;;
		If( ValType(<bIniWindow>) == "B" );;
			<oFWBrowse>:SetIniWindow(<bIniWindow>);;
		EndIf;;
		If( ValType(<aFields>) == "A" );;
			<oFWBrowse>:SetFields(<aFields>);;
		EndIf;;
		If( ValType(<bValid>) == "B" );;
			<oFWBrowse>:SetValid(<bValid>);;
		EndIf;;
		If <.lSemaphore.>;;
			<oFWBrowse>:SetSemaphore(.T.);;
		EndIf;;
		If <.lInvert.>;;
			<oFWBrowse>:SetInvert(.T.);;
		EndIf;;
		If( ValType(<cField>) == "C" );;
			<oFWBrowse>:SetFieldMark(<cField>);;
		EndIf;;
		If( ValType(<bAfterMark>) == "B" );;
			<oFWBrowse>:SetAfterMark(<bAfterMark>);;
		EndIf;;
		If( ValType(<bAllMark>) == "B" );;
			<oFWBrowse>:SetAllMark(<bAllMark>);;
		EndIf;;
		If( ValType(<bCustomMark>) == "B" );;
			<oFWBrowse>:SetCustomMarkRec(<bCustomMark>);;
		EndIf;;
		If( ValType(<cMark>) == "C" );;
			<oFWBrowse>:SetMark(<cMark>);;
		EndIf;;
		If <.lNumberLegend.>;;
			<oFWBrowse>:SetNumberLegend(<.lNumberLegend.>);;
		EndIf;;
		If( ValType(<cProfileID>) == "C" );;
			<oFWBrowse>:SetProfileID(<cProfileID>);;
		EndIf

#xcommand ACTIVATE FWMARKBROWSE <oFWBrowse> ;
	=> ;
		<oFWBrowse>:Activate()

#xcommand ADD BUTTON <oButton> ;
	[ TITLE <cTitle> ] ;
	[ ACTION <xAction> ] ;
	[ OPERATION <nOperation> ] ;
	[ ACCESS <nAccess> ] ;
	OF <oFWBrowse>;
	=> ;
		<oFWBrowse>:AddButton(<cTitle>,<xAction>,,<nOperation>,<nAccess>,.F.);;

#xcommand ADD FIELD <aFields> ;
	TITLE <cTitle> ;
	DATA  <xData> ;
	[ TYPE <cType> ] ;
	[ PICTURE <cPicture> ] ;
	[ ALIGN <cAlign> ] ;
	[ SIZE <nSize> ] ;
	[ DECIMAL <nDecimal> ] ;
	=>;
		Aadd( <aFields>, { <cTitle>, <xData>, [<cType>], [<cPicture>], [<cAlign>], [<nSize>], [<nDecimal>] })

#xcommand ADD OPTION <aRotina> ;
			 TITLE <cTitle> ;
			 ACTION <cAction> ;
			 OPERATION <nOperation> ;
			 ACCESS <nAccess> ;
 			 [ <lDisable:DISABLE MENU> ] ;
			 [ ID <cId> ] ;
 			 [ TOOLBAR <cToolbar> ] ;
			=>;
				Aadd( <aRotina>, { <cTitle>, <cAction>, 0, <nOperation>, <nAccess>, /*<lMnuIni>,*/ [!<.lDisable.>], [<cId>], [<cToolbar>] })