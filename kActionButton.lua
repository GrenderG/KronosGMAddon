--~ kBar Button OnX
function kActionButton_OnLoad()
	ActionButton_OnLoad()
	this.isZButton = 1
end
function kActionButton_OnEvent()
	if this:IsVisible() or event == "UPDATE_BINDINGS" 
		or (not this.hide and event == "ACTIONBAR_SLOT_CHANGED")
		or event == "ACTIONBAR_SHOWGRID"
		or event == "ACTIONBAR_HIDEGRID" then
		ActionButton_OnEvent(event)
		if this.isBonus then
			BonusActionButton_OnEvent(event)
		end
	end
end
function kActionButton_OnEnter()
	kBar_SetAlpha(1,this:GetParent())
	ActionButton_SetTooltip()
end
function kActionButton_OnLeave()
	kBar_SetAlpha(0.3,this:GetParent())
	this.updateTooltip = nil
	GameTooltip:Hide()
end

--[[ Overridens ]]
function kActionButton() -- override when load up

--~ id
local zOld_ActionButton_GetPagedID = ActionButton_GetPagedID
function ActionButton_GetPagedID(button)
	-- switch kBar2 with Main bar for warrior class
	if kBar_IS_WARRIOR and button:GetParent() == kBar2 then
		return button:GetID()
	end
	-- id for kBar buttons
	if ( button.isZButton ) then
		return (button:GetID() + ((10 - button:GetParent():GetID()) * NUM_ACTIONBAR_BUTTONS))
	end
	-- other buttons
	return zOld_ActionButton_GetPagedID(button)
end

-- grid
function ActionButton_ShowGrid(button)
	if ( not button ) then
		button = this
	end
	button.showgrid = 1
	getglobal(button:GetName().."NormalTexture"):SetVertexColor(1.0, 1.0, 1.0, 0.5)
	
	if button.hide == 1 then
		button:Hide()
		return
	end
	
	button:Show()
end
function ActionButton_HideGrid(button)
	if (ALWAYS_SHOW_MULTIBARS == "1" or ALWAYS_SHOW_MULTIBARS == 1) then return end
	if ( not button ) then
		button = this
	end
	button.showgrid = 0
	
	if button.hide == 1 then
		button:Hide()
		return
	end
		
	if ( not HasAction(ActionButton_GetPagedID(button)) ) then
		button:Hide()
	elseif not button:IsVisible() then
		button:Show()
	end
end
function kBar_SetAllGrids(showGrid)
	for id in kBar.Bars do
		if id < 11 then kBar_UpdateButtons(getglobal(kBarS[id]),nil,nil,showGrid) end
	end
end
local zOld_MultiActionBar_ShowAllGrids = MultiActionBar_ShowAllGrids
local zOld_MultiActionBar_HideAllGrids = MultiActionBar_HideAllGrids
function MultiActionBar_ShowAllGrids()
	zOld_MultiActionBar_ShowAllGrids()
	kBar_SetAllGrids(1)
end
function MultiActionBar_HideAllGrids()
	zOld_MultiActionBar_HideAllGrids()
	kBar_SetAllGrids(0)
end

--~ hotkeys
local zOld_GetBindingKey = GetBindingKey
function GetBindingKey(action)
	if (this.isZButton) then action = "ACTIONBUTTON"..ActionButton_GetPagedID(this) end
	return zOld_GetBindingKey(action)
end

--~ bindings
function kBar_OnHotkey(barid,id)
	if ( keystate == "down" ) then
		MultiActionButtonDown("kBar"..barid, id)
	else
		MultiActionButtonUp("kBar"..barid, id, onSelf)
	end
end
end -- kActionButton