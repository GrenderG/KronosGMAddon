KGMM_ButtonsHooked = false;
KGMM_TradeSkillIsHooked = false;
KGMM_CraftSkillIsHooked = false;
KGMM_InspectIsHooked = false;



function KGMM_FriendsFrame_SendMessage()
	local name = GetFriendInfo(FriendsFrame.selectedFriend);
	KGMM_PostMessage(name, "", 5, "", "");
end

function KGMM_ChatEdit_ExtractTellTarget(editBox, msg)
	-- Grab the first "word" in the string
	local target = gsub(msg, "(%s*)([^%s]+)(.*)", "%2", 1);
	if ( (strlen(target) <= 0) or (strsub(target, 1, 1) == "|") ) then
		return;
	end
	
	if(KGMM_Data.hookWispParse) then
		target = string.gsub(target, "^%l", string.upper)
		KGMM_PostMessage(target, "", 5, "", "");
		editBox:SetText("");
		editBox:Hide();
	else
		KGMM_ChatEdit_ExtractTellTarget_orig(editBox, msg);
	end
end


function KGMM_HookInspect()
	if(KGMM_InspectIsHooked) then
		return;
	end
	
	if(InspectPaperDollFrame) then
		KGMM_InspectPaperDollItemSlotButton_OnClick_orig = InspectPaperDollItemSlotButton_OnClick;
		InspectPaperDollItemSlotButton_OnClick = KGMM_InspectPaperDollItemSlotButton_OnClick;
		KGMM_InspectIsHooked = true;
	elseif(SuperInspectFrame) then
		KGMM_SuperInspect_InspectPaperDollItemSlotButton_OnClick_orig = SuperInspect_InspectPaperDollItemSlotButton_OnClick;
		SuperInspect_InspectPaperDollItemSlotButton_OnClick = KGMM_SuperInspect_InspectPaperDollItemSlotButton_OnClick;
		KGMM_InspectIsHooked = true;
	end
	
	DEFAULT_CHAT_FRAME:AddMessage("Hooking Complete.");
end

function KGMM_AtlasLootItem_OnClick(arg1)
	if ( IsShiftKeyDown() ) then
		if ( KGMM_EditBoxInFocus ) then
			local color = strsub(getglobal("AtlasLootItem_"..this:GetID().."_Name"):GetText(), 1, 10);
			local name = strsub(getglobal("AtlasLootItem_"..this:GetID().."_Name"):GetText(), 11);
			KGMM_EditBoxInFocus:Insert(color.."|Hitem:"..this.itemID..":0:0:0|h["..name.."]|h|r");
		end
	end
	KGMM_AtlasLootItem_OnClick_orig(arg1);
end

function KGMM_InspectPaperDollItemSlotButton_OnClick(arg1)
	if ( IsShiftKeyDown() ) then
		if ( KGMM_EditBoxInFocus ) then
			KGMM_EditBoxInFocus:Insert(GetInventoryItemLink(InspectFrame.unit, this:GetID()));
		end
	end
	KGMM_InspectPaperDollItemSlotButton_OnClick_orig(arg1);
end

function KGMM_AllInOneInventoryFrameItemButton_OnClick(button, ignShift)
	if ( IsShiftKeyDown() ) then
		if ( KGMM_EditBoxInFocus ) then
			local bag, slot = AllInOneInventory_GetIdAsBagSlot(this:GetID());
			KGMM_EditBoxInFocus:Insert(GetContainerItemLink(bag, slot));
		end
	end
	KGMM_AllInOneInventoryFrameItemButton_OnClick_orig(button, ignShift);
end

function KGMM_LootFrameItem_OnClick(arg1)
	if ( IsShiftKeyDown() ) then
		if ( KGMM_EditBoxInFocus ) then
			KGMM_EditBoxInFocus:Insert(GetLootSlotLink(this.slot));
		end
	end
	KGMM_LootFrameItem_OnClick_orig(arg1);
end

function KGMM_SuperInspect_InspectPaperDollItemSlotButton_OnClick(button, ignoreModifiers)
	local itemLink = this.link;
	if ( IsShiftKeyDown() ) then
		if ( KGMM_EditBoxInFocus ) then
			local link = "|c"..this.c.."|H"..itemLink.."|h["..GetItemInfo(itemLink).."]|h|r";
			KGMM_EditBoxInFocus:Insert(link);
		end
	end
	KGMM_SuperInspect_InspectPaperDollItemSlotButton_OnClick_orig(button, ignoreModifiers);
