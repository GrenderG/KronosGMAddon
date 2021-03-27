--[[  ]]
local kBarOptionCheckButtons = {
	{name=kBar_ATTR_HIDE,var="hide",tooltip=kBar_TIP_HIDE},
	{name=kBar_ATTR_NAME,var="name",tooltip=kBar_TIP_NAME},
	{name=kBar_ATTR_LOCK,var="hideTab",tooltip=kBar_TIP_LOCK},
	{name=kBar_ATTR_AUTOALPHA,var="autoAlpha",tooltip=kBar_TIP_AOTUALPHA},
	{name=kBar_ATTR_FUNNY1,var="arrangement",value="funny1",tooltip=kBar_TIP_FUNNY1},
	{name=kBar_ATTR_FUNNY2,var="arrangement",value="funny2",tooltip=kBar_TIP_FUNNY2},
	{name=kBar_ATTR_AOTUPOP,var="autoPop",tooltip=kBar_TIP_AOTUPOP},
	{name=kBar_ATTR_AOTUHIDE,var="autoHide",tooltip=kBar_TIP_AOTUHIDE},
	{name=kBar_ATTR_HOTKEY,var="hideHotkey",tooltip=kBar_TIP_HOTKEY},
	{name=kBar_ATTR_LOCKBUTTON,tooltip=kBar_TIP_LOCKBUTTON},
	{name=kBar_ATTR_HIDEGRID,tooltip=kBar_TIP_HIDEGRID},
}

local kBarOptionSliders = {
	{name=kBar_SLIDER_NUM,var="num",min=1,max=12,step=1,setFunc=nil,tooltip=kBar_TIP_NUM},
	{name=kBar_SLIDER_NUMPERLINE,var="linenum",min=1,max=12,step=1,setFunc=nil,tooltip=kBar_TIP_NUMPERLINE},
	{name=kBar_SLIDER_SCALE,var="scale",min=0.5,max=1.5,step=0.001,factor=100,setFunc=nil,tooltip=kBar_TIP_SCALE},
	{name=kBar_SLIDER_INSECT,var="inset",min=0,max=20,step=2,setFunc=nil,tooltip=kBar_TIP_INSECT},
}

--[[ Register Slash Command ]]--
SlashCmdList["kBar"] = function(msg)
    kBarOption:OpenForBar(kBar1)
end
SLASH_kBar1 = "/kBar"

local tmp
--[[
    CheckButton OnClick functions
--]]
-- show / hide bar
kBarOptionCheckButtons[1].onChecked = function()
    kBarOption.bar:Hide()
end
kBarOptionCheckButtons[1].unChecked = function()
	kBarOption.bar:Show()
    if kBarOption.bar:GetID() == 15 then return end
	kBar_UpdateButtons(kBarOption.bar)
	kBar_UpdateArrangement(kBarOption.bar)
end
-- show / hide name
kBarOptionCheckButtons[2].onChecked = function()
    getglobal(kBarOption.bar:GetName().."Tab"):Show()
    getglobal(kBarOption.bar:GetName().."Tab"):SetText(kBar_NAMES[kBarOption.bar:GetID()])
end
kBarOptionCheckButtons[2].unChecked = function()
    if (kBarOptionAttr3:GetChecked()) then
        getglobal(kBarOption.bar:GetName().."Tab"):Hide()
    end
    getglobal(kBarOption.bar:GetName().."Tab"):SetText("")
end
-- lock / unlock bar, show / hide tab
kBarOptionCheckButtons[3].onChecked = function()
    getglobal(kBarOption.bar:GetName().."Tab"):Hide()
end
kBarOptionCheckButtons[3].unChecked = function()
    getglobal(kBarOption.bar:GetName().."Tab"):Show()
end
-- set auto alpha mode
kBarOptionCheckButtons[4].onChecked = function()
    kBar_SetAlpha(0.3, kBarOption.bar)
end
kBarOptionCheckButtons[4].unChecked = function()
    kBarOption.bar:SetAlpha(1)
    getglobal(kBarOption.bar:GetName().."Tab"):SetAlpha(0.5)
end
-- funny arrangement 1
kBarOptionCheckButtons[5].onChecked = function()
    kBarOptionAttr6:SetChecked(false)
    kBar_UpdateArrangement(kBarOption.bar)
    kBar.Bars[kBarOption.bar:GetID()].linenum = nil
    kBarOptionSlider2Thumb:Hide()
end
kBarOptionCheckButtons[5].unChecked = function()
    kBarOptionSlider2:SetValue(2)
    kBarOptionSlider2:SetValue(1)
end
-- funny arrangement 2
kBarOptionCheckButtons[6].onChecked = function()
    kBarOptionAttr5:SetChecked(false)
    kBar_UpdateArrangement(kBarOption.bar)
    kBar.Bars[kBarOption.bar:GetID()].linenum = nil
    kBarOptionSlider2Thumb:Hide()
end
kBarOptionCheckButtons[6].unChecked = function()
    kBarOptionSlider2:SetValue(2)
    kBarOptionSlider2:SetValue(1)
