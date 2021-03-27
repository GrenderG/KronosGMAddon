--[ KGMM Titan Panel Addon ]
KGMM_TITAN_IS_LOADED = false;
KGMM_CurMessageState = false;


function KGMM_TitanButton_OnLoad()
	if (IsAddOnLoaded("Titan")) then
		KGMM_TITAN_IS_LOADED = true;
		this.registry = {
			id = "KGMM",
			version = KGMM_VERSION,
			menuText = "KGMM", 
			buttonTextFunction = "KGMM_Titan_GetButtonText",
			tooltipTitle = "KGMM", 
			tooltipTextFunction = "KGMM_Titan_GetToolTipText",
			frequency = .5, 
			iconWidth = 20,
			savedVariables = {
				ShowIcon = 1,
				ShowLabelText = 1,
			}
		};
		TitanPanelButton_OnLoad();
	end
end


function KGMM_Titan_GetButtonText()
	local msgColor = "|cffedc300";
	if(KGMM_NewMessageFlag) then
		if( KGMM_CurMessageState ~= KGMM_NewMessageFlag) then
			local icon = getglobal("TitanPanelKGMMButtonIcon");
			icon:SetTexture("Interface\\AddOns\\KGMM\\Images\\miniEnabled");
			KGMM_CurMessageState = KGMM_NewMessageFlag;
		end
		if(KGMM_Titan_NewMessageFlash:IsVisible()) then
			KGMM_Titan_NewMessageFlash:Hide();
		else
			KGMM_Titan_NewMessageFlash:Show();
			msgColor = "|cffffffff";
		end
	else
		if( KGMM_CurMessageState ~= KGMM_NewMessageFlag) then
			local icon = getglobal("TitanPanelKGMMButtonIcon");
			icon:SetTexture("Interface\\AddOns\\KGMM\\Images\\miniDisabled");
			KGMM_Titan_NewMessageFlash:Hide();
			KGMM_CurMessageState = KGMM_NewMessageFlag;
		end
	end
	
	return msgColor.."Messages: ", "|cffffffff"..KGMM_NewMessageCount;
end

function KGMM_Titan_GetToolTipText()
	--[KGMM shows its own tooltip
	return;
end

function KGMM_Titan_ToggleDropDown()
	KGMM_ConversationMenu:ClearAllPoints();
	KGMM_ConversationMenu:Show();
	KGMM_ConversationMenu:SetPoint("TOPLEFT", TitanPanelKGMMButton, "BOTTOMLEFT");
end


function KGMM_TitanButton_OnShow()
	if(KGMM_TITAN_IS_LOADED) then
		local icon = getglobal("TitanPanelKGMMButtonIcon");
		icon:SetHeight(20);
		icon:SetWidth(20);
		icon:SetTexture("Interface\\AddOns\\KGMM\\Images\\miniDisabled");
		TitanPanelButton_OnShow();
	end
end

function KGMM_Titan_InitMenu()
	UIDropDownMenu_Initialize(this, KGMM_Icon_DropDown_Init, "MENU");
end