end

function KGMM_HookTradeSkill()
	if(KGMM_TradeSkillIsHooked == true and KGMM_CraftSkillIsHooked == true) then
		return;
	end
	
	if(KGMM_TradeSkillIsHooked == false and TradeSkillFrame ~= nil) then
		KGMM_TradeSkillSkillIcon_OnClick_orig = TradeSkillSkillIcon:GetScript("OnClick");
		TradeSkillSkillIcon:SetScript("OnClick", function() KGMM_TradeSkillSkillIcon_OnClick_orig(); KGMM_TradeSkillSkillIcon_OnClick(); end);
		
		for i=1, 8 do 
			KGMM_TradeSkillReagent_OnClick_orig = getglobal("TradeSkillReagent"..i):GetScript("OnClick");
			getglobal("TradeSkillReagent"..i):SetScript("OnClick", function() KGMM_TradeSkillReagent_OnClick_orig(); KGMM_TradeSkillReagent_OnClick(); end);
		end
		KGMM_TradeSkillIsHooked = true;
	end
	
	if(KGMM_CraftSkillIsHooked == false and CraftFrame ~= nil) then
		KGMM_CraftIcon_OnClick_orig = CraftIcon:GetScript("OnClick");
		CraftIcon:SetScript("OnClick", function() KGMM_CraftIcon_OnClick_orig(); KGMM_CraftIcon_OnClick(); end);
		
		for i=1, 8 do 
			KGMM_CraftReagent_OnClick_orig = getglobal("CraftReagent"..i):GetScript("OnClick");
			getglobal("CraftReagent"..i):SetScript("OnClick", function() KGMM_CraftReagent_OnClick_orig(); KGMM_CraftReagent_OnClick(); end);
		end
		
		KGMM_CraftSkillIsHooked = true;
	end
end

function KGMM_CraftIcon_OnClick(arg1)
	if ( IsShiftKeyDown() ) then
		if ( KGMM_EditBoxInFocus ) then
			KGMM_EditBoxInFocus:Insert(GetCraftItemLink(GetCraftSelectionIndex()));
		end
	end
end

function KGMM_CraftReagent_OnClick(arg1)
	if ( IsShiftKeyDown() ) then
		if ( KGMM_EditBoxInFocus ) then
			KGMM_EditBoxInFocus:Insert(GetCraftReagentItemLink(GetCraftSelectionIndex(), this:GetID()));
		end
	end
end


function KGMM_TradeSkillSkillIcon_OnClick(agr1)
	if ( IsShiftKeyDown() ) then
		if ( KGMM_EditBoxInFocus ) then
			KGMM_EditBoxInFocus:Insert(GetTradeSkillItemLink(TradeSkillFrame.selectedSkill));
		end
	end
end

function KGMM_TradeSkillReagent_OnClick(arg1)
	if ( IsShiftKeyDown() ) then
		if ( KGMM_EditBoxInFocus ) then
			KGMM_EditBoxInFocus:Insert(GetTradeSkillReagentItemLink(TradeSkillFrame.selectedSkill, this:GetID()));
		end
	end
end


function KGMM_PaperDollItemSlotButton_OnClick(arg1)
	if(arg1 == "LeftButton" and IsShiftKeyDown()) then
		if(KGMM_EditBoxInFocus) then
			KGMM_EditBoxInFocus:Insert(GetInventoryItemLink("player", this:GetID()));
		end
	end
	KGMM_PaperDollItemSlotButton_OnClick_orig(arg1);
end

function KGMM_LootLinkItemButton_OnClick(arg1)
	if(arg1 == "LeftButton" and IsShiftKeyDown()) then
		if(KGMM_EditBoxInFocus) then
			KGMM_EditBoxInFocus:Insert(KGMM_LootLink_GetLink(this:GetText()));
		end
	end
	KGMM_LootLinkItemButton_OnClick_orig(arg1);
end