end
-- set auto pop up mode
kBarOptionCheckButtons[7].onChecked = function()
    kBarOptionAttr8:SetChecked(false)
    kBar.Bars[kBarOption.bar:GetID()][kBarOptionCheckButtons[8].var] = nil
    kBar_UpdateMinimize(kBarOption.bar)
end
kBarOptionCheckButtons[7].unChecked = function()
    kBar_UpdateMinimize(kBarOption.bar,true)
end
-- set auto hide mode
kBarOptionCheckButtons[8].onChecked = function()
    kBarOptionAttr7:SetChecked(false)
    kBar.Bars[kBarOption.bar:GetID()][kBarOptionCheckButtons[7].var] = nil
    kBar_UpdateMinimize(kBarOption.bar,true)
end
kBarOptionCheckButtons[8].unChecked = function()
    kBar_UpdateMinimize(kBarOption.bar,true)
end
-- show / hide hotkeys
kBarOptionCheckButtons[9].onChecked = function()
    kBar_UpdateHotkeys(kBarOption.bar)
end
kBarOptionCheckButtons[9].unChecked = function()
    kBar_UpdateHotkeys(kBarOption.bar)
end
--[[
	Slider ValueChanged functions
--]]
-- set num of buttons
kBarOptionSliders[1].setFunc = function()
    kBar.Bars[kBarOption.bar:GetID()].num = this:GetValue()
    kBar_UpdateButtons(kBarOption.bar)
    kBar_UpdateArrangement(kBarOption.bar)
end
-- set num per line
kBarOptionSliders[2].setFunc = function()
    kBarOptionAttr5:SetChecked(false)
    kBarOptionAttr6:SetChecked(false)
    kBarOptionSlider2Thumb:Show()

    
    tmp = kBarOption.bar:GetID()
    value = kBar.Bars[tmp]
    
    -- linenum can't greater than num
	local num = this:GetValue()
    if num > value.num then
        this:SetValue(value.num)
        return
    end
	
	kBar.Bars[tmp].arrangement = "line"
    kBar.Bars[tmp].linenum = this:GetValue()
    kBar_UpdateArrangement(kBarOption.bar)
end
-- set scale
kBarOptionSliders[3].setFunc = function()
    kBar.Bars[kBarOption.bar:GetID()].scale = this:GetValue()
    kBarOption.bar:SetScale(this:GetValue())
    -- set edit box text
	tmp = getglobal(this:GetName().."EditBox")
	tmp:SetText(floor(100 * this:GetValue()))
	tmp:HighlightText()
end
-- set button spacing
kBarOptionSliders[4].setFunc = function()
    kBar.Bars[kBarOption.bar:GetID()].inset = this:GetValue()
    kBar_UpdateArrangement(kBarOption.bar)
end
--[[ Buttons ]]--
function kBarOptionReset_OnClick()
    kBarOption.bar:ClearAllPoints()
    kBarOption.bar:SetPoint("CENTER",UIParent,"CENTER",0,0)
    kBarOptionSlider3:SetValue(1)
    kBar.Bars[kBarOption.bar:GetID()].hide = nil
    kBarOption.bar:Show()
end
--[[
	Select bar, Open Option Frame
--]]
local function kBarOption_OpenForBar(self,bar)
	local index = bar:GetID()
	self.bar = getglobal(kBarS[index])
    
	-- set bar selector button checked
	tmp = getglobal("kBarOptionBar"..index)
	tmp:SetChecked(true)
	tmp:SetTextColor(0.1,1,0.1)
    -- unchecked others
	for i=1,15 do
		tmp = getglobal("kBarOptionBar"..i)
		if i ~= index and tmp:GetChecked() then
			tmp:SetChecked(false)
			tmp:SetTextColor(1,0.82,0)
		end
	end

	-- read the saved variables, init options
    
    -- re enable check buttons and sliders
    for i in kBarOptionCheckButtons do
        getglobal("kBarOptionAttr"..i):Enable()
    end
    for i=1,4 do
        getglobal("kBarOptionSlider"..i):Show()
    end
    
	-- check buttons
	for i,value in kBarOptionCheckButtons do
		tmp = getglobal("kBarOptionAttr"..i)
		if value.var then
			if value.value then
				tmp:SetChecked(kBar.Bars[index][value.var] == value.value)
			else
				tmp:SetChecked(kBar.Bars[index][value.var])
			end
		end
	end
    kBarOptionAttr10:SetChecked(LOCK_ACTIONBAR == "1")
    kBarOptionAttr11:SetChecked(ALWAYS_SHOW_MULTIBARS ~= "1" and ALWAYS_SHOW_MULTIBARS ~= 1)
    
	-- sliders
	kBarOptionSlider3:SetValue(bar:GetScale())
    if index < 15 then
        local t1 = kBar.Bars[index].num
        kBarOptionSlider1:SetMinMaxValues(1, kBar.Bars[index].max or 12)
        kBarOptionSlider1High:SetText(kBar.Bars[index].max or 12)
        if index == 14 then
            -- shapeshift bar num must be correct
            kBarOptionSlider1:SetValue( GetNumShapeshiftForms() )
        else
            kBarOptionSlider1:SetValue(t1 or kBarOptionSliders[1].min)
        end
        local t2 = kBar.Bars[index].linenum
        kBarOptionSlider2:SetMinMaxValues(1, kBar.Bars[index].max or 12)
        kBarOptionSlider2High:SetText(kBar.Bars[index].max or 12)
        if t2 then
            kBarOptionSlider2:SetValue(t2)
        else
            kBarOptionSlider2Thumb:Hide()
        end
        kBarOptionSlider4:SetValue(kBar.Bars[index][kBarOptionSliders[4].var] or kBarOptionSliders[4].min)
    end
    
    -- disables
    -- if index == 11 or index == 14 then
        -- -- pet bar and shapeshift bar can't be hidden by user
        -- kBarOptionAttr1:Disable()
    -- end
    if index == 13 then
        -- micro bar can't set inset
        kBarOptionSlider4:Hide()
    end
    if index > 10 and index < 15 then
        kBarOptionAttr7:Disable()
        kBarOptionAttr8:Disable()
        kBarOptionAttr9:Disable()
    end
    if index == 15 then
        -- XP bar can only do show / hide
        for i=1,4 do
            getglobal("kBarOptionSlider"..i):Hide()
        end
        for i in kBarOptionCheckButtons do
            if i > 1 then getglobal("kBarOptionAttr"..i):Disable() end
        end
    end
    
	-- show frame
	self:Show()
