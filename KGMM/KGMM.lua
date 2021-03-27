KGMM_VERSION = "3.1.11";

KGMM_Windows = {};
KGMM_EditBoxInFocus = nil;
KGMM_NewMessageFlag = false;
KGMM_NewMessageCount = 0;
KGMM_Icon_TheMenu = nil;
KGMM_Icon_UpdateInterval = .5;
KGMM_CascadeStep = 0;
KGMM_MaxMenuCount = 20;
KGMM_ClassIcons = {};
KGMM_ClassColors = {};

KGMM_AlreadyCheckedGuildRoster = false;

KGMM_GuildList = {}; --[Not saved between sessions: Autopopulates from GUILD_ROSTER_UPDATE event
KGMM_FriendList = {}; --[Not saved between sessions: Autopopulates from FRIENDLIST_SHOW & FRIENDLIST_UPDATE event

KGMM_Alias = {};
KGMM_Filters = nil;
	
KGMM_ToggleWindow_Timer = 0;
KGMM_ToggleWindow_Index = 1;

KGMM_RecentList = {}; --[Not saved between sessions: Store's list of recent conversations.
	
KGMM_History = {};

KGMM_Data_DEFAULTS = {
	versionLastLoaded = "",
	showChangeLogOnNewVersion = true,
	enableKGMM = true,
	iconPosition=337,
	showMiniMap=true,
	displayColors = {
		wispIn = {r=0.5607843137254902, g=0.03137254901960784, b=0.7607843137254902},
		wispOut = {r=1, g=0.07843137254901961, b=0.9882352941176471},
		sysMsg = {r=1, g=0.6627450980392157, b=0},
		errorMsg = {r=1, g=0, b=0},
		webAddress = {r=0, g=0, b=1},
	},
	fontSize = 12,
	windowSize = 1,
	windowAlpha = .8,
	supressWisps = true,
	keepFocus = false,
	keepFocusRested = false,
	keepmenu = true,
	popNew = true,
	popUpdate = true,
	popOnSend = true,
	popCombat = true,
	autoFocus = false,
	playSoundWisp = true,
	showToolTips = true,
	sortAlpha = true,
	winSize = {
		width = 384,
		height = 256
	},
	winLoc = {
		left =242 ,
		top =775
	},
	winCascade = {
		enabled = true,
		direction = "downright"
	},
	miniFreeMoving = {
		enabled = false;
		left = 0,
		top = 0
	},
	characterInfo = {
		show = true,
		classIcon = true,
		details = true,
		classColor = true
	},
	showTimeStamps = true,
	showShortcutBar = true,
	enableAlias = true,
	enableFilter = true,
	aliasAsComment = true,
	enableHistory = true,
	historySettings = {
		recordEveryone = false,
		recordFriends = true,
		recordGuild = true,
		colorIn = {
				r=0.4705882352941176,
				g=0.4705882352941176,
				b=0.4705882352941176
		},
		colorOut = {
				r=0.7058823529411764,
				g=0.7058823529411764,
				b=0.7058823529411764
		},
		popWin = {
			enabled = true,
			count = 25
		},
		maxMsg = {
			enabled = true,
			count = 200
		},
		autoDelete = {
			enabled = true,
			days = 7
		}
	},
	showAFK = true,
	useEscape = true,
	hookWispParse = true
};
--[initialize defualt values
KGMM_Data = KGMM_Data_DEFAULTS;

KGMM_CascadeDirection = {
	up = {
		left = 0,
		top = 25
	},
	down = {
		left = 0,
		top = -25
	},
	left = {
		left = -50,
		top = 0
	},
	right = {
		left = 50,
		top = 0
	},
	upleft = {
		left = -50,
		top = 25
	},
	upright = {
		left = 50,
		top = 25
	},
	downleft = {
		left = -50,
		top = -25
	},
	downright = {
		left = 50,
		top = -25
	}
};

KGMM_IconItems = { };

function KGMM_OnLoad()
	SlashCmdList["KGMA"] = KGMA_SlashCommand;
	SLASH_KGMA1 = "/KGMA";
	SlashCmdList["KGMM"] = KGMM_SlashCommand;
	SLASH_KGMM1 = "/KGMM";
end


function KGMM_Incoming(event)
	--[Events
	if(event == "VARIABLES_LOADED") then
	
		if(KGMM_Data.enableKGMM == nil) then KGMM_Data.enableKGMM = KGMM_Data_DEFAULTS.enableKGMM; end;
		if(KGMM_Data.versionLastLoaded == nil) then KGMM_Data.versionLastLoaded = ""; end;
		if(KGMM_Data.showChangeLogOnNewVersion == nil) then KGMM_Data.showChangeLogOnNewVersion = KGMM_Data_DEFAULTS.showChangeLogOnNewVersion; end;
		if(KGMM_Data.displayColors == nil) then KGMM_Data.displayColors = KGMM_Data_DEFAULTS.displayColors; end;
		if(KGMM_Data.displayColors.sysMsg == nil) then KGMM_Data.displayColors.sysMsg = KGMM_Data_DEFAULTS.displayColors.sysMsg; end;
		if(KGMM_Data.displayColors.errorMsg == nil) then KGMM_Data.displayColors.errorMsg = KGMM_Data_DEFAULTS.displayColors.errorMsg; end;
		if(KGMM_Data.fontSize == nil) then KGMM_Data.fontSize = KGMM_Data_DEFAULTS.fontSize; end;
		if(KGMM_Data.windowSize == nil) then KGMM_Data.windowSize = KGMM_Data_DEFAULTS.windowSize; end;
		if(KGMM_Data.windowAlpha == nil) then KGMM_Data.windowAlpha = KGMM_Data_DEFAULTS.windowAlpha; end;
		if(KGMM_Data.supressWisps == nil) then KGMM_Data.supressWisps = KGMM_Data_DEFAULTS.supressWisps; end;
		if(KGMM_Data.keepFocus == nil) then KGMM_Data.keepFocus = KGMM_Data_DEFAULTS.keepFocus; end;
		if(KGMM_Data.keepFocusRested == nil) then KGMM_Data.keepFocusRested = KGMM_Data_DEFAULTS.keepFocusRested; end;
		if(KGMM_Data.keepmenu == nil) then KGMM_Data.keepmenu = KGMM_Data_DEFAULTS.keepmenu; end;		
		if(KGMM_Data.popNew == nil) then KGMM_Data.popNew = KGMM_Data_DEFAULTS.popNew; end;
		if(KGMM_Data.popUpdate == nil) then KGMM_Data.popNew = KGMM_Data_DEFAULTS.popUpdate; end;
		if(KGMM_Data.autoFocus == nil) then KGMM_Data.autoFocus = KGMM_Data_DEFAULTS.autoFocus; end;
		if(KGMM_Data.playSoundWisp == nil) then KGMM_Data.playSoundWisp = KGMM_Data_DEFAULTS.playSoundWisp; end;
		if(KGMM_Data.showToolTips == nil) then KGMM_Data.showToolTips = KGMM_Data_DEFAULTS.showToolTips; end;
		if(KGMM_Data.sortAlpha == nil) then KGMM_Data.sortAlpha = KGMM_Data_DEFAULTS.sortAlpha; end;
		if(KGMM_Data.winSize == nil) then KGMM_Data.winSize = KGMM_Data_DEFAULTS.winSize; end;
		if(KGMM_Data.miniFreeMoving == nil) then KGMM_Data.miniFreeMoving = KGMM_Data_DEFAULTS.miniFreeMoving; end;
		if(KGMM_Data.popCombat == nil) then KGMM_Data.popCombat = KGMM_Data_DEFAULTS.popCombat; end;
		if(KGMM_Data.characterInfo == nil) then KGMM_Data.characterInfo = KGMM_Data_DEFAULTS.characterInfo; end;
		if(KGMM_Data.showTimeStamps == nil) then KGMM_Data.showTimeStamps = KGMM_Data_DEFAULTS.showTimeStamps; end;
		if(KGMM_Data.showShortcutBar == nil) then KGMM_Data.showShortcutBar = KGMM_Data_DEFAULTS.showShortcutBar; end;
		if(KGMM_Data.enableAlias == nil) then KGMM_Data.enableAlias = KGMM_Data_DEFAULTS.enableAlias; end;
		if(KGMM_Data.enableFilter == nil) then KGMM_Data.enableFilter = KGMM_Data_DEFAULTS.enableFilter; end;
		if(KGMM_Data.aliasAsComment == nil) then KGMM_Data.aliasAsComment = KGMM_Data_DEFAULTS.aliasAsComment; end;
		if(KGMM_Data.enableHistory == nil) then KGMM_Data.enableHistory = KGMM_Data_DEFAULTS.enableHistory; end;
		if(KGMM_Data.historySettings == nil) then KGMM_Data.historySettings = KGMM_Data_DEFAULTS.historySettings; end;
		if(KGMM_Data.winLoc == nil) then KGMM_Data.winLoc = KGMM_Data_DEFAULTS.winLoc; end;
		if(KGMM_Data.winCascade == nil) then KGMM_Data.winCascade = KGMM_Data_DEFAULTS.winCascade; end;
		if(KGMM_Data.popOnSend == nil) then KGMM_Data.popOnSend = KGMM_Data_DEFAULTS.popOnSend; end;
		if(KGMM_Data.versionLastLoaded == nil) then KGMM_Data.versionLastLoaded = KGMM_Data_DEFAULTS.versionLastLoaded; end;
		if(KGMM_Data.showAFK == nil) then KGMM_Data.showAFK = KGMM_Data_DEFAULTS.showAFK; end;
		if(KGMM_Data.useEscape == nil) then KGMM_Data.useEscape = KGMM_Data_DEFAULTS.useEscape; end;
		if(KGMM_Data.hookWispParse == nil) then KGMM_Data.hookWispParse = KGMM_Data_DEFAULTS.hookWispParse; end;
		
		
		if(KGMM_Filters == nil) then
			KGMM_LoadDefaultFilters();
		end
		
		ShowFriends(); --[update friend list
		if(IsInGuild()) then GuildRoster(); end; --[update guild roster
		
		ItemRefTooltip:SetFrameStrata("TOOLTIP");
		
		KGMM_HistoryPurge();
		
		KGMM_InitClassProps();
		
		KGMM_SetKGMM_Enabled(KGMM_Data.enableKGMM);
		
		if(KGMM_VERSION ~= KGMM_Data.versionLastLoaded) then
			KGMM_Help:Show();
			ReloadUI();
		end
		KGMM_Data.versionLastLoaded = KGMM_VERSION;
		
		if(KGMM_Data.miniFreeMoving.enabled) then
			if(KGMM_Data.showMiniMap == false) then
				KGMM_IconFrame:Hide();
			else
				KGMM_IconFrame:Show();
				KGMM_IconFrame:SetFrameStrata("HIGH");
				KGMM_IconFrame:SetPoint("TOPLEFT", "UIParent", "BOTTOMLEFT",KGMM_Data.miniFreeMoving.left,KGMM_Data.miniFreeMoving.top);
			end
		else
			KGMM_Icon_UpdatePosition();
		end
		
	elseif(event == "TRADE_SKILL_SHOW" or event == "CRAFT_SHOW") then
		--[hook tradeskill window functions
		KGMM_HookTradeSkill();
	elseif(event == "GUILD_ROSTER_UPDATE") then
		KGMM_LoadGuildList();
		KGMM_AlreadyCheckedGuildRoster = true;
	elseif(event == "FRIENDLIST_SHOW" or event == "FRIENDLIST_UPDATE") then
		KGMM_LoadFriendList();
	elseif(event == "ADDON_LOADED") then
		KGMM_AddonDetectToHook(arg1);
	else
		if(KGMM_AlreadyCheckedGuildRoster == false) then
			if(IsInGuild()) then GuildRoster(); end; --[update guild roster
		end
		KGMM_ChatFrame_OnEvent(event);
	end
end

function chatframetoggle()
	if (KGMM_Data.popCombat == true) then
		chat:Show()
		chat2:Show()
		chat5:Hide()
		parentPopCombat2:SetChecked(true)
	else
		chat:Hide()
		chat2:Hide()
		chat5:Show()
		parentPopCombat2:SetChecked(false)
		end
	end
function menubuttonstoggle()
	if (KGMM_Data.keepmenu == true) then
		btnGmChar:Show()
		btnGmSpell:Show()
		btnGmTalent:Show()
		btnGmQuest:Show()
		btnGmSocial:Show()
		btnGmWorld:Show()
		btnGmMenu:Show()
		btnGmHelp:Show()
		btnGmBag:Show()
		parentkeepmenu2:SetChecked(true)
	else
		btnGmChar:Hide()
		btnGmSpell:Hide()
		btnGmTalent:Hide()
		btnGmQuest:Hide()
		btnGmSocial:Hide()
		btnGmWorld:Hide()
		btnGmMenu:Hide()
		btnGmHelp:Hide()
		btnGmBag:Hide()		
		parentkeepmenu2:SetChecked(false)
		end
	end	
function KGMM_ChatFrame_OnEvent(event)
	if( KGMM_Data.enableKGMM == false) then
		return;
	end
	local msg = "";
	if((event == "CHAT_MSG_AFK" or event == "CHAT_MSG_DND") and KGMM_Data.showAFK) then
		local afkType;
		if( event == "CHAT_MSG_AFK" ) then
			afkType = "AFK";
		else
			afkType = "DND";
		end
		msg = "<"..afkType.."> |Hplayer:"..arg2.."|h"..arg2.."|h: "..arg1;
		KGMM_PostMessage(arg2, msg, 3);
		ChatEdit_SetLastTellTarget(ChatFrameEditBox,arg2);
	elseif(event == "CHAT_MSG_WHISPER") then
		if(KGMM_FilterResult(arg1) ~= 1 and KGMM_FilterResult(arg1) ~= 2) then
			msg = "[|Hplayer:"..arg2.."|h"..KGMM_GetAlias(arg2, true).."|h]: "..arg1;
			KGMM_PostMessage(arg2, msg, 1, arg2, arg1);
		end
		ChatEdit_SetLastTellTarget(ChatFrameEditBox,arg2);
	elseif(event == "CHAT_MSG_WHISPER_INFORM") then
		if(KGMM_FilterResult(arg1) ~= 1 and KGMM_FilterResult(arg1) ~= 2) then
			msg = "[|Hplayer:"..UnitName("player").."|h"..KGMM_GetAlias(UnitName("player"), true).."|h]: "..arg1;
			KGMM_PostMessage(arg2, msg, 2, UnitName("player") ,arg1);
		end
	elseif(event == "CHAT_MSG_SYSTEM") then
		local tstart,tfinish = string.find(arg1, "\'(%a+)\'");
		if(tstart ~= nil and tfinish ~= nil) then
			user = string.sub(arg1, tstart+1, tfinish-1);
			user = string.gsub(user, "^%l", string.upper)
			tstart, tfinish = string.find(arg1, "playing");
			if(tstart ~= nil and KGMM_Windows[user] ~= nil) then
				-- player not playing, can't whisper
				msg = "|Hplayer:"..user.."|h"..user.."|h is not currently playing!";
				KGMM_PostMessage(user, msg, 4);
			end
		end
	end
end

function KGMM_ChatFrameSupressor_OnEvent(event)
	if(KGMM_Data.enableKGMM == false) then
		return true;
	end
	local msg = "";
	if((event == "CHAT_MSG_AFK" or event == "CHAT_MSG_DND") and KGMM_Data.showAFK) then
		if(KGMM_Data.supressWisps) then
			return false; --[ false to supress from chatframe
		else
			return true;
		end	
	elseif(event == "CHAT_MSG_WHISPER") then
		if(KGMM_Data.supressWisps) then
			if(KGMM_FilterResult(arg1) == 1) then
				return true;
			else
				return false; --[ false to supress from chatframe
			end
		else
			if(KGMM_FilterResult(arg1) == 2) then
				return false;
			else
				return true;
			end
		end
	elseif(event == "CHAT_MSG_WHISPER_INFORM") then
		if(KGMM_Data.supressWisps) then
			if(KGMM_FilterResult(arg1) == 1) then
				return true;
			else
				return false; --[ false to supress from chatframe
			end
		else
			if(KGMM_FilterResult(arg1) == 2) then
				return false;
			else
				return true;
			end
		end
	elseif(event == "CHAT_MSG_SYSTEM") then
		local tstart,tfinish = string.find(arg1, "\'(%a+)\'");
		if(tstart ~= nil and tfinish ~= nil) then
			user = string.sub(arg1, tstart+1, tfinish-1);
			user = string.gsub(user, "^%l", string.upper)
			tstart, tfinish = string.find(arg1, "playing");
			if(tstart ~= nil and KGMM_Windows[user] ~= nil) then
				-- player not playing, can't whisper
				if(KGMM_Data.supressWisps) then
					return false; --[ false to supress from chatframe
				else
					return true;
				end
			end
		end
		return true;
	end
	return true;
end


function KGMM_PostMessage(user, msg, ttype, from, raw_msg)
		--[[
			ttype:
				1 - Wisper from someone
				2 - Wisper sent
				3 - System Message
				4 - Error Message
				5 - Show window... Do nothing else...
		]]--
		
		local f,chatBox;
		local isNew = false;
		if(KGMM_Windows[user] == nil) then
			if(getglobal("KGMM_msgFrame"..user)) then
				f = getglobal("KGMM_msgFrame"..user);
			else
				f = CreateFrame("Frame","KGMM_msgFrame"..user,UIParent, "KGMM_msgFrameTemplate");
			end
			KGMM_SetWindowProps(f);
			KGMM_Windows[user] = {
									frame = "KGMM_msgFrame"..user, 
									newMSG = true, 
									is_visible = false, 
									last_msg=time(), 
									waiting_who=false,
									class="",
									level="",
									race="",
									guild=""
								};
			f.theUser = user;
			getglobal("KGMM_msgFrame"..user.."From"):SetText(KGMM_GetAlias(user));
			KGMM_Icon_AddUser(user);
			isNew = true;
			KGMM_SetWindowLocation(f);
			if(KGMM_Data.characterInfo.show) then
				if(table.getn(KGMM_Split(user, "-")) == 2) then
					KGMM_GetBattleWhoInfo(user);
				else
					KGMM_SendWho(user); 
				end
			end
			KGMM_UpdateCascadeStep();
			KGMM_DisplayHistory(user);
			if(KGMM_History[user]) then
				getglobal(f:GetName().."HistoryButton"):Show();
			end
		end
		f = getglobal("KGMM_msgFrame"..user);
		chatBox = getglobal("KGMM_msgFrame"..user.."ScrollingMessageFrame");
		msg = KGMM_ConvertURLtoLinks(msg);
		KGMM_Windows[user].newMSG = true;
		KGMM_Windows[user].last_msg = time();
		if(ttype == 1) then
			KGMM_PlaySoundWisp();
			KGMM_AddToHistory(user, from, raw_msg, false);
			KGMM_RecentListAdd(user);
			chatBox:AddMessage(KGMM_getTimeStamp()..msg, KGMM_Data.displayColors.wispIn.r, KGMM_Data.displayColors.wispIn.g, KGMM_Data.displayColors.wispIn.b);
		elseif(ttype == 2) then
			KGMM_AddToHistory(user, from, raw_msg, true);
			KGMM_RecentListAdd(user);
			chatBox:AddMessage(KGMM_getTimeStamp()..msg, KGMM_Data.displayColors.wispOut.r, KGMM_Data.displayColors.wispOut.g, KGMM_Data.displayColors.wispOut.b);
		elseif(ttype == 3) then
			chatBox:AddMessage(msg, KGMM_Data.displayColors.sysMsg.r, KGMM_Data.displayColors.sysMsg.g, KGMM_Data.displayColors.sysMsg.b);
		elseif(ttype == 4) then
			chatBox:AddMessage(msg, KGMM_Data.displayColors.errorMsg.r, KGMM_Data.displayColors.errorMsg.g, KGMM_Data.displayColors.errorMsg.b);
		end
		if( KGMM_PopOrNot(isNew) or (ttype==2) or (ttype==5) ) then
			KGMM_Windows[user].newMSG = false;
			if(ttype == 2 and KGMM_Data.popOnSend == false) then
				--[ do nothing, user prefers not to pop on send
			else
				f:Show();
				if(ttype ==5) then
					f:Raise();
					getglobal(f:GetName().."MsgBox"):SetFocus();
				end
			end
		end
		KGMM_UpdateScrollBars(chatBox);
		KGMM_Icon_DropDown_Update();
		if(KGMM_HistoryFrame:IsVisible()) then
			KGMM_HistoryViewNameScrollBar_Update();
			KGMM_HistoryViewFiltersScrollBar_Update();
		end
end

function KGMM_SetWindowLocation(theWin)
	local CascadeOffset_Left = 0;
	local CascadeOffset_Top = 0;

	if(KGMM_Data.winCascade.enabled) then
		CascadeOffset_Left = KGMM_CascadeDirection[KGMM_Data.winCascade.direction].left;
		CascadeOffset_Top = KGMM_CascadeDirection[KGMM_Data.winCascade.direction].top;
	end
	
	theWin:SetPoint(
		"TOPLEFT",
		"UIParent",
		"BOTTOMLEFT",
		(KGMM_Data.winLoc.left + KGMM_CascadeStep*CascadeOffset_Left), 
		(KGMM_Data.winLoc.top + KGMM_CascadeStep*CascadeOffset_Top)
	);
end

function KGMM_PopOrNot(isNew)
	if(isNew == true and KGMM_Data.popNew == true) then
		if(KGMM_Data.popCombat and UnitAffectingCombat("player")) then
			return true;
		end
	elseif(KGMM_Data.popNew == true and KGMM_Data.popUpdate == true) then
		if(KGMM_Data.popCombat and UnitAffectingCombat("player")) then
			return true;
		end
	else
		return false;
	end
end


function KGMM_UpdateScrollBars(smf)
	local parentName = smf:GetParent():GetName();
	if(smf:AtTop()) then
		getglobal(parentName.."ScrollUp"):Disable();
	else
		getglobal(parentName.."ScrollUp"):Enable();
	end
	if(smf:AtBottom()) then
		getglobal(parentName.."ScrollDown"):Disable();
	else
		getglobal(parentName.."ScrollDown"):Enable();
	end
end

function KGMM_isLinkURL(link)
	if (strsub(link, 1, 3) == "url") then
		return true;
	else
		return false;
	end
end

function KGMM_DisplayURL(link)
	local theLink = "";
	if (string.len(link) > 4) and (string.sub(link,1,4) == "url:") then
		theLink = string.sub(link,5, string.len(link));
	end
	--show UI to show url so it can be copied
	if(theLink) then
		KGMM_urlCopyUrlBox:SetText(theLink);
		KGMM_urlCopy:Show();
		KGMM_urlCopyUrlBox:HighlightText(0);
	end
end

function KGMM_ConvertURLtoLinks(text)
	local preLink, midLink, postLink;
	preLink = "|Hurl:";
	midLink = "|h|cff"..KGMM_RGBtoHex(KGMM_Data.displayColors.webAddress.r, KGMM_Data.displayColors.webAddress.g, KGMM_Data.displayColors.webAddress.b);
	postLink = "|h|r";
	text = string.gsub(text, "(%a+://[%w_/%.%?%%=~&-]+)", preLink.."%1"..midLink.."%1"..postLink);
	return text;
end

function KGMM_SlashCommand(msg)
	if(msg == "" or msg == nil) then
		KGMM_Options:Show();
	elseif(msg == "reset") then
		KGMM_Data = KGMM_Data_DEFAULTS;
	elseif(msg == "clear history") then
		KGMM_History = {};
	elseif(msg == "reset filters") then
		KGMM_LoadDefaultFilters();
	elseif(msg == "history") then
		KGMM_HistoryFrame:Show();
	elseif(msg == "help") then
		KGMM_Help:Show();
	end
end
function KGMA_SlashCommand(msg)
	if(msg == "" or msg == nil) then
		KGMM_Help:Show();
	end
end


function KGMM_Icon_Move(toDegree)
	KGMM_Data.iconPosition = toDegree;
	KGMM_Icon_UpdatePosition();
end

function KGMM_Icon_UpdatePosition()
	if(KGMM_Data.showMiniMap == false) then
		KGMM_IconFrame:Hide();
	else
		if(KGMM_Data.miniFreeMoving.enabled == false) then
			KGMM_IconFrame:SetPoint(
				"TOPLEFT",
				"Minimap",
				"TOPLEFT",
				54 - (78 * cos(KGMM_Data.iconPosition)),
				(78 * sin(KGMM_Data.iconPosition)) - 55
			);
		end
		KGMM_IconFrame:Show();
	end
end


function KGMM_SetWindowProps(theWin)
	if(KGMM_Data.showShortcutBar) then
		getglobal(theWin:GetName().."ShortcutFrame"):Show();
		local tHeight = KGMM_Data.winSize.height;
		if(tHeight < 240) then
			tHeight = 240;
		end
		theWin:SetHeight(tHeight);
	else
		getglobal(theWin:GetName().."ShortcutFrame"):Hide();
		theWin:SetHeight(KGMM_Data.winSize.height);
	end
	theWin:SetWidth(KGMM_Data.winSize.width);
	theWin:SetScale(KGMM_Data.windowSize);
	theWin:SetAlpha(KGMM_Data.windowAlpha);
	getglobal(theWin:GetName().."ScrollingMessageFrame"):SetFont("Fonts\\FRIZQT__.TTF",KGMM_Data.fontSize);
	getglobal(theWin:GetName().."ScrollingMessageFrame"):SetAlpha(1);
	getglobal(theWin:GetName().."MsgBox"):SetAlpha(1);
	getglobal(theWin:GetName().."ShortcutFrame"):SetAlpha(1);
	if(KGMM_Data.useEscape) then
		KGMM_AddEscapeWindow(theWin);
	else
		KGMM_RemoveEscapeWindow(theWin);
	end
	--KGMM_SetTabFrameProps();
end


function KGMM_AddEscapeWindow(theWin)
	for i=1, table.getn(UISpecialFrames) do 
		if(UISpecialFrames[i] == theWin:GetName()) then
			return;
		end
	end
	tinsert(UISpecialFrames,theWin:GetName());
end

function KGMM_RemoveEscapeWindow(theWin)
	for i=1, table.getn(UISpecialFrames) do 
		if(UISpecialFrames[i] == theWin:GetName()) then
			table.remove(UISpecialFrames, i);
			return;
		end
	end
end

function KGMM_SetAllWindowProps()
	for key in KGMM_Windows do
		KGMM_SetWindowProps(getglobal(KGMM_Windows[key].frame));
	end
end


function KGMM_Icon_ToggleDropDown()
	--ToggleDropDownMenu(1, nil, KGMM_Icon_DropDown);
	--local tMenu = getglobal("DropDownList"..UIDROPDOWNMENU_MENU_LEVEL);	
	--tMenu:ClearAllPoints();
	--tMenu:SetPoint("TOPRIGHT", "KGMM_IconFrameButton", "BOTTOMLEFT", 0, 0);
	--KGMM_Icon_DropDown:SetWidth(DropDownList1Button1:GetWidth()+50);
	--DropDownList1:SetScale(UIParent:GetScale());
	if(KGMM_ConversationMenu:IsVisible()) then
		KGMM_ConversationMenu:Hide();
	else
		KGMM_ConversationMenu:ClearAllPoints();
		KGMM_ConversationMenu:Show();
		KGMM_ConversationMenu:SetPoint("TOPRIGHT", KGMM_IconFrame, "BOTTOMLEFT", 5, 5);
	end
end

function KGMM_Icon_DropDown_Update()
	
	local tList = { };
	local tListActivity = { };
	local tCount = 0;
	for key in KGMM_IconItems do
		table.insert(tListActivity, key);
		tCount = tCount + 1;
	end
	
	--[first get a sorted list of users by most frequent activity
	table.sort(tListActivity, KGMM_Icon_SortByActivity);
	--[account for only the allowable amount of active users
	for i=1,table.getn(tListActivity) do
		if(i <= KGMM_MaxMenuCount) then
			table.insert(tList, tListActivity[i]);
		end
	end
	
	--Initialize Menu
	for i=1,20 do 
		getglobal("KGMM_ConversationMenuTellButton"..i.."Close"):Show();
		getglobal("KGMM_ConversationMenuTellButton"..i):Enable();
		getglobal("KGMM_ConversationMenuTellButton"..i):Hide();
	end
	
	
	KGMM_NewMessageCount = 0;
	
	if(tCount == 0) then
		info = { };
		info.justifyH = "LEFT"
		info.text = " - None -";
		info.notClickable = 1;
		info.notCheckable = 1;
		getglobal("KGMM_ConversationMenuTellButton1Close"):Hide();
		getglobal("KGMM_ConversationMenuTellButton1"):Disable();
		getglobal("KGMM_ConversationMenuTellButton1"):SetText("|cffffffff - None -");
		getglobal("KGMM_ConversationMenuTellButton1"):Show();
	else
		if(KGMM_Data.sortAlpha) then
			table.sort(tList);
		end
		KGMM_NewMessageFlag = false;
		for i=1, table.getn(tList) do
			if( KGMM_Windows[tList[i]].newMSG and KGMM_Windows[tList[i]].is_visible == false) then
				KGMM_IconItems[tList[i]].color = "|cff"..KGMM_RGBtoHex(77/255, 135/233, 224/255);
				KGMM_NewMessageFlag = true;
				KGMM_NewMessageCount = KGMM_NewMessageCount + 1;
			else
				KGMM_IconItems[tList[i]].color = "|cffffffff";
			end
			getglobal("KGMM_ConversationMenuTellButton"..i):SetText(KGMM_IconItems[tList[i]].color..KGMM_GetAlias(KGMM_IconItems[tList[i]].text, true));
			getglobal("KGMM_ConversationMenuTellButton"..i).theUser = KGMM_IconItems[tList[i]].text;
			getglobal("KGMM_ConversationMenuTellButton"..i).value = KGMM_IconItems[tList[i]].value;
			getglobal("KGMM_ConversationMenuTellButton"..i):Show();
		end
	end
	
	--Set Height of Conversation Menu depending on message count
	local ConvoMenuHeight = 60;
	local CMH_Delta = 16 * (table.getn(tList)-1);
	if(CMH_Delta < 0) then CMH_Delta = 0; end
	ConvoMenuHeight = ConvoMenuHeight + CMH_Delta;
	KGMM_ConversationMenu:SetHeight(ConvoMenuHeight);
	
	--Minimap icon
	if(KGMM_Data.enableKGMM == true) then
		if(KGMM_NewMessageFlag == true) then
			KGMM_IconFrameButton:SetNormalTexture("Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\miniEnabled");
		else
			KGMM_IconFrameButton:SetNormalTexture("Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\miniDisabled");
		end
	else
		--show KGMM disabled icon
		KGMM_IconFrameButton:SetNormalTexture("Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\miniOff");
	end
end


function KGMM_ConversationMenu_OnUpdate(elapsed)
	if(this.isCounting) then
		this.timeElapsed = this.timeElapsed + elapsed;
		if(this.timeElapsed > 1) then
			this:Hide();
			this.timeElapsed = 0;
			this.isCounting = false;
		end
	end
end

function KGMM_Icon_AddUser(theUser)
	UIDROPDOWNMENU_INIT_MENU = "KGMM_Options_DropDown";
	UIDROPDOWNMENU_OPEN_MENU = UIDROPDOWNMENU_INIT_MENU;
	local info = { };
	info.text = theUser;
	info.justifyH = "LEFT"
	info.isTitle = nil;
	info.notCheckable = 1;
	info.value = KGMM_Windows[theUser].frame;
	info.func = KGMM_Icon_PlayerClick;
	KGMM_IconItems[theUser] = info;
	table.sort(KGMM_IconItems);
	KGMM_Icon_DropDown_Update();
end

function KGMM_Icon_PlayerClick()
	if(this.value ~= nil) then
		getglobal(this.value):Show();
		--[local user = getglobal(this.value.."From"):GetText();
		local user = getglobal(this.value).theUser;
		KGMM_Windows[user].newMSG = false;
		KGMM_Windows[user].is_visible = true;
		KGMM_Icon_DropDown_Update();
	end
end

function KGMM_Icon_OnUpdate(elapsedTime)
	if(KGMM_NewMessageFlag == false) then
		this.TimeSinceLastUpdate = 0;
		if(KGMM_Icon_NewMessageFlash:IsVisible()) then
			KGMM_Icon_NewMessageFlash:Hide();
		end
		return;
	end

	this.TimeSinceLastUpdate = this.TimeSinceLastUpdate + elapsedTime; 	

	while (this.TimeSinceLastUpdate > KGMM_Icon_UpdateInterval) do
		if(KGMM_Icon_NewMessageFlash:IsVisible()) then
			KGMM_Icon_NewMessageFlash:Hide();
		else
			KGMM_Icon_NewMessageFlash:Show();
		end
		this.TimeSinceLastUpdate = this.TimeSinceLastUpdate - KGMM_Icon_UpdateInterval;
	end
end

function KGMM_UpdateCascadeStep()
		KGMM_CascadeStep = KGMM_CascadeStep + 1;
		if(KGMM_CascadeStep > 10) then
			KGMM_CascadeStep = 0;
		end
end

function KGMM_PlaySoundWisp()
	if(KGMM_Data.playSoundWisp == true) then
		PlaySoundFile("Interface\\AddOns\\KronosGMAddon\\KGMM\\Sounds\\wisp.wav");
	end
end

function KGMM_Icon_SortByActivity(user1, user2)
	if(KGMM_Windows[user1].last_msg > KGMM_Windows[user2].last_msg) then
		return true;
	else
		return false;
	end
end

function KGMM_RGBtoHex(r,g,b)
	return string.format ("%.2x%.2x%.2x",r*255,g*255,b*255);
end

function KGMM_Icon_OnEnter()
	GameTooltip:SetOwner(this, "ANCHOR_LEFT");
	GameTooltip:SetText("KGMM v"..KGMM_VERSION.."              ");
	GameTooltip:AddDoubleLine("Conversation Menu", "Left-Click", 1,1,1,1,1,1);
	GameTooltip:AddDoubleLine("Show New Messages", "Right-Click", 1,1,1,1,1,1);
	GameTooltip:AddDoubleLine("KGMM Options", "/KGMM", 1,1,1,1,1,1);
end

function KGMM_ShowNewMessages()
	for key in KGMM_Windows do
		if(KGMM_Windows[key].newMSG == true) then
			getglobal(KGMM_Windows[key].frame):Show();
			KGMM_Windows[key].newMSG = false;
		end
	end
	KGMM_Icon_DropDown_Update();
end


function KGMM_SendWho(name)
	KGMM_Windows[name].waiting_who = true;
	SetWhoToUI(1);
	SendWho("\""..name.."\"");
end


function KGMM_ShowAll()
	for key in KGMM_Windows do
		getglobal(KGMM_Windows[key].frame):Show();
	end
end

function KGMM_HideAll()
	for key in KGMM_Windows do
		getglobal(KGMM_Windows[key].frame):Hide();
	end
end

function KGMM_CloseAllConvos()
	for key in KGMM_Windows do
		KGMM_CloseConvo(key);
	end
end

function KGMM_CloseConvo(theUser)
	if(KGMM_Windows[theUser] == nil) then return; end; --[ fail silently
	
	getglobal(KGMM_Windows[theUser].frame):Hide();
	getglobal(KGMM_Windows[theUser].frame.."ScrollingMessageFrame"):Clear();
	getglobal(KGMM_Windows[theUser].frame.."ClassIcon"):SetTexture("Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\classBLANK");
	getglobal(KGMM_Windows[theUser].frame.."CharacterDetails"):SetText("");
	KGMM_Windows[theUser] = nil;
	KGMM_IconItems[theUser] = nil;
	
	KGMM_Icon_DropDown_Update();
end

function KGMM_InitClassProps()
	KGMM_ClassIcons[KGMM_LOCALIZED_DRUID] 	= "Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\classDRUID";
	KGMM_ClassIcons[KGMM_LOCALIZED_HUNTER] 	= "Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\classHUNTER";
	KGMM_ClassIcons[KGMM_LOCALIZED_MAGE]	 	= "Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\classMAGE";
	KGMM_ClassIcons[KGMM_LOCALIZED_PALADIN] 	= "Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\classPALADIN";
	KGMM_ClassIcons[KGMM_LOCALIZED_PRIEST] 	= "Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\classPRIEST";
	KGMM_ClassIcons[KGMM_LOCALIZED_ROGUE] 	= "Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\classROGUE";
	KGMM_ClassIcons[KGMM_LOCALIZED_SHAMAN] 	= "Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\classSHAMAN";
	KGMM_ClassIcons[KGMM_LOCALIZED_WARLOCK] 	= "Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\classWARLOCK";
	KGMM_ClassIcons[KGMM_LOCALIZED_WARRIOR] 	= "Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\classWARRIOR";
	
	KGMM_ClassColors[KGMM_LOCALIZED_DRUID]	= "ff7d0a";
	KGMM_ClassColors[KGMM_LOCALIZED_HUNTER]	= "abd473";
	KGMM_ClassColors[KGMM_LOCALIZED_MAGE]		= "69ccf0";
	KGMM_ClassColors[KGMM_LOCALIZED_PALADIN]	= "f58cba";
	KGMM_ClassColors[KGMM_LOCALIZED_PRIEST]	= "ffffff";
	KGMM_ClassColors[KGMM_LOCALIZED_ROGUE]	= "fff569";
	KGMM_ClassColors[KGMM_LOCALIZED_SHAMAN]	= "f58cba";
	KGMM_ClassColors[KGMM_LOCALIZED_WARLOCK]	= "9482ca";
	KGMM_ClassColors[KGMM_LOCALIZED_WARRIOR]	= "c79c6e";
end

function KGMM_UserWithClassColor(theUser)
	if(KGMM_Windows[theUser].class == "") then
		return theUser;
	else
		if(KGMM_ClassColors[KGMM_Windows[theUser].class]) then
			return "|cff"..KGMM_ClassColors[KGMM_Windows[theUser].class]..KGMM_GetAlias(theUser);
		else
			return KGMM_GetAlias(theUser);
		end
	end
end

function KGMM_SetWhoInfo(theUser)
	local classIcon = getglobal(KGMM_Windows[theUser].frame.."ClassIcon");
	if(KGMM_Data.characterInfo.classIcon and KGMM_ClassIcons[KGMM_Windows[theUser].class]) then
		classIcon:SetTexture(KGMM_ClassIcons[KGMM_Windows[theUser].class]);
	else
		classIcon:SetTexture("Interface\\AddOns\\KronosGMAddon\\KGMM\\Images\\classBLANK");
	end
	if(KGMM_Data.characterInfo.classColor) then	
		getglobal(KGMM_Windows[theUser].frame.."From"):SetText(KGMM_UserWithClassColor(theUser));
	end
	if(KGMM_Data.characterInfo.details) then	
		local tGuild = "";
		if(KGMM_Windows[theUser].guild ~= "") then
			tGuild = "<"..KGMM_Windows[theUser].guild.."> ";
		end
		getglobal(KGMM_Windows[theUser].frame.."CharacterDetails"):SetText("|cffffffff"..tGuild..KGMM_Windows[theUser].level.." "..KGMM_Windows[theUser].race.." "..KGMM_Windows[theUser].class.."|r");
	end
end

function KGMM_getTimeStamp()
	if(KGMM_Data.showTimeStamps) then
		return "|cff"..KGMM_RGBtoHex(KGMM_Data.displayColors.sysMsg.r, KGMM_Data.displayColors.sysMsg.g, KGMM_Data.displayColors.sysMsg.b)..date("%H:%M").."|r ";
	else
		return "";
	end
end

function KGMM_Bindings_EnableKGMM()
	KGMM_SetKGMM_Enabled(not KGMM_Data.enableKGMM);
end

function KGMM_SetKGMM_Enabled(YesOrNo)
	KGMM_Data.enableKGMM = YesOrNo
	KGMM_Icon_DropDown_Update();
end

function KGMM_LoadShortcutFrame()
	local tButtons = {
		{
			icon = "Interface\\Icons\\Ability_Hunter_AimedShot",
			cmd		= "target",
			tooltip = "Target"
		},
		{
			icon = "Interface\\Icons\\Spell_Holy_BlessingOfStrength",
			cmd		= "invite",
			tooltip = "Invite"
		},
		{
			icon = "Interface\\Icons\\INV_Misc_Bag_10_Blue",
			cmd		= "trade",
			tooltip = "Trade"
		},
		{
			icon = "Interface\\Icons\\INV_Helmet_44",
			cmd		= "inspect",
			tooltip = "Inspect"
		},
		{
			icon = "Interface\\Icons\\Ability_Physical_Taunt",
			cmd		= "ignore",
			tooltip = "Ignore"
		},
	};
	for i=1,5 do
		getglobal(this:GetName().."ShortcutFrameButton"..i.."Icon"):SetTexture(tButtons[i].icon);
		getglobal(this:GetName().."ShortcutFrameButton"..i).cmd = tButtons[i].cmd;
		getglobal(this:GetName().."ShortcutFrameButton"..i).tooltip = tButtons[i].tooltip;
	end
	getglobal(this:GetName().."ShortcutFrame"):SetScale(.75);
end

function KGMM_ShorcutButton_Clicked()
	local cmd = this.cmd;
	local theUser = this:GetParent():GetParent().theUser;
	if(cmd == "target") then
		TargetByName(theUser, true);
	elseif(cmd == "invite") then
		InviteByName(theUser);
	elseif(cmd == "trade") then
		TargetByName(theUser, true);
		InitiateTrade("target");
	elseif(cmd == "inspect") then
		TargetByName(theUser, true);
		InspectUnit("target");
	elseif(cmd == "ignore") then
		getglobal(this:GetParent():GetParent():GetName().."IgnoreConfirm"):Show();
	end
end

function KGMM_GetAlias(theUser, nameOnly)
	if(KGMM_Data.enableAlias and KGMM_Alias[theUser] ~= nil) then
		if(KGMM_Data.aliasAsComment) then
			if(nameOnly) then
				return theUser;
			else
				return theUser.." |cffffffff- "..KGMM_Alias[theUser].."|r";
			end
		else
			return KGMM_Alias[theUser];
		end
	else
		return theUser;
	end
end


function KGMM_FilterResult(theMSG)
	if(KGMM_Data.enableFilter) then
		local key, a, b;
		for key in KGMM_Filters do
			if(strfind(strlower(theMSG), strlower(key)) ~= nil) then
				if(KGMM_Filters[key] == "Ignore") then
					return 1;
				elseif(KGMM_Filters[key] == "Block") then
					return 2;
				end
			end
		end
		return 0;
	else
		return 0;
	end
end

function KGMM_CanRecordUser(theUser)
	if(KGMM_Data.historySettings.recordEveryone) then
		return true;
	else
		if(KGMM_Data.historySettings.recordFriends and KGMM_FriendList[theUser]) then
			return true;
		elseif(KGMM_Data.historySettings.recordGuild and KGMM_GuildList[theUser]) then
			return true;
		end
	end
	return false;
end

function KGMM_AddToHistory(theUser, userFrom, theMessage, isMsgIn)
	local tmpEntry = {};
	if(KGMM_Data.enableHistory) then --[if history is enabled
		if(KGMM_CanRecordUser(theUser)) then --[if record user
			getglobal(KGMM_Windows[theUser].frame.."HistoryButton"):Show();
			tmpEntry["stamp"] = time();
			tmpEntry["date"] = date("%m/%d/%y");
			tmpEntry["time"] = date("%H:%M");
			tmpEntry["msg"] = KGMM_ConvertURLtoLinks(theMessage);
			tmpEntry["from"] = userFrom;
			if(isMsgIn) then
				tmpEntry["type"] = 2;
			else
				tmpEntry["type"] = 1;
			end
			if(KGMM_History[theUser] == nil) then
				KGMM_History[theUser] = {};
			end
			table.insert(KGMM_History[theUser], tmpEntry);
			
			if(KGMM_Data.historySettings.maxMsg.enabled) then
				local tOver = table.getn(KGMM_History[theUser]) - KGMM_Data.historySettings.maxMsg.count;
				if(tOver > 0) then
					for i = 1, tOver do 
						table.remove(KGMM_History[theUser], 1);
					end
				end
			end
			if(KGMM_Options:IsVisible()) then
				KGMM_HistoryScrollBar_Update();
			end
		end
	end
end

function KGMM_SortHistory(a, b)
	if(a.stamp < b.stamp) then
		return true;
	else
		return false;
	end
end

function KGMM_DisplayHistory(theUser)
	if(KGMM_History[theUser] and KGMM_Data.enableHistory and KGMM_Data.historySettings.popWin.enabled) then
		table.sort(KGMM_History[theUser], KGMM_SortHistory);
		for i=table.getn(KGMM_History[theUser])-KGMM_Data.historySettings.popWin.count-1, table.getn(KGMM_History[theUser]) do 
			if(KGMM_History[theUser][i]) then
				--KGMM_GetAlias
				msg = "|Hplayer:"..KGMM_History[theUser][i].from.."|h["..KGMM_GetAlias(KGMM_History[theUser][i].from, true).."]|h: "..KGMM_History[theUser][i].msg;
				if(KGMM_Data.showTimeStamps) then
					msg = KGMM_History[theUser][i].time.." "..msg;
				end
				if(KGMM_History[theUser][i].type == 1) then
					getglobal("KGMM_msgFrame"..theUser.."ScrollingMessageFrame"):AddMessage(msg, KGMM_Data.historySettings.colorIn.r, KGMM_Data.historySettings.colorIn.g, KGMM_Data.historySettings.colorIn.b);
				elseif(KGMM_History[theUser][i].type == 2) then
					getglobal("KGMM_msgFrame"..theUser.."ScrollingMessageFrame"):AddMessage(msg, KGMM_Data.historySettings.colorOut.r, KGMM_Data.historySettings.colorOut.g, KGMM_Data.historySettings.colorOut.b);
				end
			end
		end
	end
	--getglobal("KGMM_msgFrame"..theUser.."ScrollingMessageFrame"):AddMessage(" ");
end

function KGMM_LoadDefaultFilters()
	KGMM_Filters = {};
	KGMM_Filters["^LVBM"] 					= "Ignore";
	KGMM_Filters["^YOU ARE BEING WATCHED!"] 	= "Ignore";
	KGMM_Filters["^YOU ARE MARKED!"] 		= "Ignore";
	KGMM_Filters["^YOU ARE CURSED!"] 		= "Ignore";
	KGMM_Filters["^YOU HAVE THE PLAGUE!"] 	= "Ignore";
	KGMM_Filters["^YOU ARE BURNING!"] 		= "Ignore";
	KGMM_Filters["^YOU ARE THE BOMB!"] 		= "Ignore";
	KGMM_Filters["VOLATILE INFECTION"] 		= "Ignore";
	KGMM_Filters["^<GA"]						= "Ignore";
	
	KGMM_FilteringScrollBar_Update();
end

function KGMM_LoadGuildList()
	KGMM_GuildList = {};
	if(IsInGuild()) then
		for i=1, GetNumGuildMembers(true) do 
			local name, junk = GetGuildRosterInfo(i);
			if(name) then
				KGMM_GuildList[name] = "1"; --[set place holder for quick lookup
			end
		end
	end
end

function KGMM_LoadFriendList()
	KGMM_FriendList = {};
	for i=1, GetNumFriends() do 
		local name, junk = GetFriendInfo(i);
		if(name) then
			KGMM_FriendList[name] = "1"; --[set place holder for quick lookup
		end
	end
end

function KGMM_HistoryPurge()
	if(KGMM_Data.historySettings.autoDelete.enabled) then
		local delCount = 0;
		local eldestTime = time() - (60 * 60 * 24 * KGMM_Data.historySettings.autoDelete.days);
		for key in KGMM_History do
			if(KGMM_History[key][1]) then
				while(KGMM_History[key][1].stamp < eldestTime) do
					table.remove(KGMM_History[key], 1);
					delCount = delCount + 1;
					if(table.getn(KGMM_History[key]) == 0) then
						KGMM_History[key] = nil;
						break;
					end
				end
			end
		end
		if(delCount > 0) then
			DEFAULT_CHAT_FRAME:AddMessage("[KGMM]: Purged "..delCount.." out-dated messages from history.");
		end
	end
end

function KGMM_ToggleWindow_OnUpdate(elapsedTime)

	KGMM_ToggleWindow_Timer = KGMM_ToggleWindow_Timer + elapsedTime; 	

	while (KGMM_ToggleWindow_Timer > 1) do
		KGMM_ToggleWindow:Hide();
		KGMM_ToggleWindow_Timer = 0;
	end
end

function KGMM_RecentListAdd(theUser)
	for i=1, table.getn(KGMM_RecentList) do 
		if(string.upper(KGMM_RecentList[i]) == string.upper(theUser)) then
			table.remove(KGMM_RecentList, i);
			break;
		end
	end
	table.insert(KGMM_RecentList, 1, theUser);
end

function KGMM_ToggleWindow_Toggle()
	if(table.getn(KGMM_RecentList) == 0) then
		return;
	end
	
	if(KGMM_RecentList[KGMM_ToggleWindow_Index] == nil) then
		KGMM_ToggleWindow_Index = 1;
	end
	
	KGMM_ToggleWindowUser:SetText(KGMM_GetAlias(KGMM_RecentList[KGMM_ToggleWindow_Index], true));
	KGMM_ToggleWindow.theUser = KGMM_RecentList[KGMM_ToggleWindow_Index];
	KGMM_ToggleWindowCount:SetText("Recent Conversation "..KGMM_ToggleWindow_Index.." of "..table.getn(KGMM_RecentList));
	if(KGMM_Windows[KGMM_RecentList[KGMM_ToggleWindow_Index]]) then
		if(KGMM_Windows[KGMM_RecentList[KGMM_ToggleWindow_Index]].newMSG) then
			KGMM_ToggleWindowStatus:SetText("New message!");
			KGMM_ToggleWindowIconNew:Show();
			KGMM_ToggleWindowIconRead:Hide();
		else
			KGMM_ToggleWindowStatus:SetText("No new messages.");
			KGMM_ToggleWindowIconRead:Show();
			KGMM_ToggleWindowIconNew:Hide();
		end
	else
		KGMM_ToggleWindowStatus:SetText("Conversation closed.");
		KGMM_ToggleWindowIconRead:Show();
		KGMM_ToggleWindowIconNew:Hide();
	end
	KGMM_ToggleWindow_Timer = 0;
	KGMM_ToggleWindow:Show();
	KGMM_ToggleWindow_Index = KGMM_ToggleWindow_Index + 1;
end

function KGMM_Split(theString, thePattern)
	local t = {n = 0}
	local fpat = "(.-)"..thePattern
	local last_end = 1
	local s,e,cap = string.find(theString, fpat, 1)
	while s ~= nil do
		if s~=1 or cap~="" then
		table.insert(t,cap)
		end
		last_end = e+1
		s,e,cap = string.find(theString, fpat, last_end)
	end
	if last_end<=string.len(theString) then
		cap = string.sub(theString,last_end)
		table.insert(t,cap)
	end
	return t
end

function KGMM_GetBattleWhoInfo(theUser)
	local user, server = unpack(KGMM_Split(theUser, "-"));
	--[ call this function only if a "-" is in the name. Used to get cross realm info.
	for i=1, GetNumRaidMembers() do 
		local name, rank, subgroup, level, class, fileName, zone, online, isDead = GetRaidRosterInfo(i);
		local race, raceEng = UnitRace("raid"..i);
		local guildName, guildRankName, guildRankIndex = GetGuildInfo("raid"..i);
		if(not guildName) then guildName=""; end
		if(name == user) then
			KGMM_Windows[theUser].waiting_who = false;
			KGMM_Windows[theUser].class = class;
			KGMM_Windows[theUser].race = race;
			KGMM_Windows[theUser].guild = guildName;
			KGMM_Windows[theUser].level = level;
			KGMM_SetWhoInfo(theUser);
			return;
		end
	end
end

function KGMM_SetTabFrameProps()
	KGMM_TabFrame:SetScale(KGMM_Data.windowSize * 1);
	KGMM_TabFrame:SetAlpha(KGMM_Data.windowAlpha);
end

function KGMM_UpdateTabs()
	local tabs = {};
	local offset = 0;
	
	for key in KGMM_IconItems do
		table.insert(tabs, key);
	end
	
	for i=1,10 do 
		local tab = getglobal("KGMM_TabFrameTab"..i);
		tab:Hide();
		if(tabs[i+offset]) then
			tab:SetText(KGMM_GetAlias(tabs[i+offset], true));
			tab:Show();
			tab.theUser=tabs[i+offset];
		else
			tab:Hide();
			tab.theUser="";
		end
	end
	
end

function KGMM_WindowOnShow()
--[[	if(KGMM_TabMode.enabled) then
		KGMM_TabFrame:ClearAllPoints();
		KGMM_TabFrame:SetPoint("BOTTOMLEFT", this:GetName(), "TOPLEFT",45,-2);
		KGMM_UpdateTabs();
		KGMM_TabSetSelected(this.theUser);
		KGMM_TabFrame:Show();
	else
		KGMM_TabFrame:Hide();
	end
]]
end

function KGMM_GetTabByUser(theUser)
	for i=1,10 do 
		local tab = getglobal("KGMM_TabFrameTab"..i);
		if(string.upper(theUser) == string.upper(tab.theUser)) then
			return tab;
		end
	end
	return nil;
end

function KGMM_TabSetSelected(theUser)
	for i=1,10 do 
		local tab = getglobal("KGMM_TabFrameTab"..i);
		if(string.upper(theUser) == string.upper(tab.theUser)) then
			PanelTemplates_SelectTab(tab);
		else
			PanelTemplates_DeselectTab(tab);
		end
	end
end