-- copy of Lootlink's local function - modified
function KGMM_LootLink_GetHyperlink(name)
	local itemLink = ItemLinks[name];
	DEFAULT_CHAT_FRAME:AddMessage("LootLink_GetHyperlink: "..name);
	if( itemLink and itemLink.i ) then
		-- Remove instance-specific data that we captured from the link we return
		local item = string.gsub(itemLink.i, "(%d+):(%d+):(%d+):(%d+)", "%1:0:%3:%4");
		return "item:"..item;
	end
	return nil;
end

-- copy of Lootlink's local function - modified
function KGMM_LootLink_GetLink(name)
	local itemLink = ItemLinks[name];
	if( itemLink and itemLink.c and itemLink.i ) then
		local link = "|c"..itemLink.c.."|H"..KGMM_LootLink_GetHyperlink(name).."|h["..name.."]|h|r";
		return link;
	end
	return nil;
end



function KGMM_EngInventory_ItemButton_OnClick()
	if(arg1 == "LeftButton" and IsShiftKeyDown()) then
		if(KGMM_EditBoxInFocus) then
			local bar, position, itm, bagnum, slotnum;

			if (EngInventory_buttons[this:GetName()] ~= nil) then
                bar = EngInventory_buttons[this:GetName()]["bar"];
                position = EngInventory_buttons[this:GetName()]["position"];

				bagnum = EngInventory_bar_positions[bar][position]["bagnum"];
				slotnum = EngInventory_bar_positions[bar][position]["slotnum"];

                itm = EngInventory_item_cache[bagnum][slotnum];

				if(itm) then
					KGMM_EditBoxInFocus:Insert(GetContainerItemLink(itm["bagnum"], itm["slotnum"]));
				end
			end
		end
	end
	KGMM_EngInventory_ItemButton_OnClick_orig(arg1, arg2);
end


function KGMM_FriendsFrame_OnEvent()
  if(event == "WHO_LIST_UPDATE") then
	local numWhos, totalCount = GetNumWhoResults();
	if(numWhos > 0) then
		for i=1, numWhos do 
			local name, guild, level, race, class, zone = GetWhoInfo(i);
			if(KGMM_Windows[name] and name ~= "" and name ~= nil) then
				if(KGMM_Windows[name].waiting_who) then
					KGMM_Windows[name].waiting_who = false;
					KGMM_Windows[name].class = class;
					KGMM_Windows[name].level = level;
					KGMM_Windows[name].race = race;
					KGMM_Windows[name].guild = guild;
					KGMM_SetWhoInfo(name);
					SetWhoToUI(0);
					return;
				end
			end
		end
	else
		SetWhoToUI(0);
		return;
	end
  end
  KGMM_FriendsFrame_OnEvent_orig(event);
end


function KGMM_SetItemRef (link, text, button)
	if (KGMM_isLinkURL(link)) then
		KGMM_DisplayURL(link);
		return;
	end
	if (strsub(link, 1, 6) ~= "player") and ( IsShiftKeyDown() ) and ( not ChatFrameEditBox:IsVisible() ) then
		local itemName = gsub(text, ".*%[(.*)%].*", "%1");
		if(KGMM_EditBoxInFocus) then
			KGMM_EditBoxInFocus:Insert(text);
		end
	end
end

function KGMM_ItemButton_OnClick(button, ignoreModifiers)
	if ( button == "LeftButton" ) and (not ignoreModifiers) and ( IsShiftKeyDown() ) and ( not ChatFrameEditBox:IsVisible() ) and (GameTooltipTextLeft1:GetText()) then
		if(KGMM_EditBoxInFocus) then
			KGMM_EditBoxInFocus:Insert(GetContainerItemLink(this:GetParent():GetID(), this:GetID()));
		end
	end
end

