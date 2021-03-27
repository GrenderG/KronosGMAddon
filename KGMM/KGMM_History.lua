--[Functions: GUI Interface for KGMM_History.xml

KGMM_HistoryView_Name_Selected = "";
KGMM_HistoryView_Filter_Selected = "";

function KGMM_HistoryView_NameClick()
	if(KGMM_HistoryView_Name_Selected ~= this.Name) then
		KGMM_HistoryView_Filter_Selected = "";
	end
	KGMM_HistoryView_Name_Selected = this.theName;
	KGMM_HistoryViewFiltersScrollBar_Update();
end

function KGMM_HistoryView_FilterClick()
	KGMM_HistoryView_Filter_Selected = this.theName;
end

function KGMM_HistoryViewNameScrollBar_Update()
	local line;
	local lineplusoffset;
	local HistoryNames = {};
	
	for key in KGMM_History do
		table.insert(HistoryNames, key);
	end
	table.sort(HistoryNames);
	
	FauxScrollFrame_Update(KGMM_HistoryFrameNameListScrollBar,table.getn(HistoryNames),15,16);
	for line=1,15 do
		lineplusoffset = line + FauxScrollFrame_GetOffset(KGMM_HistoryFrameNameListScrollBar);
		if lineplusoffset <= table.getn(HistoryNames) then
			getglobal("KGMM_HistoryFrameNameListButton"..line.."Name"):SetText(HistoryNames[lineplusoffset]);
			getglobal("KGMM_HistoryFrameNameListButton"..line).theName = HistoryNames[lineplusoffset];
			if ( KGMM_HistoryView_Name_Selected == HistoryNames[lineplusoffset] ) then
				getglobal("KGMM_HistoryFrameNameListButton"..line):LockHighlight();
			else
				getglobal("KGMM_HistoryFrameNameListButton"..line):UnlockHighlight();
			end
			getglobal("KGMM_HistoryFrameNameListButton"..line):Show();
		else
			getglobal("KGMM_HistoryFrameNameListButton"..line):Hide();
		end
	end
end




function KGMM_HistoryViewFiltersScrollBar_Update()
	local line;
	local lineplusoffset;
	local Filters = {};
	
	local tDate = "";
	local lDate = "";
	if(KGMM_History[KGMM_HistoryView_Name_Selected]) then
		for i=1,table.getn(KGMM_History[KGMM_HistoryView_Name_Selected]) do
			tDate = KGMM_History[KGMM_HistoryView_Name_Selected][i].date;
			if(tDate ~= lDate) then
				table.insert(Filters, tDate);
				lDate = tDate;
			end
		end
	end
	table.sort(Filters);
	table.insert(Filters, 1, "None (Show All)");
	if(KGMM_HistoryView_Filter_Selected == "") then
		--[KGMM_HistoryView_Filter_Selected = Filters[1];
	end
	
	FauxScrollFrame_Update(KGMM_HistoryFrameFilterListScrollBar,table.getn(Filters),7,16);
	for line=1,7 do
		lineplusoffset = line + FauxScrollFrame_GetOffset(KGMM_HistoryFrameFilterListScrollBar);
		if lineplusoffset <= table.getn(Filters) then
			getglobal("KGMM_HistoryFrameFilterListButton"..line.."Name"):SetText(Filters[lineplusoffset]);
			if(lineplusoffset == 1) then
				getglobal("KGMM_HistoryFrameFilterListButton"..line).theName = "";
			else
				getglobal("KGMM_HistoryFrameFilterListButton"..line).theName = Filters[lineplusoffset];
			end
			if ( KGMM_HistoryView_Filter_Selected == Filters[lineplusoffset] ) then
				getglobal("KGMM_HistoryFrameFilterListButton"..line):LockHighlight();
			else
				getglobal("KGMM_HistoryFrameFilterListButton"..line):UnlockHighlight();
			end
			getglobal("KGMM_HistoryFrameFilterListButton"..line):Show();
		else
			getglobal("KGMM_HistoryFrameFilterListButton"..line):Hide();
		end
	end
	KGMM_HistoryView_ShowMessages();
end


function KGMM_HistoryView_ShowMessages()
	local tStamp = "";
	local tFrom = "";
	local tMsg = "";
	local prevDate = "";

	KGMM_HistoryFrameMessageListScrollingMessageFrame:Clear();
	if(KGMM_History[KGMM_HistoryView_Name_Selected]) then
		for i = 1, table.getn(KGMM_History[KGMM_HistoryView_Name_Selected]) do
			if(KGMM_HistoryView_Filter_Selected == "" or KGMM_HistoryView_Filter_Selected == KGMM_History[KGMM_HistoryView_Name_Selected][i].date) then
				if(KGMM_HistoryView_Filter_Selected == "") then
					if(prevDate ~= KGMM_History[KGMM_HistoryView_Name_Selected][i].date) then
						prevDate = KGMM_History[KGMM_HistoryView_Name_Selected][i].date
						KGMM_HistoryFrameMessageListScrollingMessageFrame:AddMessage(" ");
						KGMM_HistoryFrameMessageListScrollingMessageFrame:AddMessage("|cffffffff["..prevDate.."]|r");
					end
				end
				tStamp = "|cff"..KGMM_RGBtoHex(KGMM_Data.displayColors.sysMsg.r, KGMM_Data.displayColors.sysMsg.g, KGMM_Data.displayColors.sysMsg.b)..KGMM_History[KGMM_HistoryView_Name_Selected][i].time.."|r ";
				tFrom = "[|Hplayer:"..KGMM_History[KGMM_HistoryView_Name_Selected][i].from.."|h"..KGMM_GetAlias(KGMM_History[KGMM_HistoryView_Name_Selected][i].from, true).."|h]: ";
				tMsg = tStamp..tFrom..KGMM_History[KGMM_HistoryView_Name_Selected][i].msg;
				if(KGMM_History[KGMM_HistoryView_Name_Selected][i].type == 1) then
					KGMM_HistoryFrameMessageListScrollingMessageFrame:AddMessage(tMsg, KGMM_Data.displayColors.wispIn.r, KGMM_Data.displayColors.wispIn.g, KGMM_Data.displayColors.wispIn.b);
				elseif(KGMM_History[KGMM_HistoryView_Name_Selected][i].type == 2) then
					KGMM_HistoryFrameMessageListScrollingMessageFrame:AddMessage(tMsg, KGMM_Data.displayColors.wispOut.r, KGMM_Data.displayColors.wispOut.g, KGMM_Data.displayColors.wispOut.b);
				end
			end
		end
	end
	KGMM_UpdateScrollBars(KGMM_HistoryFrameMessageListScrollingMessageFrame);
end