end
--[[
	Frame OnX
--]]
function kBarOption_OnLoad()
	-- register events
	this:RegisterForDrag("LeftButton")
	this:RegisterEvent("VARIABLES_LOADED")
	-- set backdrop
	this:SetBackdropBorderColor(0.5,0.5,0.5)
	this:SetBackdropColor(0,0,0)
	-- frame functions
	this.OpenForBar = kBarOption_OpenForBar
    -- init function
    kBarOptionSlider3EditBox:SetScript("OnEnterPressed", function()
        kBarOptionSlider3:SetValue(this:GetNumber()*0.01)
    end)
    kBarOptionSlider3EditBox:SetScript("OnEscapePressed", function()
        kBarOption:Hide()
    end)
end

function kBarOption_OnEvent()
	if event=="VARIABLES_LOADED" then
		-- radio buttons
		for i=1,15 do
			tmp = getglobal("kBarOptionBar"..i)
			tmp:SetText(kBar_NAMES[i])
			if not kBarS[i] then tmp:Disable() end
		end
		-- check buttons
		for index,value in kBarOptionCheckButtons do
			tmp = getglobal("kBarOptionAttr"..index)
			tmp:SetText(value.name)
			tmp.tooltipText = value.tooltip
		end
		-- Sliders
		for index,value in kBarOptionSliders do
			tmp = getglobal("kBarOptionSlider"..index.."Text")
			tmp:SetText(value.name)
			tmp = getglobal("kBarOptionSlider"..index)
			tmp:SetMinMaxValues(value.min,value.max)
			tmp:SetValueStep(value.step)
			tmp.tooltipText = value.tooltip
			tmp:SetScript("OnValueChanged", value.setFunc)
			
			if value.factor then
				getglobal("kBarOptionSlider"..index.."Low"):SetText(value.min * value.factor .. "%")
				getglobal("kBarOptionSlider"..index.."High"):SetText(value.max * value.factor .. "%")
			else
				getglobal("kBarOptionSlider"..index.."Low"):SetText(value.min)
				getglobal("kBarOptionSlider"..index.."High"):SetText(value.max)
			end
		end
		kBarOptionSlider3EditBox:SetFocus(true)
				
		this:UnregisterEvent("VARIABLES_LOADED")
	end
end
--[[
	Widget OnX
--]]
-- radio buttons, bar selector
function kBarRadioButton_OnClick()
	PlaySound("igMainMenuOptionCheckBoxOn")
	kBarOption:OpenForBar(getglobal(kBarS[this:GetID()]))
end
-- check buttons, option setter
function kBarCheckButton_OnClick()
	if this:GetChecked() then
		PlaySound("igMainMenuOptionCheckBoxOn")
	else
		PlaySound("igMainMenuOptionCheckBoxOff")
	end

    -- save the option value
    value = kBarOptionCheckButtons[this:GetID()]
	if value.var then
        if this:GetChecked() then
            if value.value then
                kBar.Bars[kBarOption.bar:GetID()][value.var] = value.value
            else
                kBar.Bars[kBarOption.bar:GetID()][value.var] = true
            end
            value.onChecked()
        else
            kBar.Bars[kBarOption.bar:GetID()][value.var] = nil
            value.unChecked()
        end
	end
end
function kBarLockButton_OnClick()
    PlayClickSound()
    if this:GetChecked() then
        LOCK_ACTIONBAR = "1"
    else
        LOCK_ACTIONBAR = nil
    end
end
function kBarHideGrid_OnClick()
    PlayClickSound()
    if this:GetChecked() then
        ALWAYS_SHOW_MULTIBARS = nil
    else
        ALWAYS_SHOW_MULTIBARS = "1"
    end
    MultiActionBar_UpdateGridVisibility()
end