function KGMM_SetUpHooks()
	if(KGMM_ButtonsHooked) then
		return;
	end

	--Hook Friends Frame Send Message Button
	FriendsFrame_SendMessage = KGMM_FriendsFrame_SendMessage;
	
	--Hook Chat Frame Whisper Parse
	KGMM_ChatEdit_ExtractTellTarget_orig = ChatEdit_ExtractTellTarget;
	ChatEdit_ExtractTellTarget = KGMM_ChatEdit_ExtractTellTarget;
	
	--Hook FriendsFrame_OnEvent
	KGMM_FriendsFrame_OnEvent_orig = FriendsFrame_OnEvent;
	FriendsFrame_OnEvent = KGMM_FriendsFrame_OnEvent;
	
	--Hook ChatFrame_OnEvent
	KGMM_ChatFrame_OnEvent_orig = ChatFrame_OnEvent;
	ChatFrame_OnEvent = function(event) if(KGMM_ChatFrameSupressor_OnEvent(event)) then KGMM_ChatFrame_OnEvent_orig(event); end; end;
	
	--Hook SetItemRef
	KGMM_SetItemRef_orig = SetItemRef;
	SetItemRef = function(link, text, button) if(not KGMM_isLinkURL(link)) then KGMM_SetItemRef_orig(link, text, button); end; KGMM_SetItemRef(link, text, button); end;

	--Hook Paper Doll Button
	KGMM_PaperDollItemSlotButton_OnClick_orig = PaperDollItemSlotButton_OnClick;
	PaperDollItemSlotButton_OnClick = KGMM_PaperDollItemSlotButton_OnClick;
	
	--Hook Loot Frame 
	KGMM_LootFrameItem_OnClick_orig = LootFrameItem_OnClick;
	LootFrameItem_OnClick = KGMM_LootFrameItem_OnClick;
	
	
	--Hook ContainerFrameItemButton_OnClick
	KGMM_ContainerFrameItemButton_OnClick_orig = ContainerFrameItemButton_OnClick;
	ContainerFrameItemButton_OnClick = function(button, ignoreModifiers) KGMM_ContainerFrameItemButton_OnClick_orig(button, ignoreModifiers); KGMM_ItemButton_OnClick(button, ignoreModifiers); end;
	
	if (AllInOneInventoryFrameItemButton_OnClick) then
		--Hook ContainerFrameItemButton_OnClick
		KGMM_AllInOneInventoryFrameItemButton_OnClick_orig = AllInOneInventoryFrameItemButton_OnClick;
		AllInOneInventoryFrameItemButton_OnClick = function(button, ignoreModifiers) KGMM_AllInOneInventoryFrameItemButton_OnClick_orig(button, ignoreModifiers); KGMM_ItemButton_OnClick(button, ignoreModifiers); end;
	end
	
	if (EngInventory_ItemButton_OnClick) then
		--Hook ContainerFrameItemButton_OnClick
		KGMM_EngInventory_ItemButton_OnClick_orig = EngInventory_ItemButton_OnClick;
		EngInventory_ItemButton_OnClick = function(button, ignoreModifiers) KGMM_EngInventory_ItemButton_OnClick_orig(button, ignoreModifiers); KGMM_ItemButton_OnClick(button, ignoreModifiers); end;
	end
	
	if (BrowseButton) then
		--Hook BrowseButtons
		for i=1, 8 do
			local frame = getglobal("BrowseButton"..i.."Item");
			local oldFunc = frame:GetScript("OnClick");
			frame:SetScript("OnClick", function() oldFunc(); KGMM_ItemButton_OnClick(arg1); end);
		end
	end
	KGMM_ButtonsHooked = true;
end


function KGMM_AddonDetectToHook(theAddon)
	if(theAddon == "SuperInspect_UI") then
		KGMM_HookInspect();
	elseif(theAddon == "AtlasLoot") then
		KGMM_AtlasLootItem_OnClick_orig = AtlasLootItem_OnClick;
		AtlasLootItem_OnClick = KGMM_AtlasLootItem_OnClick;
	elseif(theAddon == "AllInOneInventory") then
		KGMM_AllInOneInventoryFrameItemButton_OnClick_orig = AllInOneInventoryFrameItemButton_OnClick;
		AllInOneInventoryFrameItemButton_OnClick = KGMM_AllInOneInventoryFrameItemButton_OnClick;
	elseif(theAddon == "EngInventory") then
		KGMM_EngInventory_ItemButton_OnClick_orig = EngInventory_ItemButton_OnClick;
		EngInventory_ItemButton_OnClick = KGMM_EngInventory_ItemButton_OnClick;
	elseif(theAddon == "LootLink") then
		KGMM_LootLinkItemButton_OnClick_orig = LootLinkItemButton_OnClick;
		LootLinkItemButton_OnClick = KGMM_LootLinkItemButton_OnClick;
	end
end
