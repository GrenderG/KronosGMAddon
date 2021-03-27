KGMM_Options_CurrentSwatch = nil;
KGMM_Options_AlreadyShown = false;

KGMM_Alias_Selected = "";
KGMM_Filter_Selected = "";
KGMM_History_Selected = "";

function KGMM_Options_OnShow()
	local tRGB;
	
	KGMM_OptionsEnableKGMM:SetChecked(KGMM_Data.enableKGMM);
	
	--[ Initialize Minimap Icon Frame 
		KGMM_OptionsMiniMapIconPosition:SetValue(KGMM_Data.iconPosition);
		KGMM_OptionsMiniMapIconPositionTitle:SetText("Icon Position");
		KGMM_OptionsMiniMapEnabled:SetChecked(KGMM_Data.showMiniMap);
		KGMM_OptionsMiniMapFreeMoving:SetChecked(KGMM_Data.miniFreeMoving.enabled);
	
	--[ Initialize Display Settings Frame 
		--[Swatches
		KGMM_Options_CurrentSwatch = "KGMM_OptionsDisplayIncomingWisp";
		tRGB = KGMM_Data.displayColors.wispIn;
		KGMM_Options_UpdateSwatchColor(tRGB.r, tRGB.g, tRGB.b);
		KGMM_Options_CurrentSwatch = "KGMM_OptionsDisplayOutgoingWisp";
		tRGB = KGMM_Data.displayColors.wispOut;
		KGMM_Options_UpdateSwatchColor(tRGB.r, tRGB.g, tRGB.b);
		KGMM_Options_CurrentSwatch = "KGMM_OptionsDisplaySystemMessage";
		tRGB = KGMM_Data.displayColors.sysMsg;
		KGMM_Options_UpdateSwatchColor(tRGB.r, tRGB.g, tRGB.b);
		KGMM_Options_CurrentSwatch = "KGMM_OptionsDisplayErrorMessage";
		tRGB = KGMM_Data.displayColors.errorMsg;
		KGMM_Options_UpdateSwatchColor(tRGB.r, tRGB.g, tRGB.b);
		KGMM_Options_CurrentSwatch = "KGMM_OptionsDisplayWebAddress";
		tRGB = KGMM_Data.displayColors.webAddress;
		KGMM_Options_UpdateSwatchColor(tRGB.r, tRGB.g, tRGB.b);
		KGMM_OptionsDisplayShowTimeStamps:SetChecked(KGMM_Data.showTimeStamps);
		KGMM_OptionsDisplayShowShortcutBar:SetChecked(KGMM_Data.showShortcutBar);
		--[Character Info
		KGMM_OptionsDisplayShowCharacterInfo:SetChecked(KGMM_Data.characterInfo.show);
		KGMM_OptionsDisplayShowCharacterInfoClassIcon:SetChecked(KGMM_Data.characterInfo.classIcon);
		KGMM_OptionsDisplayShowCharacterInfoClassColor:SetChecked(KGMM_Data.characterInfo.classColor);
		KGMM_OptionsDisplayShowCharacterInfoDetails:SetChecked(KGMM_Data.characterInfo.details);
		
		--[Sliders
		KGMM_OptionsDisplayFontSize:SetValue(KGMM_Data.fontSize);
		KGMM_OptionsDisplayFontSizeTitle:SetText("Font Size");
		KGMM_OptionsDisplayWindowSize:SetValue(KGMM_Data.windowSize * 100);
		KGMM_OptionsDisplayWindowSizeTitle:SetText("Window Size (Percent)");
		KGMM_OptionsDisplayWindowAlpha:SetValue(KGMM_Data.windowAlpha * 100);
		KGMM_OptionsDisplayWindowAlphaTitle:SetText("Transparency (Percent)");
	--[ Initialize General Settings
		KGMM_OptionsTabbedFrameGeneralKeepFocus:SetChecked(KGMM_Data.keepFocus);
		KGMM_OptionsTabbedFrameGeneralKeepFocusRested:SetChecked(KGMM_Data.keepFocusRested);
		KGMM_OptionsTabbedFrameGeneralkeepmenu:SetChecked(KGMM_Data.keepmenu);		
		KGMM_Options_KeepFocusClicked();
		KGMM_OptionsTabbedFrameGeneralAutoFocus:SetChecked(KGMM_Data.autoFocus);
		KGMM_OptionsTabbedFrameGeneralShowToolTips:SetChecked(KGMM_Data.showToolTips);
		KGMM_OptionsTabbedFrameGeneralSupress:SetChecked(KGMM_Data.supressWisps);
		KGMM_OptionsTabbedFrameGeneralPopNew:SetChecked(KGMM_Data.popNew);
		KGMM_OptionsTabbedFrameGeneralPopUpdate:SetChecked(KGMM_Data.popUpdate);
		KGMM_Options_PopNewClicked();
		KGMM_OptionsTabbedFrameGeneralPlaySoundWisp:SetChecked(KGMM_Data.playSoundWisp);
		KGMM_OptionsTabbedFrameGeneralSortOrderAlpha:SetChecked(KGMM_Data.sortAlpha);
		KGMM_OptionsTabbedFrameGeneralPopCombat:SetChecked(KGMM_Data.popCombat);
		KGMM_OptionsTabbedFrameGeneralPopOnSend:SetChecked(KGMM_Data.popOnSend);
		KGMM_OptionsTabbedFrameGeneralShowAFK:SetChecked(KGMM_Data.showAFK);
		KGMM_OptionsTabbedFrameGeneralUseEscape:SetChecked(KGMM_Data.useEscape);
		KGMM_OptionsTabbedFrameGeneralInterceptSlashWisp:SetChecked(KGMM_Data.hookWispParse);
		
	--[ Window Settings
		KGMM_OptionsTabbedFrameWindowWindowWidthTitle:SetText("Window Width");
		KGMM_OptionsTabbedFrameWindowWindowWidth:SetValue(KGMM_Data.winSize.width);
		KGMM_OptionsTabbedFrameWindowWindowHeightTitle:SetText("Window Height");
		KGMM_OptionsTabbedFrameWindowWindowHeight:SetValue(KGMM_Data.winSize.height);
		KGMM_OptionsTabbedFrameWindowWindowCascade:SetChecked(KGMM_Data.winCascade.enabled);
		
	--[ Filter Settings
		KGMM_OptionsTabbedFrameFilterAliasEnabled:SetChecked(KGMM_Data.enableAlias);
		KGMM_OptionsTabbedFrameFilterFilteringEnabled:SetChecked(KGMM_Data.enableFilter);
		KGMM_OptionsTabbedFrameFilterAliasShowAsComment:SetChecked(KGMM_Data.aliasAsComment);
		
	--[ History
		KGMM_OptionsTabbedFrameHistoryEnabled:SetChecked(KGMM_Data.enableHistory);
		KGMM_OptionsTabbedFrameHistoryRecordEveryone:SetChecked(KGMM_Data.historySettings.recordEveryone);
		KGMM_OptionsTabbedFrameHistoryRecordFriends:SetChecked(KGMM_Data.historySettings.recordFriends);
		KGMM_OptionsTabbedFrameHistoryRecordGuild:SetChecked(KGMM_Data.historySettings.recordGuild);
		KGMM_Options_HistoryRecordEveryoneClicked();
		KGMM_Options_CurrentSwatch = "KGMM_OptionsTabbedFrameHistoryColorIn";
		tRGB = KGMM_Data.historySettings.colorIn;
		KGMM_Options_UpdateSwatchColor(tRGB.r, tRGB.g, tRGB.b);
		KGMM_Options_CurrentSwatch = "KGMM_OptionsTabbedFrameHistoryColorOut";
		tRGB = KGMM_Data.historySettings.colorOut;
		KGMM_Options_UpdateSwatchColor(tRGB.r, tRGB.g, tRGB.b);
		KGMM_OptionsTabbedFrameHistoryShowInMessage:SetChecked(KGMM_Data.historySettings.popWin.enabled);
		KGMM_OptionsTabbedFrameHistorySetMaxToStore:SetChecked(KGMM_Data.historySettings.maxMsg.enabled);
		KGMM_OptionsTabbedFrameHistorySetAutoDelete:SetChecked(KGMM_Data.historySettings.autoDelete.enabled);
	--[ Other
		
		KGMM_Options_ShowShortcutBarClicked();
		KGMM_HistoryScrollBar_Update();
		
	if(not KGMM_Options_AlreadyShown) then
		KGMM_Options_General_Click();
		KGMM_Options_AlreadyShown = true;
	end
end


function KGMM_Options_ShowMiniMapClick()
	if(KGMM_OptionsMiniMapEnabled:GetChecked()) then
		KGMM_Data.showMiniMap = true;
		if(KGMM_Data.miniFreeMoving.enabled) then
			KGMM_IconFrame:SetPoint("TOPLEFT", "UIParent", "BOTTOMLEFT",KGMM_Data.miniFreeMoving.left,KGMM_Data.miniFreeMoving.top);
			KGMM_IconFrame:Show();
			return;
		end
	else
		KGMM_Data.showMiniMap = false;
	end
	KGMM_Icon_UpdatePosition();
end

function KGMM_Options_OpenColorPicker(button)
	CloseMenus();
	KGMM_Options_CurrentSwatch = button:GetName();
	ColorPickerFrame.hasOpacity = false;
	ColorPickerFrame.func = KGMM_Options_ColorPickerChanged;
	ColorPickerFrame:SetColorRGB(button.r, button.g, button.b);
	ColorPickerFrame.previousValues = {button.r, button.g, button.b};
	ColorPickerFrame.cancelFunc = KGMM_Options_ColorPickerCanceled;
	ColorPickerFrame:SetFrameStrata("DIALOG");
	ColorPickerFrame:Show();
end
function gmChatOff_OnClick()
	if 	gmChatShow:GetChecked(false) then 
		chat:Show()
		chat2:Show()
		chat5:Hide()
	else
		chat:Hide()
		chat2:Hide()
		chat5:Show()	
		end
end
function gmset1Open_OnClick()
	if kBarOption:IsVisible() then
		kBarOption:Hide();	
	else
		kBarOption:Show()	
	end
end
function gmset2Open_OnClick()
	if KGMM_Options:IsVisible() then
		KGMM_Options:Hide();	
	else
		KGMM_Options:Show()	
	end
end
function KGMM_Options_ColorPickerChanged()
	local r,g,b = ColorPickerFrame:GetColorRGB();
	KGMM_Options_UpdateSwatchColor(r,g,b);
end

function KGMM_Options_ColorPickerCanceled(prevvals)
	local r,g,b = unpack(prevvals)
	KGMM_Options_UpdateSwatchColor(r,g,b);
end


function KGMM_Options_UpdateSwatchColor(r,g,b)
	if(KGMM_Options_CurrentSwatch == "KGMM_OptionsDisplayIncomingWisp") then
		KGMM_Data.displayColors.wispIn.r = r;
		KGMM_Data.displayColors.wispIn.g = g;
		KGMM_Data.displayColors.wispIn.b = b;
	elseif(KGMM_Options_CurrentSwatch == "KGMM_OptionsDisplayOutgoingWisp") then
		KGMM_Data.displayColors.wispOut.r = r;
		KGMM_Data.displayColors.wispOut.g = g;
		KGMM_Data.displayColors.wispOut.b = b;
	elseif(KGMM_Options_CurrentSwatch == "KGMM_OptionsDisplaySystemMessage") then
		KGMM_Data.displayColors.sysMsg.r = r;
		KGMM_Data.displayColors.sysMsg.g = g;
		KGMM_Data.displayColors.sysMsg.b = b;
	elseif(KGMM_Options_CurrentSwatch == "KGMM_OptionsDisplayErrorMessage") then
		KGMM_Data.displayColors.errorMsg.r = r;
		KGMM_Data.displayColors.errorMsg.g = g;
		KGMM_Data.displayColors.errorMsg.b = b;
	elseif(KGMM_Options_CurrentSwatch == "KGMM_OptionsDisplayWebAddress") then
		KGMM_Data.displayColors.webAddress.r = r;
		KGMM_Data.displayColors.webAddress.g = g;
		KGMM_Data.displayColors.webAddress.b = b;
	elseif(KGMM_Options_CurrentSwatch == "KGMM_OptionsTabbedFrameHistoryColorIn") then
		KGMM_Data.historySettings.colorIn.r = r;
		KGMM_Data.historySettings.colorIn.g = g;
		KGMM_Data.historySettings.colorIn.b = b;
	elseif(KGMM_Options_CurrentSwatch == "KGMM_OptionsTabbedFrameHistoryColorOut") then
		KGMM_Data.historySettings.colorOut.r = r;
		KGMM_Data.historySettings.colorOut.g = g;
		KGMM_Data.historySettings.colorOut.b = b;
	end

	getglobal(KGMM_Options_CurrentSwatch).r = r;
	getglobal(KGMM_Options_CurrentSwatch).g = g;
	getglobal(KGMM_Options_CurrentSwatch).b = b;
	getglobal(KGMM_Options_CurrentSwatch.."_ColorSwatchNormalTexture"):SetVertexColor(r,g,b);
end

function KGMM_Options_General_Click()
	PanelTemplates_SelectTab(KGMM_OptionsOptionTab1);
	PanelTemplates_DeselectTab(KGMM_OptionsOptionTab2);
	PanelTemplates_DeselectTab(KGMM_OptionsOptionTab3);
	PanelTemplates_DeselectTab(KGMM_OptionsOptionTab4);
	KGMM_OptionsTabbedFrameGeneral:Show();
	KGMM_OptionsTabbedFrameWindow:Hide();
	KGMM_OptionsTabbedFrameFilter:Hide();
	KGMM_OptionsTabbedFrameHistory:Hide();
	KGMM_Options_GeneralScroll:Show();
end

function KGMM_Options_Windows_Click()
	PanelTemplates_SelectTab(KGMM_OptionsOptionTab2);
	PanelTemplates_DeselectTab(KGMM_OptionsOptionTab1);
	PanelTemplates_DeselectTab(KGMM_OptionsOptionTab3);
	PanelTemplates_DeselectTab(KGMM_OptionsOptionTab4);
	KGMM_OptionsTabbedFrameGeneral:Hide();
	KGMM_OptionsTabbedFrameFilter:Hide();
	KGMM_OptionsTabbedFrameHistory:Hide();
	KGMM_OptionsTabbedFrameWindow:Show();
	KGMM_Options_GeneralScroll:Hide();
end

function KGMM_Options_Filter_Click()
	PanelTemplates_SelectTab(KGMM_OptionsOptionTab3);
	PanelTemplates_DeselectTab(KGMM_OptionsOptionTab1);
	PanelTemplates_DeselectTab(KGMM_OptionsOptionTab2);
	PanelTemplates_DeselectTab(KGMM_OptionsOptionTab4);
	KGMM_OptionsTabbedFrameGeneral:Hide();
	KGMM_OptionsTabbedFrameWindow:Hide();
	KGMM_OptionsTabbedFrameHistory:Hide();
	KGMM_OptionsTabbedFrameFilter:Show();
	KGMM_Options_GeneralScroll:Hide();
end

function KGMM_Options_History_Click()
	PanelTemplates_SelectTab(KGMM_OptionsOptionTab4);
	PanelTemplates_DeselectTab(KGMM_OptionsOptionTab1);
	PanelTemplates_DeselectTab(KGMM_OptionsOptionTab2);
	PanelTemplates_DeselectTab(KGMM_OptionsOptionTab3);
	KGMM_OptionsTabbedFrameGeneral:Hide();
	KGMM_OptionsTabbedFrameWindow:Hide();
	KGMM_OptionsTabbedFrameFilter:Hide();
	KGMM_OptionsTabbedFrameHistory:Show();
	KGMM_Options_GeneralScroll:Hide();
end

function KGMM_Options_SupressWispsClicked()
	if(KGMM_OptionsTabbedFrameGeneralSupress:GetChecked()) then
		KGMM_Data.supressWisps = true;
	else
		KGMM_Data.supressWisps = false;
	end
end

function KGMM_Options_KeepFocusClicked()
	if(KGMM_OptionsTabbedFrameGeneralKeepFocus:GetChecked()) then
		KGMM_Data.keepFocus = true;
	else
		KGMM_Data.keepFocus = false;
	end
end


function KGMM_Options_keepmenuClicked()
	if(KGMM_OptionsTabbedFrameGeneralkeepmenu:GetChecked()) then
		KGMM_Data.keepmenu = true;
	else
		KGMM_Data.keepmenu = false;
	end
end

function KGMM_Options_keepmenuClicked2()
	if(parentkeepmenu2:GetChecked()) then
		KGMM_Data.keepmenu = true;
		btnGmChar:Show()
		btnGmSpell:Show()
		btnGmTalent:Show()
		btnGmQuest:Show()
		btnGmSocial:Show()
		btnGmWorld:Show()
		btnGmMenu:Show()
		btnGmHelp:Show()
		btnGmBag:Show()
		KGMM_OptionsTabbedFrameGeneralkeepmenu:SetChecked(true)		
	else
		KGMM_Data.keepmenu = false;
		btnGmChar:Hide()
		btnGmSpell:Hide()
		btnGmTalent:Hide()
		btnGmQuest:Hide()
		btnGmSocial:Hide()
		btnGmWorld:Hide()
		btnGmMenu:Hide()
		btnGmHelp:Hide()
		btnGmBag:Hide()		
		KGMM_OptionsTabbedFrameGeneralkeepmenu:SetChecked(false)		
		end
	end
	
function KGMM_Options_keepmenuClicked3()
	if parentPopCombat2:SetChecked(true) then
		KGMM_OptionsTabbedFrameGeneralkeepmenu:SetChecked(true)
	elseif parentPopCombat2:SetChecked(false) then
		KGMM_OptionsTabbedFrameGeneralkeepmenu:SetChecked(false)
		end
	end	

function KGMM_Options_KeepFocusRestedClicked()
	if(KGMM_OptionsTabbedFrameGeneralKeepFocusRested:GetChecked()) then
		KGMM_Data.keepFocusRested = true;
	else
		KGMM_Data.keepFocusRested = false;
	end
end

function KGMM_Options_AutoFocusClicked()
	if(KGMM_OptionsTabbedFrameGeneralAutoFocus:GetChecked()) then
		KGMM_Data.autoFocus = true;
	else
		KGMM_Data.autoFocus = false;
	end
end

function KGMM_Options_PopNewClicked()
	if(KGMM_OptionsTabbedFrameGeneralPopNew:GetChecked()) then
		KGMM_Data.popNew = true;
		KGMM_OptionsTabbedFrameGeneralPopUpdate:Enable();
	else
		KGMM_Data.popNew = false;
		KGMM_OptionsTabbedFrameGeneralPopUpdate:Disable();
	end
end

function KGMM_Options_PopUpdateClicked()
	if(KGMM_OptionsTabbedFrameGeneralPopUpdate:GetChecked()) then
		KGMM_Data.popUpdate = true;
	else
		KGMM_Data.popUpdate = false;
	end
end

function KGMM_Options_PopOnSendClicked()
	if(KGMM_OptionsTabbedFrameGeneralPopOnSend:GetChecked()) then
		KGMM_Data.popOnSend = true;
	else
		KGMM_Data.popOnSend = false;
	end
end

function KGMM_Options_PlaySoundWispClicked()
	if(KGMM_OptionsTabbedFrameGeneralPlaySoundWisp:GetChecked()) then
		KGMM_Data.playSoundWisp = true;
	else
		KGMM_Data.playSoundWisp = false;
	end
end

function KGMM_Options_ShowToolTipsClicked()
	if(KGMM_OptionsTabbedFrameGeneralShowToolTips:GetChecked()) then
		KGMM_Data.showToolTips = true;
	else
		KGMM_Data.showToolTips = false;
	end
end

function KGMM_Options_SortOrderAlphaClicked()
	if(KGMM_OptionsTabbedFrameGeneralSortOrderAlpha:GetChecked()) then
		KGMM_Data.sortAlpha = true;
	else
		KGMM_Data.sortAlpha = false;
	end
	KGMM_Icon_DropDown_Update();
end

function KGMM_Options_ShowAFKClicked()
	if(KGMM_OptionsTabbedFrameGeneralShowAFK:GetChecked()) then
		KGMM_Data.showAFK = true;
	else
		KGMM_Data.showAFK = false;
	end
end

function KGMM_Options_UseEscapeClicked()
	if(KGMM_OptionsTabbedFrameGeneralUseEscape:GetChecked()) then
		KGMM_Data.useEscape = true;
	else
		KGMM_Data.useEscape = false;
	end
	KGMM_SetAllWindowProps();
end

function KGMM_Options_InterceptSlashWispClicked()
	if(KGMM_OptionsTabbedFrameGeneralInterceptSlashWisp:GetChecked()) then
		KGMM_Data.hookWispParse = true;
	else
		KGMM_Data.hookWispParse = false;
	end
end

function KGMM_Options_FreeMoving_Clicked()
	if(KGMM_OptionsMiniMapFreeMoving:GetChecked()) then
		KGMM_Data.miniFreeMoving.enabled = true;
		KGMM_Data.miniFreeMoving.left = KGMM_IconFrame:GetLeft();
		KGMM_Data.miniFreeMoving.top = KGMM_IconFrame:GetTop();
		KGMM_IconFrame:ClearAllPoints();
		KGMM_IconFrame:SetFrameStrata("HIGH");
		KGMM_IconFrame:SetPoint("TOPLEFT", "UIParent", "BOTTOMLEFT", KGMM_Data.miniFreeMoving.left, KGMM_Data.miniFreeMoving.top);
	else
		KGMM_IconFrame:SetFrameStrata("LOW");
		KGMM_Data.miniFreeMoving.enabled = false;
		KGMM_Icon_UpdatePosition();
	end
end

function KGMM_Options_PopCombatClicked()
	if(KGMM_OptionsTabbedFrameGeneralPopCombat:GetChecked()) then
		KGMM_Data.popCombat = true;
		chat:Show()
		chat2:Show()
		chat5:Hide()
		parentPopCombat2:SetChecked(true)		
	else
		KGMM_Data.popCombat = false;
		chat:Hide()
		chat2:Hide()
		chat5:Show()
		parentPopCombat2:SetChecked(false)		
	end
end
function KGMM_Options_PopCombatClicked2()
	if(parentPopCombat2:GetChecked()) then
		KGMM_Data.popCombat = true;
		chat:Show()
		chat2:Show()
		chat5:Hide()
		KGMM_OptionsTabbedFrameGeneralPopCombat:SetChecked(true)		
	else
		KGMM_Data.popCombat = false;
		chat:Hide()
		chat2:Hide()
		chat5:Show()
		KGMM_OptionsTabbedFrameGeneralPopCombat:SetChecked(false)		
		end
	end
function KGMM_Options_PopCombatClicked3()
	if parentPopCombat2:SetChecked(true) then
		KGMM_OptionsTabbedFrameGeneralPopCombat:SetChecked(true)
	elseif parentPopCombat2:SetChecked(false) then
		KGMM_OptionsTabbedFrameGeneralPopCombat:SetChecked(false)
		end
	end	
function KGMM_Options_CharacerInfoClicked()
	if(KGMM_OptionsDisplayShowCharacterInfo:GetChecked()) then
		KGMM_Data.characterInfo.show = true;
		KGMM_OptionsDisplayShowCharacterInfoClassIcon:Enable();
		KGMM_OptionsDisplayShowCharacterInfoClassColor:Enable();
	else
		KGMM_Data.characterInfo.show = false;
		KGMM_OptionsDisplayShowCharacterInfoClassIcon:Disable();
		KGMM_OptionsDisplayShowCharacterInfoClassColor:Disable();
	end
end

function KGMM_Options_CharacerInfoClassIconClicked()
	if(KGMM_OptionsDisplayShowCharacterInfoClassIcon:GetChecked()) then
		KGMM_Data.characterInfo.classIcon = true;
	else
		KGMM_Data.characterInfo.classIcon = false;
	end
end

function KGMM_Options_CharacerInfoClassColorClicked()
	if(KGMM_OptionsDisplayShowCharacterInfoClassColor:GetChecked()) then
		KGMM_Data.characterInfo.classColor = true;
	else
		KGMM_Data.characterInfo.classColor = false;
	end
end

function KGMM_Options_CharacerInfoDetailsClicked()
	if(KGMM_OptionsDisplayShowCharacterInfoDetails:GetChecked()) then
		KGMM_Data.characterInfo.details = true;
	else
		KGMM_Data.characterInfo.details = false;
	end
end

function KGMM_Options_ShowTimeStampsClicked()
	if(KGMM_OptionsDisplayShowTimeStamps:GetChecked()) then
		KGMM_Data.showTimeStamps = true;
	else
		KGMM_Data.showTimeStamps = false;
	end
end

function KGMM_Options_EnableKGMMClicked()
	if(KGMM_OptionsEnableKGMM:GetChecked()) then
		KGMM_Data.enableKGMM = true;
	else
		KGMM_Data.enableKGMM = false;
	end
	KGMM_SetKGMM_Enabled(KGMM_Data.enableKGMM);
end

function KGMM_Options_ShowShortcutBarClicked()
	if(KGMM_OptionsDisplayShowShortcutBar:GetChecked()) then
		KGMM_Data.showShortcutBar = true;
		KGMM_OptionsTabbedFrameWindowWindowHeightTitle:SetText("Window Height |cffffffff(Limited by shortcut bar)|r");
	else
		KGMM_Data.showShortcutBar = false;
		KGMM_OptionsTabbedFrameWindowWindowHeightTitle:SetText("Window Height");
	end
	KGMM_SetAllWindowProps();
end

function KGMM_AliasScrollBar_Update()
	local line;
	local lineplusoffset;
	local AliasNames = {};
	
	for key in KGMM_Alias do
		table.insert(AliasNames, key);
	end
	
	FauxScrollFrame_Update(KGMM_OptionsTabbedFrameFilterAliasPanelScrollBar,table.getn(AliasNames),5,16);
	for line=1,5 do
		lineplusoffset = line + FauxScrollFrame_GetOffset(KGMM_OptionsTabbedFrameFilterAliasPanelScrollBar);
		if (lineplusoffset <= table.getn(AliasNames)) then
			getglobal("KGMM_OptionsTabbedFrameFilterAliasPanelButton"..line.."Name"):SetText(AliasNames[lineplusoffset]);
			getglobal("KGMM_OptionsTabbedFrameFilterAliasPanelButton"..line.."Alias"):SetText(KGMM_Alias[AliasNames[lineplusoffset]]);
			getglobal("KGMM_OptionsTabbedFrameFilterAliasPanelButton"..line).theAliasName = AliasNames[lineplusoffset];
			if ( KGMM_Alias_Selected == AliasNames[lineplusoffset] ) then
				getglobal("KGMM_OptionsTabbedFrameFilterAliasPanelButton"..line):LockHighlight();
			else
				getglobal("KGMM_OptionsTabbedFrameFilterAliasPanelButton"..line):UnlockHighlight();
			end
			getglobal("KGMM_OptionsTabbedFrameFilterAliasPanelButton"..line):Show();
		else
			getglobal("KGMM_OptionsTabbedFrameFilterAliasPanelButton"..line):Hide();
		end
	end

end

function KGMM_Options_AliasWindow_Click()
	local name = KGMM_Options_AliasWindow_Name:GetText();
	local alias = KGMM_Options_AliasWindow_Alias:GetText();
	
	name = string.gsub(name, " ", "");
	name = string.gsub(name, "^%l", string.upper)
	alias = string.gsub(alias, " ", "");
	
	if(name == "") then
		KGMM_Options_AliasWindow_Error:SetText("ERROR: Invalid name!");
		return;
	end
	if(alias == "") then
		KGMM_Options_AliasWindow_Error:SetText("ERROR: Invalid alias!");
		return;
	end
	if(KGMM_Options_AliasWindow.theMode == "add" and KGMM_Alias[name] ~= nil) then
		KGMM_Options_AliasWindow_Error:SetText("ERROR: Name is already used!");
		return;
	end
	
	KGMM_Alias[name] = alias;
	
	if(KGMM_Options_AliasWindow.theMode == "edit" and name ~= KGMM_Options_AliasWindow.prevName)then
		KGMM_Alias[KGMM_Options_AliasWindow.prevName] = nil;
	end

	
	KGMM_AliasScrollBar_Update();
	PlaySound("igMainMenuClose");
	KGMM_Options_AliasWindow:Hide();
end


function KGMM_Options_AliasEnabledClicked()
	if(KGMM_OptionsTabbedFrameFilterAliasEnabled:GetChecked()) then
		KGMM_Data.enableAlias = true;
	else
		KGMM_Data.enableAlias = false;
	end
end

function KGMM_Options_FilteringEnabledClicked()
	if(KGMM_OptionsTabbedFrameFilterFilteringEnabled:GetChecked()) then
		KGMM_Data.enableFilter = true;
	else
		KGMM_Data.enableFilter = false;
	end
end

function KGMM_FilteringScrollBar_Update()
	local line;
	local lineplusoffset;
	local FilteringNames = {};
	
	for key in KGMM_Filters do
		table.insert(FilteringNames, key);
	end
	
	FauxScrollFrame_Update(KGMM_OptionsTabbedFrameFilterFilteringPanelScrollBar,table.getn(FilteringNames),5,16);
	for line=1,5 do
		lineplusoffset = line + FauxScrollFrame_GetOffset(KGMM_OptionsTabbedFrameFilterFilteringPanelScrollBar);
		if lineplusoffset <= table.getn(FilteringNames) then
			getglobal("KGMM_OptionsTabbedFrameFilterFilteringPanelButton"..line.."Name"):SetText(FilteringNames[lineplusoffset]);
			getglobal("KGMM_OptionsTabbedFrameFilterFilteringPanelButton"..line.."Action"):SetText(KGMM_Filters[FilteringNames[lineplusoffset]]);
			getglobal("KGMM_OptionsTabbedFrameFilterFilteringPanelButton"..line).theFilterName = FilteringNames[lineplusoffset];
			if ( KGMM_Filter_Selected == FilteringNames[lineplusoffset] ) then
				getglobal("KGMM_OptionsTabbedFrameFilterFilteringPanelButton"..line):LockHighlight();
			else
				getglobal("KGMM_OptionsTabbedFrameFilterFilteringPanelButton"..line):UnlockHighlight();
			end
			getglobal("KGMM_OptionsTabbedFrameFilterFilteringPanelButton"..line):Show();
		else
			getglobal("KGMM_OptionsTabbedFrameFilterFilteringPanelButton"..line):Hide();
		end
	end

end


function KGMM_Options_FilteringIgnoreClicked()
	if(KGMM_Options_FilterWindow_ActionIgnore:GetChecked()) then
		KGMM_Options_FilterWindow.theAction = "Ignore";
		KGMM_Options_FilterWindow_ActionBlock:SetChecked(false);
	else
		KGMM_Options_FilterWindow_ActionBlock:SetChecked(true);
	end
end

function KGMM_Options_FilteringBlockClicked()
	if(KGMM_Options_FilterWindow_ActionBlock:GetChecked()) then
		KGMM_Options_FilterWindow.theAction = "Block";
		KGMM_Options_FilterWindow_ActionIgnore:SetChecked(false);
	else
		KGMM_Options_FilterWindow_ActionIgnore:SetChecked(true);
	end
end

function KGMM_Options_FilterWindow_Click()
	local name = KGMM_Options_FilterWindow_Name:GetText();
	local action = KGMM_Options_FilterWindow.theAction;
	
	local tname = string.gsub(name, " ", "");
	
	if(tname == "") then
		KGMM_Options_FilterWindow_Error:SetText("ERROR: Invalid Keyword/Phrase!");
		return;
	end
	if(KGMM_Options_FilterWindow.theMode == "add" and KGMM_Filters[name] ~= nil) then
		KGMM_Options_FilterWindow_Error:SetText("ERROR: Keyword/Phrase is already used!");
		return;
	end
	
	KGMM_Filters[name] = action;
	
	if(KGMM_Options_FilterWindow.theMode == "edit" and name ~= KGMM_Options_FilterWindow.prevName)then
		KGMM_Filters[KGMM_Options_FilterWindow.prevName] = nil;
	end
	
	KGMM_FilteringScrollBar_Update();
	PlaySound("igMainMenuClose");
	KGMM_Options_FilterWindow:Hide();
end

function KGMM_Options_AliasShowAsCommentClicked()
	if(KGMM_OptionsTabbedFrameFilterAliasShowAsComment:GetChecked()) then
		KGMM_Data.aliasAsComment = true;
	else
		KGMM_Data.aliasAsComment = false;
	end
end

function KGMM_Options_HistoryEnabledClicked()
	if(KGMM_OptionsTabbedFrameHistoryEnabled:GetChecked()) then
		KGMM_Data.enableHistory = true;
	else
		KGMM_Data.enableHistory = false;
	end
end

function KGMM_Options_HistoryRecordEveryoneClicked()
	if(KGMM_OptionsTabbedFrameHistoryRecordEveryone:GetChecked()) then
		KGMM_Data.historySettings.recordEveryone = true;
		KGMM_OptionsTabbedFrameHistoryRecordFriends:Disable();
		KGMM_OptionsTabbedFrameHistoryRecordGuild:Disable();
	else
		KGMM_Data.historySettings.recordEveryone = false;
		KGMM_OptionsTabbedFrameHistoryRecordFriends:Enable();
		KGMM_OptionsTabbedFrameHistoryRecordGuild:Enable();
	end
end

function KGMM_Options_HistoryRecordFriendsClicked()
	if(KGMM_OptionsTabbedFrameHistoryRecordFriends:GetChecked()) then
		KGMM_Data.historySettings.recordFriends = true;
	else
		KGMM_Data.historySettings.recordFriends = false;
	end
end

function KGMM_Options_HistoryRecordGuildClicked()
	if(KGMM_OptionsTabbedFrameHistoryRecordGuild:GetChecked()) then
		KGMM_Data.historySettings.recordGuild = true;
	else
		KGMM_Data.historySettings.recordGuild = false;
	end
end

function KGMM_Options_HistoryShowInMessageClicked()
	if(KGMM_OptionsTabbedFrameHistoryShowInMessage:GetChecked()) then
		KGMM_Data.historySettings.popWin.enabled = true;
	else
		KGMM_Data.historySettings.popWin.enabled = false;
	end
end

function KGMM_Options_HistorySetMaxToStoreClicked()
	if(KGMM_OptionsTabbedFrameHistorySetMaxToStore:GetChecked()) then
		KGMM_Data.historySettings.maxMsg.enabled = true;
	else
		KGMM_Data.historySettings.maxMsg.enabled = false;
	end
end

function KGMM_Options_HistorySetAutoDeleteClicked()
	if(KGMM_OptionsTabbedFrameHistorySetAutoDelete:GetChecked()) then
		KGMM_Data.historySettings.autoDelete.enabled = true;
	else
		KGMM_Data.historySettings.autoDelete.enabled = false;
	end
end

function KGMM_Options_HistoryMessageCount_OnShow()
	UIDropDownMenu_Initialize(this, KGMM_Options_HistoryMessageCount_Initialize);
	UIDropDownMenu_SetSelectedValue(this, KGMM_Data.historySettings.popWin.count);
	UIDropDownMenu_SetWidth(60, KGMM_OptionsTabbedFrameHistoryMessageCount);
end

function KGMM_Options_HistoryMessageCount_Initialize()
	local info = {};
	info = { };
	info.text = "1";--.."           "; --[spaces for quick width fix
	info.value = 1;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryMessageClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "5";
	info.value = 5;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryMessageClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "10";
	info.value = 10;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryMessageClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "25";
	info.value = 25;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryMessageClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "50";
	info.value = 50;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryMessageClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
end

function KGMM_Options_HistoryMessageClick()
	KGMM_Data.historySettings.popWin.count = this.value;
	UIDropDownMenu_SetSelectedValue(KGMM_OptionsTabbedFrameHistoryMessageCount, KGMM_Data.historySettings.popWin.count);
end

function KGMM_Options_HistoryMaxCount_OnShow()
	UIDropDownMenu_Initialize(this, KGMM_Options_HistoryMaxCount_Initialize);
	UIDropDownMenu_SetSelectedValue(this, KGMM_Data.historySettings.maxMsg.count);
	UIDropDownMenu_SetWidth(60, KGMM_OptionsTabbedFrameHistoryMaxCount);
end

function KGMM_Options_HistoryMaxCount_Initialize()
	local info = {};
	info = { };
	info.text = "50";--.."           "; --[spaces for quick width fix
	info.value = 50;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryMaxClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "100";
	info.value = 100;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryMaxClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "200";
	info.value = 200;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryMaxClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "300";
	info.value = 300;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryMaxClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "400";
	info.value = 400;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryMaxClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "500";
	info.value = 500;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryMaxClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
end

function KGMM_Options_HistoryMaxClick()
	KGMM_Data.historySettings.maxMsg.count = this.value;
	UIDropDownMenu_SetSelectedValue(KGMM_OptionsTabbedFrameHistoryMaxCount, KGMM_Data.historySettings.maxMsg.count);
end

function KGMM_Options_HistoryAutoDeleteTime_OnShow()
	UIDropDownMenu_Initialize(this, KGMM_Options_HistoryAutoDeleteTime_Initialize);
	UIDropDownMenu_SetSelectedValue(this, KGMM_Data.historySettings.autoDelete.days);
	UIDropDownMenu_SetWidth(75, KGMM_OptionsTabbedFrameHistoryAutoDeleteTime);
end

function KGMM_Options_HistoryAutoDeleteTime_Initialize()
	local info = {};
	info = { };
	info.text = "Day";--.."           "; --[spaces for quick width fix
	info.value = 1;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryAutoDeleteTimeClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "Week";
	info.value = 7;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryAutoDeleteTimeClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "Month";
	info.value = 30;
	info.justifyH = "LEFT";
	info.func = KGMM_Options_HistoryAutoDeleteTimeClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
end

function KGMM_Options_HistoryAutoDeleteTimeClick()
	KGMM_Data.historySettings.autoDelete.days = this.value;
	UIDropDownMenu_SetSelectedValue(KGMM_OptionsTabbedFrameHistoryAutoDeleteTime, KGMM_Data.historySettings.autoDelete.days);
end

function KGMM_HistoryScrollBar_Update()
	local line;
	local lineplusoffset;
	local HistoryNames = {};
	
	for key in KGMM_History do
		table.insert(HistoryNames, key);
	end
	table.sort(HistoryNames);
	
	FauxScrollFrame_Update(KGMM_OptionsTabbedFrameHistoryPanelScrollBar,table.getn(HistoryNames),5,16);
	for line=1,5 do
		lineplusoffset = line + FauxScrollFrame_GetOffset(KGMM_OptionsTabbedFrameHistoryPanelScrollBar);
		if lineplusoffset <= table.getn(HistoryNames) then
			getglobal("KGMM_OptionsTabbedFrameHistoryPanelButton"..line.."Name"):SetText(HistoryNames[lineplusoffset]);
			getglobal("KGMM_OptionsTabbedFrameHistoryPanelButton"..line.."MessageCount"):SetText(table.getn(KGMM_History[HistoryNames[lineplusoffset]]));
			getglobal("KGMM_OptionsTabbedFrameHistoryPanelButton"..line).theName = HistoryNames[lineplusoffset];
			if ( KGMM_History_Selected == HistoryNames[lineplusoffset] ) then
				getglobal("KGMM_OptionsTabbedFrameHistoryPanelButton"..line):LockHighlight();
			else
				getglobal("KGMM_OptionsTabbedFrameHistoryPanelButton"..line):UnlockHighlight();
			end
			getglobal("KGMM_OptionsTabbedFrameHistoryPanelButton"..line):Show();
		else
			getglobal("KGMM_OptionsTabbedFrameHistoryPanelButton"..line):Hide();
		end
	end
end

function KGMM_Options_WindowAnchorToggle_Click()
	if(KGMM_WindowAnchor:IsVisible()) then
		KGMM_WindowAnchor:Hide();
		GameTooltip:Hide();
	else
		KGMM_WindowAnchor:SetPoint(
			"TOPLEFT",
			"UIParent",
			"BOTTOMLEFT",
			KGMM_Data.winLoc.left, 
			KGMM_Data.winLoc.top
		);
		KGMM_WindowAnchor:Show();
		GameTooltip:SetOwner(KGMM_WindowAnchor, "ANCHOR_RIGHT");
		GameTooltip:SetText("Drag to set default spawn\nposition for message windows.");
	end
end

function KGMM_Options_WindowCascadeClicked()
	if(KGMM_OptionsTabbedFrameWindowWindowCascade:GetChecked()) then
		KGMM_Data.winCascade.enabled = true;
	else
		KGMM_Data.winCascade.enabled = false;
	end
end

function KGMM_Options_CascadeDirection_OnShow()
	UIDropDownMenu_Initialize(this, KGMM_Options_CascadeDirection_Initialize);
	UIDropDownMenu_SetSelectedValue(this, KGMM_Data.winCascade.direction);
	UIDropDownMenu_SetWidth(100, KGMM_OptionsTabbedFrameWindowCascadeDirection);
end

function KGMM_Options_CascadeDirection_Initialize()
	local info = {};
	info = { };
	info.text = "Up";
	info.value = "up";
	info.justifyH = "LEFT";
	info.func = KGMM_Options_CascadeDirectionClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "Down";
	info.value = "down";
	info.justifyH = "LEFT";
	info.func = KGMM_Options_CascadeDirectionClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "Left";
	info.value = "left";
	info.justifyH = "LEFT";
	info.func = KGMM_Options_CascadeDirectionClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "Right";
	info.value = "right";
	info.justifyH = "LEFT";
	info.func = KGMM_Options_CascadeDirectionClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "Up & Left";
	info.value = "upleft";
	info.justifyH = "LEFT";
	info.func = KGMM_Options_CascadeDirectionClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "Up & Right";
	info.value = "upright";
	info.justifyH = "LEFT";
	info.func = KGMM_Options_CascadeDirectionClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "Down & Left";
	info.value = "downleft";
	info.justifyH = "LEFT";
	info.func = KGMM_Options_CascadeDirectionClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
	info = { };
	info.text = "Down & Right";
	info.value = "downright";
	info.justifyH = "LEFT";
	info.func = KGMM_Options_CascadeDirectionClick;
	UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
end

function KGMM_Options_CascadeDirectionClick()
	KGMM_Data.winCascade.direction = this.value;
	KGMM_CascadeStep = 0;
	UIDropDownMenu_SetSelectedValue(KGMM_OptionsTabbedFrameWindowCascadeDirection, KGMM_Data.winCascade.direction);
end

function KGMM_Help_ChangeLog_Click()
	PanelTemplates_SelectTab(KGMM_HelpTab2);
	PanelTemplates_DeselectTab(KGMM_HelpTab1);
	PanelTemplates_DeselectTab(KGMM_HelpTab3);
	PanelTemplates_DeselectTab(KGMM_HelpTabCredits);
	
	KGMM_HelpScrollFrameScrollChildText:SetText(KGMM_CHANGE_LOG);
	KGMM_HelpScrollFrameScrollBar:SetValue(0);
	KGMM_HelpScrollFrame:UpdateScrollChildRect();
end

function KGMM_Help_Description_Click()
	PanelTemplates_SelectTab(KGMM_HelpTab1);
	PanelTemplates_DeselectTab(KGMM_HelpTab2);
	PanelTemplates_DeselectTab(KGMM_HelpTab3);
	PanelTemplates_DeselectTab(KGMM_HelpTabCredits);
	
	KGMM_HelpScrollFrameScrollChildText:SetText(KGMM_DESCRIPTION);
	KGMM_HelpScrollFrameScrollBar:SetValue(0);
	KGMM_HelpScrollFrame:UpdateScrollChildRect();
end

function KGMM_Help_DidYouKnow_Click()
	PanelTemplates_SelectTab(KGMM_HelpTab3);
	PanelTemplates_DeselectTab(KGMM_HelpTab1);
	PanelTemplates_DeselectTab(KGMM_HelpTab2);
	PanelTemplates_DeselectTab(KGMM_HelpTabCredits);
	
	KGMM_HelpScrollFrameScrollChildText:SetText(KGMM_DIDYOUKNOW);
	KGMM_HelpScrollFrameScrollBar:SetValue(0);
	KGMM_HelpScrollFrame:UpdateScrollChildRect();
end

function KGMM_Help_Credits_Click()
	PanelTemplates_SelectTab(KGMM_HelpTabCredits);
	PanelTemplates_DeselectTab(KGMM_HelpTab1);
	PanelTemplates_DeselectTab(KGMM_HelpTab2);
	PanelTemplates_DeselectTab(KGMM_HelpTab3);
	
	KGMM_HelpScrollFrameScrollChildText:SetText(KGMM_CREDITS);
	KGMM_HelpScrollFrameScrollBar:SetValue(0);
	KGMM_HelpScrollFrame:UpdateScrollChildRect();
end