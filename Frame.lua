gmAddon = AceLibrary("AceAddon-2.0"):new("AceHook-2.1")
-- Auto Whisper Spam Limit Start
AUTO_WHISPER_COOLDOWN = 1*60 -- seconds
-- Auto Whisper Spam Limit End
-- Ticket System Defaults Start
gmTicketSys = {};
gmTicketSys["NumberOfTickets"] = 0;
gmTicketSys["NumberOfOnlineTickets"] = 0;
gmTicketSys["newTicketInfo"] = nil;
gmTicketSys["readAllTickets"] = false;
gmTicketSys["hideTicketSystemMSG"] = false;
gmTicketSys["ticketScanID"] = 1;
gmTicketSys["ticketCurrent"] = 1;
-- Ticket System Defaults End
-- GM Commands Start
gmCommands={};
gmCommands["ticket"] = ".ticket"
gmCommands["account"] = ".account"
gmCommands["ticket respond"] = ".ticket respond"
gmCommands["kick"] = ".kick"
gmCommands["Mute"] = ".mute"
gmCommands["Ban"] = ".ban character"
gmCommands["BanInfo"] = ".baninfo char"
gmCommands["BanInfoIP"] = ".baninfo ip"
gmCommands["BanIP"] = ".ban ip"
gmCommands["Lookup"] = ".lookup player ip"
gmCommands["LookupAcc"] = ".lookup player account"
gmCommands["Kick"] = ".kick"
gmCommands["gmon"] = ".gm on"
gmCommands["gmoff"] = ".gm off"
gmCommands["gmvon"] = ".gm v on"
gmCommands["gmvoff"] = ".gm v off"
gmCommands["whispon"] = ".whisper on"
gmCommands["whispoff"] = ".whisper off"
gmCommands["setview"] = ".gm setview"
gmCommands["die"] = ".die"
gmCommands["respawn"] = ".respawn"
gmCommands["Speed"] = ".mod aspeed "
gmCommands["Turtle"] = ".aura 30174"
gmCommands["Turtleoff"] = ".unaura 30174"
gmCommands["gmflyon"] = ".gm fly on"
gmCommands["dragon"] = ".aura 24576"
gmCommands["gmflyspeed"] = ".mod aspeed 6"
gmCommands["kodoquest"] = ".q c 5561"
gmCommands["darkmoonally"] = ".q a 7905"
gmCommands["darkmoonhorde"] = ".q a 7926"
gmCommands["ticket delete"] = ".delticket"
gmCommands["pinfo"] = ".pinfo"
gmCommands["summon"] = ".namego"
gmCommands["teleportTo"] = ".goname"
gmCommands["recall"] = ".recall"
gmCommands["send items"] = ".send items"
gmCommands["send mail"] = ".send mail"
gmCommands["axes"] = ".learn 196"
gmCommands["axestwo"] = ".learn 197"
gmCommands["maces"] = ".learn 198"
gmCommands["macestwo"] = ".learn 199"
gmCommands["polearms"] = ".learn 200"
gmCommands["swords"] = ".learn 201"
gmCommands["swordstwo"] = ".learn 202"
gmCommands["unarmed"] = ".learn 203"
gmCommands["defense"] = ".learn 204"
gmCommands["staves"] = ".learn 227"
gmCommands["bows"] = ".learn 264"
gmCommands["guns"] = ".learn 266"
gmCommands["daggers"] = ".learn 1180"
gmCommands["Thrown"] = ".learn 2567"
gmCommands["wands"] = ".learn 5009"
gmCommands["crossbows"] = ".learn 5011"
gmCommands["fistweapons"] = ".learn 15590"
gmCommands["setaxes"] = ".setskill 44 300 300"
gmCommands["setaxestwo"] = ".setskill 172 300 300"
gmCommands["setmaces"] = ".setskill 54 300 300"
gmCommands["setmacestwo"] = ".setskill 160 300 300"
gmCommands["setpolearms"] = ".setskill 229 300 300"
gmCommands["setswords"] = ".setskill 43 300 300"
gmCommands["setswordstwo"] = ".setskill 55 300 300"
gmCommands["setunarmed"] = ".setskill 162 300 300"
gmCommands["setdefense"] = ".setskill 95 300 300"
gmCommands["setstaves"] = ".setskill 136 300 300"
gmCommands["setbows"] = ".setskill 45 300 300"
gmCommands["setguns"] = ".setskill 46 300 300"
gmCommands["setdaggers"] = ".setskill 173 300 300"
gmCommands["setThrown"] = ".setskill 176 300 300"
gmCommands["setwands"] = ".setskill 228 300 300"
gmCommands["setcrossbows"] = ".setskill 226 300 300"
gmCommands["setfistweapons"] = ".setskill 473 300 300"
gmCommands["Common"] = ".learn 668"
gmCommands["Orcish"] = ".learn 669"
gmCommands["Taurahe"] = ".learn 670"
gmCommands["Darnassian"] = ".learn 671"
gmCommands["Dwarven"] = ".learn 672"
gmCommands["Thalassian"] = ".learn 813"
gmCommands["Draconic"] = ".learn 814"
gmCommands["Demon Tongue"] = ".learn 815"
gmCommands["Titan"] = ".learn 816"
gmCommands["Old Tongue"] = ".learn 817"
gmCommands["Gnomish"] = ".learn 7340"
gmCommands["Troll"] = ".learn 7341"
gmCommands["Gutterspeak"] = ".learn 17737"
gmCommands["Sheilds"] = ".learn 9116"
gmCommands["Cloth"] = ".learn 9078"
gmCommands["Leather"] = ".learn 9077"
gmCommands["Mail"] = ".learn 8737"
gmCommands["Plate"] = ".learn 750"
gmCommands["Org"] = ".t Orgri"
gmCommands["IF"] = ".t Ironforge"
gmCommands["SW"] = ".t Storm"
gmCommands["UC"] = ".t Undercity"
gmCommands["Darn"] = ".t Darnas"
gmCommands["TB"] = ".t Thunderbluff"
gmCommands["GM"] = ".t gm"
gmCommands["Jail"] = ".go xyz 16219 16403 -64.379 1"
gmCommands["Dev"] = ".go xyz 16303 -16173 45 451"
gmCommands["Pro"] = ".go xyz 16304 16318 75 451"
gmCommands["AC"] = ".t crater"
gmCommands["Hyj"] = ".go 4674.88 -3638.37 966.264 1"
gmCommands["Death"] = ".t deathknel"
gmCommands["Mul"] = ".go -2907 -260 53 1"
gmCommands["Vot"] = ".t valleyoftrials"
gmCommands["Shadow"] = ".t shadowglen"
gmCommands["North"] = ".t northshire"
gmCommands["Cold"] = ".t coldridge"
gmCommands["Kazzak"] = ".go -12226 -2484 2 0"
gmCommands["Azuregos"] = ".go 2283 -6061 110 1"
gmCommands["Lethon"] = ".go 725 -4021 98 0"
gmCommands["Emeriss"] = ".go -2927 1908 35 1"
gmCommands["Ysondre"] = ".go 3172 -3718 124 1"
gmCommands["Taerar"] = ".go -10451 -423 44 0"
gmCommands["Speed5"] = ".m s 5"
gmCommands["Undercloft"] = ".go 1574 -3266 90 0"
gmCommands["Shay"] = ".go -2845.66 2785.18 95 1"
gmCommands["Defiler"] = ".go -11232 -2838 165 0"
gmCommands["Taelan"] = ".go 2670 -1904 66 0"
gmCommands["TaelanEvent"] = ".go 2670 -1904 66 0"
gmCommands["KodoGraveyard"] = ".go -1296 1963 70 1"
gmCommands["Quagmire"] = ".go -4025 -3370 45 1"
gmCommands["DashelStonefist"] = ".go -8679.904297 438.315460 100 0"
gmCommands["Dragons"] = ".go -6704.650391 -4135.619629 270 0"
gmCommands["Pamela"] = ".go 1490 -3676 81 0"
gmCommands["Tale"] = ".reset talents"
gmCommands["Stat"] = ".reset stats"
gmCommands["Alch"] = ".learn 11611"
gmCommands["Blac"] = ".learn 9785"
gmCommands["Ench"] = ".learn 13920"
gmCommands["Engi"] = ".learn 12656"
gmCommands["Herb"] = ".learn 11993"
gmCommands["Leat"] = ".learn 10662"
gmCommands["Ridi"] = ".learn 33391"
gmCommands["Skin"] = ".learn 10768"
gmCommands["Tail"] = ".learn 12180"
gmCommands["Cook"] = ".learn 18260"
gmCommands["Firs"] = ".learn 10846"
gmCommands["Fish"] = ".learn 18248"
gmCommands["Mini"] = ".learn 10248"
gmCommands["BlastWave"] = ".learn 23331"
gmCommands["DarkGlare"] = ".learn 26029"
gmCommands["MagnetPull"] = ".learn 28337"
gmCommands["Knockback"] = ".learn 11027"
gmCommands["Distract"] = ".learn 1725"
gmCommands["setAlch"] = ".setskill 171 300 300"
gmCommands["setBlac"] = ".setskill 164 300 300"
gmCommands["setEnch"] = ".setskill 333 300 300"
gmCommands["setEngi"] = ".setskill 202 300 300"
gmCommands["setHerb"] = ".setskill 182 300 300"
gmCommands["setLeat"] = ".setskill 165 300 300"
gmCommands["setRidi"] = ".setskill 762 150 150"
gmCommands["setSkin"] = ".setskill 393 300 300"
gmCommands["setTail"] = ".setskill 197 300 300"
gmCommands["setCook"] = ".setskill 185 300 300"
gmCommands["setFirs"] = ".setskill 129 300 300"
gmCommands["setFish"] = ".setskill 356 300 300"
gmCommands["setMini"] = ".setskill 186 300 300"
gmCommands["PirateMale"] = ".aura 24708"
gmCommands["PirateFemale"] = ".aura 24709"
gmCommands["NinjaMale"] = ".aura 24711"
gmCommands["NinjaFemale"] = ".aura 24710"
gmCommands["LeperGnome"] = ".aura 24712"
gmCommands["Skeleton"] = ".aura 24723"
gmCommands["GhostMale"] = ".aura 24735"
gmCommands["GhostFemale"] = ".aura 24736"
gmCommands["RedOgre"] = ".aura 30167"
gmCommands["StunForever"] = ".aura 23775"
gmCommands["UnStunForever"] = ".unaura 23775"
gmCommands["Freeze"] = ".aura 9454"
gmCommands["UnFreeze"] = ".unaura 9454"
gmCommands["fingerprint"] = ".lookup fingerprint"

-- GM Mount Commands
gmCommands["UnAuraAll"] = ".unaura all"
gmCommands["AncientFrostsaber"] = ".aura 16056"
gmCommands["ArcticWolf"] = ".aura 16081"
gmCommands["BlackBattlestrider"] = ".aura 22719"
gmCommands["BlackNightsaber"] = ".aura 16055"
gmCommands["BlackRam"] = ".aura 17461"
gmCommands["BlackStallion"] = ".aura 470"
gmCommands["BlackWarKodo"] = ".aura 22718"
gmCommands["BlackWarRam"] = ".aura 22720"
gmCommands["BlackWarRaptor"] = ".aura 22721"
gmCommands["BlackWarSteed"] = ".aura 22717"
gmCommands["BlackWarTiger"] = ".aura 22723"
gmCommands["BlackWarWolf"] = ".aura 22724"
gmCommands["BlackQirajiBattleTank"] = ".aura 25863"
gmCommands["BlueMechanostrider"] = ".aura 10969"
gmCommands["BlueQirajiBattleTank"] = ".aura 25953"
gmCommands["BlueSkeletalHorse"] = ".aura 17463"
gmCommands["BrownHorse"] = ".aura 458"
gmCommands["BrownKodo"] = ".aura 18990"
gmCommands["BrownRam"] = ".aura 6899"
gmCommands["BrownSkeletalHorse"] = ".aura 17464"
gmCommands["BrownWolf"] = ".aura 6654"
gmCommands["Charger"] = ".aura 23214"
gmCommands["ChestnutMare"] = ".aura 6648"
gmCommands["DireWolf"] = ".aura 6653"
gmCommands["Dreadsteed"] = ".aura 23161"
gmCommands["EmeraldRaptor"] = ".aura 8395"
gmCommands["Felsteed"] = ".aura 5784"
gmCommands["FrostRam"] = ".aura 17460"
gmCommands["FluorescentGreenMechanostrider"] = ".aura 17458"
gmCommands["FrostwolfHowler"] = ".aura 23509"
gmCommands["GrayKodo"] = ".aura 18989"
gmCommands["GrayRam"] = ".aura 6777"
gmCommands["GreatBrownKodo"] = ".aura 23249"
gmCommands["GreatGrayKodo"] = ".aura 23248"
gmCommands["GreatWhiteKodo"] = ".aura 23247"
gmCommands["GreenKodo"] = ".aura 18991"
gmCommands["GreenMechanostrider"] = ".aura 17453"
gmCommands["GreenQirajiBattleTank"] = ".aura 26056"
gmCommands["GreenSkeletalWarhorse"] = ".aura 17465"
gmCommands["IcyBlueMechanostriderModA"] = ".aura 17459"
gmCommands["IvoryRaptor"] = ".aura 17450"
gmCommands["MottledRedRaptor"] = ".aura 16084"
gmCommands["Palomino"] = ".aura 16082"
gmCommands["Pinto"] = ".aura 472"
gmCommands["PurpleSkeletalWarhorse"] = ".aura 23246"
gmCommands["RedMechanostrider"] = ".aura 10873"
gmCommands["RedQirajiBattleTank"] = ".aura 26054"
gmCommands["RedSkeletalHorse"] = ".aura 17462"
gmCommands["RedSkeletalWarhorse"] = ".aura 22722"
gmCommands["RedWolf"] = ".aura 16080"
gmCommands["RidingTurtle"] = ".aura 30174"
gmCommands["RivendaresDeathcharger"] = ".aura 17481"
gmCommands["SpottedFrostsaber"] = ".aura 10789"
gmCommands["StormpikeBattleCharger"] = ".aura 23510"
gmCommands["StripedFrostsaber"] = ".aura 8394"
gmCommands["StripedNightsaber"] = ".aura 10793"
gmCommands["SwiftBlueRaptor"] = ".aura 23241"
gmCommands["SwiftBrownRam"] = ".aura 23238"
gmCommands["SwiftBrownSteed"] = ".aura 23229"
gmCommands["SwiftBrownWolf"] = ".aura 23250"
gmCommands["SwiftFrostsaber"] = ".aura 23221"
gmCommands["SwiftGrayRam"] = ".aura 23239"
gmCommands["SwiftGrayWolf"] = ".aura 23252"
gmCommands["SwiftGreenMechanostrider"] = ".aura 23225"
gmCommands["SwiftMistsaber"] = ".aura 23219"
gmCommands["SwiftOliveRaptor"] = ".aura 23242"
gmCommands["SwiftOrangeRaptor"] = ".aura 23243"
gmCommands["SwiftPalomino"] = ".aura 23227"
gmCommands["SwiftRazzashiRaptor"] = ".aura 24242"
gmCommands["SwiftStormsaber"] = ".aura 23338"
gmCommands["SwiftTimberWolf"] = ".aura 23251"
gmCommands["SwiftWhiteMechanostrider"] = ".aura 23223"
gmCommands["SwiftWhiteRam"] = ".aura 23240"
gmCommands["SwiftWhiteSteed"] = ".aura 23228"
gmCommands["SwiftYellowMechanostrider"] = ".aura 23222"
gmCommands["SwiftZulianTiger"] = ".aura 24252"
gmCommands["TealKodo"] = ".aura 18992"
gmCommands["TimberWolf"] = ".aura 580"
gmCommands["TurquoiseRaptor"] = ".aura 10796"
gmCommands["UnpaintedMechanostrider"] = ".aura 17454"
gmCommands["VioletRaptor"] = ".aura 10799"
gmCommands["Warhorse"] = ".aura 13819"
gmCommands["WhiteMechanostriderModB"] = ".aura 15779"
gmCommands["WhiteRam"] = ".aura 6898"
gmCommands["WhiteStallion"] = ".aura 16083"
gmCommands["WinterspringFrostsaber"] = ".aura 17229"
gmCommands["YellowQirajiBattleTank"] = ".aura 26055"
-- GM Commands End
function GmAddonW(Text, Prijemce) -- Whisper backend allows crossfaction whispering via addon.
	if strlen(Text) > 255 and strlen(Text) <= 500 then
		SendChatMessage(strsub(Text,0,250),"WHISPER", nil, Prijemce);
		SendChatMessage(strsub(Text,251,strlen(Text)),"WHISPER", nil, Prijemce);
	elseif strlen(Text) > 500 and strlen(Text) < 750 then
		SendChatMessage(strsub(Text,0,250),"WHISPER", nil, Prijemce);
		SendChatMessage(strsub(Text,251,500),"WHISPER", nil, Prijemce);
		SendChatMessage(strsub(Text,501,strlen(Text)),"WHISPER", nil, Prijemce);
	else	
		SendChatMessage(Text,"WHISPER", nil, Prijemce);
	end
end
 function print(text)  -- allows functions to print to the chat box
	 gmAddonPrint(text,1, 1, 1, "gmAddon");
 end
function gmAddon:OnInitialize() -- gm addon on load function
	self:Hook(DEFAULT_CHAT_FRAME, "AddMessage")
end
function btnGmPinfoId_OnClick()
	print( "|cffff0000Player information|r|cffffffff:|r|cffffff00 \124Hplayer:"..txtGmplayernames:GetText().."\124hCharacter: |cffffffff["..txtGmplayernames:GetText().."]\124h \124Hplayer:"..txtGmaccountnames:GetText().."\124h|cffffff00Account: |r|cffffffff["..txtGmaccountnames:GetText().."]\124h \124Hplayer:"..txtGmPinfoIp2:GetText().."\124h|cffffff00IP: |r|cffffffff["..txtGmPinfoIp2:GetText().."]\124h \124Hplayer:"..txtGmPinfoFinger:GetText().."\124h|cffffff00Fingerprint: |r|cffffffff["..txtGmPinfoFinger:GetText().."]\124h")
end
function gmAddon:AddMessage(frame, text, r, g, b, id) --Hook to scan chat for keywords
	if id == GetChatTypeIndex("SYSTEM") then
-- Change Values here to disable or hide certain views of the addon based on account level
		if strfind(text,"Your account level is: 5") then --level 5 disable buttons	
		gmAuctionOpen:Disable()
		end
		if strfind(text,"Your account level is: 4") then --level 4 disable buttons	
                btnGmWho:Disable()
		gmAuctionOpen:Disable()
		end
		if strfind(text,"Your account level is: 3") then --level 3 disable buttons		
                btnGmWho:Disable()
		gmAuctionOpen:Disable()
		end
		if strfind(text,"Your account level is: 2") then --level 2 disable buttons
                btnGmWho:Disable()
		gmAuctionOpen:Disable()	
		end		
		if strfind(text,"Your account level is: 1") then --level 1 disable buttons
                btnGmWho:Disable()
		gmAuctionOpen:Disable()	
		end		
		if strfind(text,"Your account level is: 0") then --level 0 disable buttons
--		btngmLearnOpen:Disable()
--		btngmAuraOpen:Disable()		
--		btngmBanIPRange:Disable()
--		btngmBanIP:Disable()
--		btngmBaninfoIP:Disable()
--		btngmLookup:Disable()
--		btngmLookupacc:Disable()
--		btngmBanOpen:Disable()		
--		ipformat:Hide()	
--		gmMailSendDel:Disable()
--		gmMailSend:Disable()
--		gmIssueSend:Disable()
--		txtitemid:Hide()
--		txtissueid:Hide()
--		txtownerid:Hide()
--		gmMailItem:Hide()
--		gmMailOwner:Hide()
--		gmMailIssue:Hide()
                btnGmWho:Disable()
		gmAuctionOpen:Disable()
--		gmMountOpen:Disable()		
		end

		if strfind(text,"Player") and strfind(text,"SEC:") then 
			local _,_,person = string.find(arg1,"|cffffffff|Hplayer:(%w+)")		
			local _,_,guid = string.find(arg1, "GUID: (%d+)")
			local _,_,account = string.find(arg1, "Account: (%w+)")
			local _,_,id,status = string.find(arg1, ".*ID: (%d+)] (%w+)")	
			t = Ticket:new()
			t:setTicketGuid(guid)
			t:setTicketAccount(account)
			t:setTicketId(id)
			t:setStatus(status)			
			t:setperson(person)	
			btnGmPinfoId:Show()
			txtGmPinfoStatus:SetPoint("BOTTOM", "txtGmTTime", "BOTTOM", -410, -145)			
			txtGmPinfoStatus:SetText(""..status.."")
			txtGmplayernames:SetText(person)
			txtGmaccountnames:SetText(account)
			txtGmaccountnames:Hide()			
			txtGmplayernames:Hide()
			txtGmPinfoId:SetText("Char: |cffffffff["..person.."]|r ("..guid..") \nAcc: "..account.." ("..id..")  " )
			gmPlayerName:SetText(person)
			SendWho(""..person.."")
		end
		if strfind(text,"Last IP:") and strfind(text,"Last login:") then
			local _,_,ip1,ip2,ip3,ip4 = string.find(arg1, "Last IP: (%d+).(%d+).(%d+).(%d+)")
			local _,_,yyyy,mm,dd,hh,nn,ss = string.find(arg1, "Last login: (%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)")	
			local _,_,lat = string.find(arg1, "Latency: (%d+)")					
			t = Ticket:new()
			t:setTicketIp(ip1.."."..ip2.."."..ip3.."."..ip4)
			t:setDateZ(yyyy.."-"..mm.."-"..dd.." "..hh..":"..nn..":"..ss)	
			t:setlat(lat)				
			txtGmPinfoIp:SetText("Last IP: "..ip1.."."..ip2.."."..ip3.."."..ip4.." \nLast Login: "..mm.."-"..dd.."-"..yyyy.." "..hh..":"..nn.."\nLatency: "..lat.." ")
			txtGmPinfoIp2:SetText(ip1.."."..ip2.."."..ip3.."."..ip4)
			txtGmPinfoIp2:Hide()
		end		
		if strfind(text,"Level:") and strfind(text,"Race:") and strfind(text,"Played Time:") then
			local _,_,level,race,class = string.find(arg1, "Level: (%d+) Race: (.*) Class: (%w+)")	
			local _,_,pla = string.find(arg1, "Played Time: (.*) M")
			local _,_,gold,silver,copper = string.find(arg1, "Money: (%d+)g(%d+)s(%d+)c");				
			t = Ticket:new()
			t:setTicketInfoe(level.."."..race.."."..class)			
			t:setpla(pla)	
			t:setGold(gold)
			t:setSilver(silver)
			t:setCopper(copper)			
			txtplainf:SetText("Level "..level.." "..race.." "..class.." \nPlayed Time: "..pla.." \nMoney: |cffC9B037"..gold.."g|r|cffD7D7D7"..silver.."s|r|cffAD8A56"..copper.."c|r")
		end
		if strfind(text,"Fingerprint:") then
			local _,_,finger = string.find(arg1, "Fingerprint: (.*)");				
			t = Ticket:new()			
			t:setfinger(finger)
			txtGmPinfoFingertext:SetText("Fingerprint:")			
			txtGmPinfoFinger:SetText(""..finger.."")
		if txtGmPinfoFinger:GetText() == nil then
		btnGmWho:Disable()
		end
		end		
		if strfind(text,": Level") then
			local _,_,guild = string.find(arg1, "<(.*)>")
			local _,_,locate = string.find(arg1, "- (.*)");			
			t = Ticket:new()
			t:setguild(guild)		
			t:setlocate(locate)
		if guild == nil then
			txtGmPinfoInfoe:SetText("Guild: None\nLocation: "..locate.." ")
			txtGmPinfoInfoe:SetTextColor(0.0, 1.0, 0.0);
			txtGmPinfoInfoe:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
			else
			txtGmPinfoInfoe:SetText("Guild: <"..guild..">\nLocation: "..locate.." ")
			txtGmPinfoInfoe:SetTextColor(0.0, 1.0, 0.0);
			txtGmPinfoInfoe:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
			end
		end	
		if strfind(text,"Player") and strfind(text,"ONLINE") then 
		txtGmPinfoStatus:SetTextColor(0.0, 1.0, 0.0);
		txtGmPinfoStatus:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
		end	
		if strfind(text,"Player") and strfind(text,"OFFLINE") then 
		txtGmPinfoStatus:SetTextColor(1.0, 0.0, 0.0);
		txtGmPinfoStatus:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
		end			
		if strfind(text,"0 players total") then	
		txtGmPinfoInfoe:SetText("")
		gmTicketSys["hideTicketSystemMSG"] = true;
		if gmTicketSys["hideTicketSystemMSG"] then return end
		end
		if strfind(text,"1 player total") then	
		gmTicketSys["hideTicketSystemMSG"] = true;
		if gmTicketSys["hideTicketSystemMSG"] then return end
		end		
		if strfind(text,"Player not found!") then
		txtGmPinfoStatus:SetPoint("BOTTOM", "txtGmTTime", "BOTTOM", -485, -240)
		txtGmPinfoStatus:SetText("Player doesn't exist")
		gmPlayerName:SetText("")
		txtGmPinfoStatus:SetTextColor(1.0, 0.0, 0.0);
		txtGmPinfoStatus:SetFont("Fonts\\FRIZQT__.TTF", 20, "OUTLINE, ")
		txtGmPinfoId:SetText("")
		txtGmPinfoIp:SetText("")
		txtplainf:SetText("")
		txtGmPinfoInfoe:SetText("")
		txtGmPinfoFingertext:SetText("")
		txtGmPinfoFinger:SetText("")
		btnGmPinfoId:Hide()
		gmTicketSys["hideTicketSystemMSG"] = true;
		if gmTicketSys["hideTicketSystemMSG"] then return end
		end
		if strfind(text,"Player") and strfind(text,"SEC:") then 		
		gmTicketSys["hideTicketSystemMSG"] = true;
		if gmTicketSys["hideTicketSystemMSG"] then return end
		end
		if strfind(text,"Last IP:") and strfind(text,"Last login:") then
		gmTicketSys["hideTicketSystemMSG"] = true;
		if gmTicketSys["hideTicketSystemMSG"] then return end
		end	
		if strfind(text,"Level:") and strfind(text,"Race:") and strfind(text,"Played Time:") then	
		gmTicketSys["hideTicketSystemMSG"] = true;
		if gmTicketSys["hideTicketSystemMSG"] then return end
		end	
		if strfind(text,"Fingerprint:") then	
		gmTicketSys["hideTicketSystemMSG"] = true;
		if gmTicketSys["hideTicketSystemMSG"] then return end
		end		
		if strfind(text,"Level") and strfind(text,"<") then 
			if strfind(text,"Level") and strfind(text,"Guid") and strfind(text,"Player") then 		
				gmTicketSys["hideTicketSystemMSG"] = false;
			else
				gmTicketSys["hideTicketSystemMSG"] = true;
			end
		if gmTicketSys["hideTicketSystemMSG"] then return end
		end		
		if strfind(text,"Played time:") and strfind(text,"Money:") then 		
		gmTicketSys["hideTicketSystemMSG"] = true;
		if gmTicketSys["hideTicketSystemMSG"] then return end
		end		
		if strfind(text,"There is no such subcommand") then --hide system command error
		gmTicketSys["hideTicketSystemMSG"] = true;
		if gmTicketSys["hideTicketSystemMSG"] then return end
		end
		if strfind(text,"Your account level is") then 		
		gmTicketSys["hideTicketSystemMSG"] = true;
		if gmTicketSys["hideTicketSystemMSG"] then return end
		end		
		if strfind(text,"Tickets count: %d+") then -- Load the number of tickets
			_,_,gmTicketSys["NumberOfTickets"],gmTicketSys["newTicketInfo"] = strfind(text,"Tickets count: (%d+) show new tickets: (%w+)")
			gmTicketSys["NumberOfTickets"] = tonumber(gmTicketSys["NumberOfTickets"])
			if gmTicketSys["readAllTickets"] then
				ticketArray = {};
				gmUpdateSlider()
				for i = 1,gmTicketSys["NumberOfTickets"] do
					gmTicketSys["ticketScanID"] = i
					SendChatMessage(gmCommands["ticket"].." "..gmTicketSys["ticketScanID"])
				end
				gmTicketSys["NumberOfTickets"] = 0 -- number of ticket obtained during ticket reading
				gmTicketSys["readAllTickets"]  = false
			end
			if gmTicketSys["hideTicketSystemMSG"] then return end
		elseif ticketArray and strfind(text,"New ticket from %w+") then -- Read new Tickets
			local _,_, playerName = strfind(text,"New ticket from (%w+)");
			SendChatMessage(".ticket "..playerName)
			gmAddonReadTicket = GetTime()
			PlaySound("PVPTHROUGHQUEUE" ,"master")
			gmNewTicket = true
		elseif ticketArray and strfind(text,"Ticket of ") and strfind(text,"Last updated") then -- Read the ticket
			local _,_,playerName = string.find(arg1, "player:(%w+)")
			local _,a,y,mm,d,h,m,s = string.find(arg1, "Last updated: (%d+)-(%d+)-(%d+)_(%d+)-(%d+)-(%d+)")
			msg = strsub(text,a+4,strlen(text))
			-- gmAddonReadTicket = GetTime()
			t = Ticket:new()
			t:setPlayerName(playerName)
			t:setTicketMsg(msg)
			t:setTicketTime(h..":"..m)
			t:setTicketDateA(mm.."."..d.."."..y)
			-- t:setTicketDateA(d.."."..mm..".")
			if (gmNewTicket) then 
				t:setTicketOnline(true) 
				gmTicketSys["NumberOfOnlineTickets"] = gmTicketSys["NumberOfOnlineTickets"] + 1
				gmNewTicket = nil
			end
			tinsert(ticketArray,t);
			gmTicketSys["NumberOfTickets"] = gmTicketSys["NumberOfTickets"] + 1
			updateBtns()
			gmUpdateSlider()
			if gmTicketSys["hideTicketSystemMSG"] then return end
		elseif ticketArray and id == GetChatTypeIndex("SYSTEM") and msg and gmAddonReadTicket then -- multi line ticket (max 1sec to read all lines)
			t:addTicketMsg(text)
			-- gmStopReadingTickets()
			if gmTicketSys["hideTicketSystemMSG"] then return end
		elseif ticketArray and strfind(text,"Character") and strfind(text,"ticket deleted") then -- Delete ticket
			local _,_,playerName = string.find(arg1, "player:(%w+)")
			gmDeleteTicket(playerName)
		elseif ticketArray and gmCheckOnline:GetChecked() and string.find(text, "Level %d+ %a+ %a+") and string.find(text, "player")  then
			local _,_,PlayerChat = string.find(text, "player:(%w+)")
			if gmCheckOnlinePlayerName == PlayerChat then 
				table.foreachi(ticketArray, function(k,v)
					if v.playerName == PlayerChat then
						v:setTicketOnline(true)
						gmTicketSys["NumberOfOnlineTickets"] = gmTicketSys["NumberOfOnlineTickets"] + 1
						-- gmUpdateSlider()
						updateBtns()
					end
				end)
				return
			end
		elseif ticketArray and gmCheckOnline:GetChecked() and  string.find(text, "%d+ playe%a+ total") and gmCheckOnlineTicketTime + 0.2 > GetTime() then -- number of players found (SendWho(...))
			updateBtns()
			return
		end
	end
	if id == null then id = "-" end
	-- self.hooks[frame].AddMessage(frame, string.format("%s", "["..id.."] "..text), r, g, b, id);
	self.hooks[frame].AddMessage(frame, string.format("%s", text), r, g, b, id);
end
function gmDeleteTicket(playerName)
	table.foreachi(ticketArray, function(k,v)
		-- print(k.." "..v.playerName)
		if (v and v.playerName == playerName) then
			-- print(k.." "..v.playerName)
			tremove(ticketArray,k)
			gmTicketSys["NumberOfTickets"] = gmTicketSys["NumberOfTickets"] - 1
			if v.TicketOnline then gmTicketSys["NumberOfOnlineTickets"] = gmTicketSys["NumberOfOnlineTickets"] - 1 end
			updateBtns()
			gmUpdateSlider()
			if k == gmTicketSys["ticketCurrent"] then 
				btnGmNextT_OnClick()
			elseif k<gmTicketSys["ticketCurrent"] then 
				btnGmPrevT_OnClick()
			end
			-- return
		end
	end)
end
function gmStopReadingTickets()
	if getn(ticketArray) == gmTicketSys["NumberOfTickets"] then 
		-- print("STOP")
		gmTicketSys["readAllTickets"] = false;
		gmTicketSys["hideTicketSystemMSG"] = false
		-- if gmPlayerName:GetText() == ""  then gmSetTicket(1) end
	end
end
function gmReadAllTickets()
	SendChatMessage(gmCommands["ticket"])
	gmTicketSys["readAllTickets"] = true;
	gmTicketSys["hideTicketSystemMSG"] = true
end
Ticket = {
	playerName = "",
	ticketMsg = "",
	ticketTime = "",
	ticketDateA = "",
	ticketDateB = "",
	answeredBy = "",
	ticketGuid = "",
	ticketAccount = "",
	ticketId = "",
	ticketInfoe = "",	
	TicketOnline = false,
	setPlayerName = function (self,str)
		self.playerName = str;
	end,
	setTicketMsg = function (self,str)
		self.ticketMsg = str;
	end,
	addTicketMsg = function (self,str)
		self.ticketMsg = self.ticketMsg.."\n "..str;
	end,
	setTicketTime = function (self,str)
		self.ticketTime = str;
	end,
	setTicketDateA = function (self,str)
		self.ticketDateA = str;
	end,
	setTicketDateB = function (self,str)
		self.ticketDateB = str;
	end,
	setTicketGuid = function (self,str)
		self.ticketGuid = str;
	end,
	setTicketInfoe = function (self,str)
		self.ticketInfoe = str;
	end,	
	setTicketAccount = function (self,str)
		self.ticketAccount = str;
	end,		
	setTicketId = function (self,str)
		self.ticketId = str;
	end,	
	setStatus = function (self,str)
		self.status = str;
	end,		
	setTicketIp = function (self,str)
		self.ticketIp = str;
	end,
	setTicketTimez = function (self,str)
		self.ticketTimez = str;
	end,
	setDateZ = function (self,str)
		self.ticketDateZ = str;
	end,
	setlat = function (self,str)
		self.ticketlat = str;
	end,
	setperson = function (self,str)
		self.ticketlat = str;
	end,	
	setpla = function (self,str)
		self.ticketpla = str;
	end,
	setGold = function (self,str)
		self.ticketgold = str;
	end,
	setSilver = function (self,str)
		self.ticketsilver = str;
	end,
	setCopper = function (self,str)
		self.ticketcopper = str;
	end,	
	setfinger = function (self,str)
		self.ticketfinger = str;
	end,	
	setguild = function (self,str)
		self.ticketguild = str;
	end,
	setlocate = function (self,str)
		self.ticketlocate = str;
	end,
	setTicketOnline = function (self,bool)
		self.TicketOnline = bool;
	end,
	--setAnsweredBy = function (self,str)
	--	self.answeredBy = str;
	--end,
}
function Ticket:new(o)
	o = o or {}   -- create object if user does not provide one
	setmetatable(o, self)
	self.__index = self
	return o
end
-- function gmAddonFrame_OnLoad()
	-- gmAddonFrame:RegisterForDrag("LeftButton");
	-- gmAddonFrame:SetHeight(250)
	-- gmAddonFrame:SetWidth(520)
	-- gmAddonFrame:Hide()	
	-- ChatFrameEditBox:ClearAllPoints()
	-- ChatFrameEditBox:SetPoint("BOTTOMLEFT",  ChatFrame1, "TOPLEFT", -25, -150)
	-- ChatFrameEditBox:SetPoint("BOTTOMRIGHT", ChatFrame1, "TOPRIGHT", 25, -150)
-- --
-- end
local f = CreateFrame("Frame", nil, UIParent)
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function(self, event)
	btnaccount_OnClick()
	gmGMVon_OnClick()
	gmGMoff_OnClick()
	LoggingChat(true)
	btnGmPinfoId:Hide()
	chatframetoggle()
	menubuttonstoggle()
	btnGmLoadT_FlashEffect()
	btnenddisable_OnClick()
	gmPlayerName:SetAutoFocus(false)
	UIParent:SetScale(.8299999833107)	-- change the size and reload your ui (/reloadui) or restart the game
	f:UnregisterAllEvents()
	ChatFrameEditBox:SetFrameStrata("DIALOG");
	ChatFrame1:SetFrameStrata("DIALOG");
end)
 function mouse(self,delta)
	 gmBtn1T:SetText(tostring(delta))
 end
 function setup()
gmUIFrame:SetScale(.771)  
end

function setTicketByPlayerName(name)
	-- print(name)
	name = gsub(name, "|cff20ff20", "")
	name = gsub(name, "|cff808080", "")
	table.foreachi(ticketArray, function(k,v)
		if (v and v.playerName == name) then
			gmSetTicket(k)
		end
	end)
end
function btnGmLoadT_OnClick()
	GuildRoster() -- fetch info about guild members, needed to update GM's public note.
	btnGmLoadT_FlashEffectOff();
	txtGmMsgT:Show()
	gmTCount:Show()
	gmAssign:Show()
	assigntitle:SetTextColor(1.0, 0.55, 0.0);
	assigntitle:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE, ")	
	txtGmTTime:Show()
	gmCheckOnline:Enable()
	btnGmLoadT:Hide()
	txtGmMsgT:Show()
	gmTCount:SetFont("Fonts\\FRIZQT__.TTF", 16, "OUTLINE, ")
	txtGmTTime:SetFont("Fonts\\FRIZQT__.TTF", 16, "OUTLINE, ")
	ticketArray = {};
	gmAddonReadTicket = GetTime()
	gmTicketSys["NumberOfTickets"] = 0
	gmTicketSys["NumberOfOnlineTickets"] = 0
	gmPlayerName:SetText("")
	gmCommonPlayer:SetText("")	
	txtGmMsgT:SetText("Updating tickets... If this takes too long type /reload and load the addon again. Or click the 'Refresh Ticket Text' button!")
	txtGmTTime:SetText("")
	gmReadAllTickets()
end
function btnGmNextT_OnClick()
	if gmTicketSys["ticketCurrent"] + 1 > getn(ticketArray) then
		gmTicketSys["ticketCurrent"] = 1
	else
		gmTicketSys["ticketCurrent"] = gmTicketSys["ticketCurrent"] + 1
	end
	gmSetTicket(gmTicketSys["ticketCurrent"])
	MySlider:SetValue(gmTicketSys["ticketCurrent"])
end
function btnGmPrevT_OnClick()
	if gmTicketSys["ticketCurrent"] - 1 <= 0  then
		gmTicketSys["ticketCurrent"] = getn(ticketArray)
	else
		gmTicketSys["ticketCurrent"] = gmTicketSys["ticketCurrent"] - 1
	end
	gmSetTicket(gmTicketSys["ticketCurrent"])
	MySlider:SetValue(gmTicketSys["ticketCurrent"])
end
function btnGmFirst_OnClick()
	gmSetTicket(1)
	MySlider:SetValue(gmTicketSys["ticketCurrent"])
end
function btnGmLast_OnClick()
	gmSetTicket(getn(ticketArray))
	MySlider:SetValue(gmTicketSys["ticketCurrent"])
end
function btnGmDeleteT_OnClick()
	if strlower(gmPlayerName:GetText()) == "all" then return end
	SendChatMessage(gmCommands["ticket delete"].." "..gmPlayerName:GetText())
	gmAddTicketSolved()
	gmSendAddonMsg("Character "..gmPlayerName:GetText().." ticket deleted")
end
function btnGmWho_OnClick()
	SendChatMessage(gmCommands["fingerprint"].." "..txtGmPinfoFinger:GetText())
end
function btnGmPinfo_OnClick()
	SendChatMessage(gmCommands["pinfo"].." "..gmPlayerName:GetText())
end
function btnGmPinfoT1_OnClick()
	SendChatMessage(gmCommands["pinfo"].." "..gmBtn1T:GetText())
	SendWho(gmBtn1T:GetText())
end
function btnGmPinfoT2_OnClick()
	SendChatMessage(gmCommands["pinfo"].." "..gmBtn2T:GetText())
	SendWho(gmBtn2T:GetText())
end
function btnGmPinfoT3_OnClick()
	SendChatMessage(gmCommands["pinfo"].." "..gmBtn3T:GetText())
end
function btnGmPinfoT4_OnClick()
	SendChatMessage(gmCommands["pinfo"].." "..gmBtn4T:GetText())
end
function btnGmPinfoT5_OnClick()
	SendChatMessage(gmCommands["pinfo"].." "..gmBtn5T:GetText())
end
function btnGmPinfoT6_OnClick()
	SendChatMessage(gmCommands["pinfo"].." "..gmBtn6T:GetText())
end
function btnGmTurtle_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	gmToggleTurtleOpen_OnClick()
	end	
end
function btnGmChar_OnClick()
	charpannel_OnClick()
	end	
function charpannel_OnClick()	
	if CharacterFrame:IsVisible() then
	CharacterFrame:Hide()
	else
	CharacterFrame:Show()
	end
	end
function btnGmSpell_OnClick()
	spellpannel_OnClick()
	end	
function spellpannel_OnClick()	
	if SpellBookFrame:IsVisible() then
	SpellBookFrame:Hide()
	else
	SpellBookFrame:Show()
	end
	end
function btnGmTalent_OnClick()
	ToggleTalentFrame()
	end	
function btnGmQuest_OnClick()
	questpannel_OnClick()
	end	
function questpannel_OnClick()	
	if QuestLogFrame:IsVisible() then
	QuestLogFrame:Hide()
	else
	QuestLogFrame:Show()
	end
	end	
function btnGmSocial_OnClick()
	socialpannel_OnClick()
	end	
function socialpannel_OnClick()	
	if FriendsFrame:IsVisible() then
	FriendsFrame:Hide()
	else
	FriendsFrame:Show()
	end
	end	
function btnGmWorld_OnClick()
	worldpannel_OnClick()
	end	
function worldpannel_OnClick()	
	if WorldMapFrame:IsVisible() then
	WorldMapFrame:Hide()
	else
	WorldMapFrame:Show()
	end
	end	
function btnGmMenu_OnClick()
	ToggleGameMenu()	
	end	
function btnGmHelp_OnClick()
	helppannel_OnClick()
	end	
function helppannel_OnClick()	
	if HelpFrame:IsVisible() then
	HelpFrame:Hide()
	else
	HelpFrame:Show()
	end
	end		
function gmToggleTurtleOpen_OnClick()
	if gmToggleTurtleFrame:IsVisible() then
		btnToggleTurtleClose_OnClick()	
	SendChatMessage(gmCommands["Turtleoff"])
	else
		gmToggleTurtleFrame:Show()	
	SendChatMessage(gmCommands["Turtle"])
	end
end
function btnGmTinfo_OnClick()
	gmPrintGuildNotes()
end
function btnGmTinfoR_OnClick()
	gmResetPublicNote()
end
function btngmLearnwep_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["axes"])
	SendChatMessage(gmCommands["axestwo"])
	SendChatMessage(gmCommands["maces"])
	SendChatMessage(gmCommands["macestwo"])
	SendChatMessage(gmCommands["polearms"])
	SendChatMessage(gmCommands["swords"])
	SendChatMessage(gmCommands["swordstwo"])
	SendChatMessage(gmCommands["unarmed"])
	SendChatMessage(gmCommands["defense"])
	SendChatMessage(gmCommands["staves"])
	SendChatMessage(gmCommands["bows"])
	SendChatMessage(gmCommands["guns"])
	SendChatMessage(gmCommands["daggers"])
	SendChatMessage(gmCommands["Thrown"])
	SendChatMessage(gmCommands["wands"])
	SendChatMessage(gmCommands["crossbows"])
	SendChatMessage(gmCommands["fistweapons"])
	SendChatMessage(gmCommands["setaxes"])
	SendChatMessage(gmCommands["setaxestwo"])
	SendChatMessage(gmCommands["setmaces"])
	SendChatMessage(gmCommands["setmacestwo"])
	SendChatMessage(gmCommands["setpolearms"])
	SendChatMessage(gmCommands["setswords"])
	SendChatMessage(gmCommands["setswordstwo"])
	SendChatMessage(gmCommands["setunarmed"])
	SendChatMessage(gmCommands["setdefense"])
	SendChatMessage(gmCommands["setstaves"])
	SendChatMessage(gmCommands["setbows"])
	SendChatMessage(gmCommands["setguns"])
	SendChatMessage(gmCommands["setdaggers"])
	SendChatMessage(gmCommands["setThrown"])
	SendChatMessage(gmCommands["setwands"])
	SendChatMessage(gmCommands["setcrossbows"])
	SendChatMessage(gmCommands["setfistweapons"])	
	end
end
function btngmLearnLang_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Common"])
	SendChatMessage(gmCommands["Orcish"])
	SendChatMessage(gmCommands["Taurahe"])
	SendChatMessage(gmCommands["Darnassian"])
	SendChatMessage(gmCommands["Dwarven"])
	SendChatMessage(gmCommands["Thalassian"])
	SendChatMessage(gmCommands["Draconic"])
	SendChatMessage(gmCommands["Demon Tongue"])
	SendChatMessage(gmCommands["Titan"])
	SendChatMessage(gmCommands["Old Tongue"])
	SendChatMessage(gmCommands["Gnomish"])
	SendChatMessage(gmCommands["Troll"])
	SendChatMessage(gmCommands["Gutterspeak"])
	end	
end	
function btngmLearnGM_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["MagnetPull"])
	SendChatMessage(gmCommands["Knockback"])
	SendChatMessage(gmCommands["Distract"])
	end	
end	
gmCommands["BlastWave"] = ".learn 23331"
gmCommands["DarkGlare"] = ".learn 26029"
gmCommands["MagnetPull"] = ".learn 28337"
gmCommands["Knockback"] = ".learn 11027"
gmCommands["Distract"] = ".learn 1725"
function btngmLearnTale_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Tale"])
	end	
end	
function btngmLearnStat_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Stat"])
	end	
end	
function btngmLearnAlch_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Alch"])
	SendChatMessage(gmCommands["setAlch"])	
	end	
end	
function btngmLearnBlac_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Blac"])
	SendChatMessage(gmCommands["setBlac"])	
	end	
end	
function btngmLearnEnch_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Ench"])
	SendChatMessage(gmCommands["setEnch"])	
	end	
end	
function btngmLearnEngi_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Engi"])
	SendChatMessage(gmCommands["setEngi"])	
	end	
end	
function btngmLearnHerb_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Herb"])
	SendChatMessage(gmCommands["setHerb"])
	end	
end	
function btngmLearnLeat_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Leat"])
	SendChatMessage(gmCommands["setLeat"])
	end	
end	
function btngmLearnRidi_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Ridi"])
	SendChatMessage(gmCommands["setRidi"])
	end	
end	
function btngmLearnSkin_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Skin"])
	SendChatMessage(gmCommands["setSkin"])
	end	
end	
function btngmLearnTail_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Tail"])
	SendChatMessage(gmCommands["setTail"])
	end	
end	
function btngmLearnCook_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Cook"])
	SendChatMessage(gmCommands["setCook"])
	end	
end	
function btngmLearnFirs_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Firs"])
	SendChatMessage(gmCommands["setFirs"])
	end	
end	
function btngmLearnFish_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Fish"])
	SendChatMessage(gmCommands["setFish"])
	end	
end	
function btngmLearnMini_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Mini"])
	SendChatMessage(gmCommands["setMini"])	
	end	
end	
function btngmLearnArm_OnClick()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Sheilds"])
	end	
end	
--Ilmus started adding Maintenance Frame tele commands
function btngmTeleDefiler_OnClick()
	SendChatMessage(gmCommands["Defiler"])
end	
function btngmTeleQuagmire_OnClick()
	SendChatMessage(gmCommands["Quagmire"])
end	
function btngmTeleDragons_OnClick()
	SendChatMessage(gmCommands["Dragons"])
end	
function btngmTeleTaelan_OnClick()
	SendChatMessage(gmCommands["Taelan"])
end	
function btngmTeleTaelanEvent_OnClick()
	SendChatMessage(gmCommands["TaelanEvent"])
end	
--Ilmus stopped adding Maintenance Frame tele commands
function btngmTeleOrg_OnClick()
	SendChatMessage(gmCommands["Org"])
end	
function btngmTeleUC_OnClick()
	SendChatMessage(gmCommands["UC"])
end	
function btngmTeleTB_OnClick()
	SendChatMessage(gmCommands["TB"])
end	
function btngmTeleDeath_OnClick()
	SendChatMessage(gmCommands["Death"])
end	
function btngmTeleMul_OnClick()
	SendChatMessage(gmCommands["Mul"])
end	
function btngmTeleVot_OnClick()
	SendChatMessage(gmCommands["Vot"])
end	
function btngmTeleIf_OnClick()
	SendChatMessage(gmCommands["IF"])
end	
function btngmTeleSW_OnClick()
	SendChatMessage(gmCommands["SW"])
end	
function btngmTeleDarn_OnClick()
	SendChatMessage(gmCommands["Darn"])
end	
function btngmTeleShadow_OnClick()
	SendChatMessage(gmCommands["Shadow"])
end	
function btngmTeleNorth_OnClick()
	SendChatMessage(gmCommands["North"])
end	
function btngmTeleCold_OnClick()
	SendChatMessage(gmCommands["Cold"])
end	
function btngmTeleGM_OnClick()
	SendChatMessage(gmCommands["GM"])
end	
function btngmTeleJail_OnClick()
	SendChatMessage(gmCommands["Jail"])
end	
function btngmTeleDev_OnClick()
	SendChatMessage(gmCommands["Dev"])
end	
function btngmTelePro_OnClick()
	SendChatMessage(gmCommands["Pro"])
end	
function btngmTeleAC_OnClick()
	SendChatMessage(gmCommands["AC"])
end	
function btngmTeleHyj_OnClick()
	SendChatMessage(gmCommands["Hyj"])
end	
function btngmTeleKazzak_OnClick()
	SendChatMessage(gmCommands["Kazzak"])
end	
function btngmTeleAzuregos_OnClick()
	SendChatMessage(gmCommands["Azuregos"])
end	
function btngmTeleLethon_OnClick()
	SendChatMessage(gmCommands["Lethon"])
end	
function btngmTeleEmeriss_OnClick()
	SendChatMessage(gmCommands["Emeriss"])
end	
function btngmTeleYsondre_OnClick()
	SendChatMessage(gmCommands["Ysondre"])
end	
function btngmTeleTaerar_OnClick()
	SendChatMessage(gmCommands["Taerar"])
end	
function btngmAuraPirateM_OnClick()
	SendChatMessage(gmCommands["PirateMale"])
end	
function btngmAuraPirateF_OnClick()
	SendChatMessage(gmCommands["PirateFemale"])
end	
function btngmAuraNinjaM_OnClick()
	SendChatMessage(gmCommands["NinjaMale"])
end	
function btngmAuraNinjaF_OnClick()
	SendChatMessage(gmCommands["NinjaFemale"])
end	
function btngmAuraLeper_OnClick()
	SendChatMessage(gmCommands["LeperGnome"])
end	
function btngmAuraSkeleton_OnClick()
	SendChatMessage(gmCommands["Skeleton"])
end	
function btngmAuraGhostM_OnClick()
	SendChatMessage(gmCommands["GhostMale"])
end	
function btngmAuraGhostF_OnClick()
	SendChatMessage(gmCommands["GhostFemale"])
end	
function btngmAuraRedOgre_OnClick()
	SendChatMessage(gmCommands["RedOgre"])
end	
function btngmAuraStunForever_OnClick()
	SendChatMessage(gmCommands["StunForever"])
end	
function btngmAuraUnStunForever_OnClick()
	SendChatMessage(gmCommands["UnStunForever"])
end	
function btngmAuraFreeze_OnClick()
	SendChatMessage(gmCommands["Freeze"])
end	
function btngmAuraUnFreeze_OnClick()
	SendChatMessage(gmCommands["UnFreeze"])
end	
function btnenddisable_OnClick()
	if gmTicketSys["NumberOfTickets"] == 0 then
		btngmEnd:Disable()
		btnGmHoldTicket:Disable()
		btnGmEscalate2:Disable()
		btnGmEscalate:Disable()
	elseif gmTicketSys["NumberOfTickets"] > 0 then
		btngmEnd:Enable()
		btnGmHoldTicket:Enable()
		btnGmEscalate2:Enable()
		btnGmEscalate:Enable()
	end
end	
function btngmticket_OnClick()
	if gmAddonFrame:IsVisible() then
		gmAddonFrame:Hide()
		else
		gmAddonFrame:Show()
	end
end	
function updateBtns()
	if gmTicketSys["NumberOfOnlineTickets"] > 0 then 
		gmTCount:SetText("Tickets: "..gmTicketSys["NumberOfTickets"].."("..GREEN_FONT_COLOR_CODE..gmTicketSys["NumberOfOnlineTickets"]..FONT_COLOR_CODE_CLOSE..")")
		btnenddisable_OnClick()
	else
		gmTCount:SetText("Tickets: "..gmTicketSys["NumberOfTickets"])
		btnenddisable_OnClick()
	end
	if ticketArray and btn and ticketArray[MySlider:GetValue()] then
	else
		return
	end
	if getn(ticketArray) > 5 then
		value = MySlider:GetValue()
	else
		value = 1
	end
	--if gmFilterOnline:GetChecked() then -- Show only online tickets (10)
	--		for i=1,getn(btn) do
	--			btn[i]:Hide()
	--		end
	--		iBtn = 1
	--		table.foreachi(ticketArray, function(k,v)
	--			if v.TicketOnline == true then
	--				if btn[iBtn] == nil then return end
	--				btn[iBtn]:SetText(GREEN_FONT_COLOR_CODE..v.playerName)
	--				if not btn[iBtn]:IsShown() then btn[iBtn]:Show() end
	--				iBtn = iBtn + 1
	--			end
	--		end)
	--else -- Show online and offlines tickets
	for i=1,getn(btn) do
		-- GREEN_FONT_COLOR_CODE
		if btn[i] and ticketArray[i-1 + value] then
			if ticketArray[i].answeredBy ~= ""  then
				btn[i]:SetText(GRAY_FONT_COLOR_CODE..ticketArray[i-1 + value].playerName)
			elseif ticketArray[i-1 + value].TicketOnline == true then
				btn[i]:SetText(GREEN_FONT_COLOR_CODE..ticketArray[i-1 + value].playerName)  
			else
				btn[i]:SetText(ticketArray[i-1 + value].playerName) 
			end
			if not btn[i]:IsShown() then btn[i]:Show() end
		else
			btn[i]:Hide()
		end
	end
	--end
end
function updateAnswered()
end
function gmSetTicket(i)
	if gmTicketSys["NumberOfTickets"] == 0 then
		gmPlayerName:SetText("")
		txtGmMsgT:SetText("It's all done! Great job!")
		txtGmTTime:SetText("")
		--MySlider:SetValue(0)
		return
	elseif not ticketArray[i] then 
		return 
	end -- /print ticketArray[3].ticketOnline
	if ticketArray[i].TicketOnline == true then
	else
	end
	-- print(ticketArray[i].answeredBy)
	if ticketArray[i].answeredBy ~= "" then
		gmAssign:SetFont("Fonts\\FRIZQT__.TTF", 20, "OUTLINE, ")	
		gmAssign:SetText("This ticket has been answered by:\n\n "..ticketArray[i].answeredBy)
		gmAssignBox:Show()
		btnGmAssignBoxClose:Show()
	else
		gmAssignBox:Hide()
		gmAssign:SetText("")
		btnGmAssignBoxClose:Hide()
	end
	gmPlayerName:SetText(ticketArray[i].playerName)
	txtGmMsgT:SetText("\n "..ticketArray[i].ticketMsg)
	txtGmTTime:SetText("Made: "..ticketArray[i].ticketDateA.." "..ticketArray[i].ticketTime)
	--gmSendAddonMsg("view ticket")
	-- MySlider:SetValue(i)
	if gmTicketSys["ticketCurrent"] ~= i then gmTicketSys["ticketCurrent"] = i; end
end
function txtGmSendWhisp_OnEnterPressed()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
	GmAddonW(txtGmSendWhisp:GetText(), gmPlayerName:GetText())
	gmClearntxtGmSendWhisp()	
end
--ilmus modifier key responses here
--ilmus random whisper button here
function txtGmSendWhisp2__OnClick()
 Min = 1
 Max = 12
	local GetRandomWhisper = random(Min,Max)
	local gmStartConversation = GetRandomWhisper
		if gmStartConversation == 1 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage("Salutations, Traveler "..gmPlayerName:GetText()..". I am Game Master "..UnitName("Player")..". How are you doing on this fine day?","WHISPER", nil, gmPlayerName:GetText());	
		end
		if gmStartConversation == 2 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage("Greetings, "..gmPlayerName:GetText()..". This is Game Master "..UnitName("Player")..". Do you have a moment to talk about your ticket?","WHISPER", nil, gmPlayerName:GetText());
		end
		if gmStartConversation == 3 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage("Greetings, "..gmPlayerName:GetText()..". This is Game Master "..UnitName("Player")..". Thank you for taking the time to contact us. Have you a few moments to speak with me?","WHISPER", nil, gmPlayerName:GetText());		
		end
		if gmStartConversation == 4 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage("Greetings, "..gmPlayerName:GetText()..". I am Game Master "..UnitName("Player")..". Do you have a moment to discuss why you have summoned me from my slumber?","WHISPER", nil, gmPlayerName:GetText());
		end
		if gmStartConversation == 5 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage("Salutations, "..gmPlayerName:GetText().."! Game Master "..UnitName("Player").." reporting in. Do you have a moment to chat?","WHISPER", nil, gmPlayerName:GetText());
		end
		if gmStartConversation == 6 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage("Greetings, my friend "..gmPlayerName:GetText()..". This is Game Master "..UnitName("Player")..". I have received your ticket in regards to a issue you are having. Thanks for using our Ticket System. Do you have a moment to chat?","WHISPER", nil, gmPlayerName:GetText());
		end
		if gmStartConversation == 7 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage("*The ground shakes beneath your feet. An enormous lava elemental spews up from the ground.* Greetings "..gmPlayerName:GetText()..". This is Game Master "..UnitName("Player")..". Do you have a moment to discuss why you have summoned me from my slumber?","WHISPER", nil, gmPlayerName:GetText());
		end
		if gmStartConversation == 8 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage("Salutations "..gmPlayerName:GetText().."! I am Game Master "..UnitName("Player")..". My apologizes for disrupting your playtime, do you have a moment to discuss the ticket you created?","WHISPER", nil, gmPlayerName:GetText());
		end
		if gmStartConversation == 9 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage("Greetings, "..gmPlayerName:GetText()..". This is Game Master "..UnitName("Player")..". Do you have a second to talk about your ticket?","WHISPER", nil, gmPlayerName:GetText());
		end		
		if gmStartConversation == 10 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage("Greetings, my friend "..gmPlayerName:GetText()..". This is Game Master "..UnitName("Player")..". How are you today?","WHISPER", nil, gmPlayerName:GetText());
		end
		if gmStartConversation == 11 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage("Greetings "..gmPlayerName:GetText()..", this is Game Master "..UnitName("Player")..". How are you today?","WHISPER", nil, gmPlayerName:GetText());
		end
		if gmStartConversation == 12 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage("Greetings "..gmPlayerName:GetText()..". This is Game Master "..UnitName("Player")..". I've received your petition and I'm here to try and help you out. But first, how are you doing today?","WHISPER", nil, gmPlayerName:GetText());
		end
end
function txtGmEnd__OnClick()
 Min = 1
 Max = 3
	local GetRandomWhisper = random(Min,Max)
	local gmStartConversation = GetRandomWhisper
		if gmStartConversation == 1 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage(""..gmPlayerName:GetText()..", Your ticket has now been closed. For any further questions, please create a new ticket.","WHISPER", nil, gmPlayerName:GetText());	
		end
		if gmStartConversation == 2 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage("Farewell, "..gmPlayerName:GetText()..". Thank you for taking the time to submit a ticket. If you have any additional questions then feel free to create another ticket.","WHISPER", nil, gmPlayerName:GetText());
		end
		if gmStartConversation == 3 then
			gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
			SendChatMessage(""..gmPlayerName:GetText()..", I hope that I have been able to assist you with your issue today, if any further issues occur please create a new ticket.","WHISPER", nil, gmPlayerName:GetText());		
		end
		btnGmDeleteT_OnClick()
end
function xtxtGmSendWhisp3__OnClick()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("Greetings, "..gmPlayerName:GetText()..". This is Gamemaster "..UnitName("Player")..". Do you have a moment to talk about your ticket?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("Salutations, Traveler "..gmPlayerName:GetText()..". I am Gamemaster "..UnitName("Player")..". How are you doing on this fine day?","WHISPER", nil, gmPlayerName:GetText());
end
function txtGmSendWhisp3__OnClick()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("Salutations, Traveler "..gmPlayerName:GetText()..". I am Gamemaster "..UnitName("Player")..". How are you doing on this fine day?","WHISPER", nil, gmPlayerName:GetText());
end
function txtGmSendWhisp4__OnClick()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("Greetings, "..gmPlayerName:GetText()..". This is Gamemaster "..UnitName("Player")..". Thank you for taking the time to contact us. Have you a few moments to speak with me?","WHISPER", nil, gmPlayerName:GetText());
end
function txtGmSendWhisp5__OnClick()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("Greetings, My friend "..gmPlayerName:GetText()..". This is Gamemaster "..UnitName("Player")..". I have received your ticket in regards to a issue you are having. Thanks for using our Ticket System. Do you have a moment to chat?","WHISPER", nil, gmPlayerName:GetText());
end
function txtGmSendWhisp6__OnClick()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("Greetings, "..gmPlayerName:GetText()..". I am Game Master "..UnitName("Player")..". Do you have a moment to discuss why you have summoned me from my slumber?","WHISPER", nil, gmPlayerName:GetText());
end
function txtGmSendWhisp7__OnClick()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("Salutations, "..gmPlayerName:GetText().."! Game Master "..UnitName("Player").." reporting in. Do you have a moment to chat?","WHISPER", nil, gmPlayerName:GetText());
end
function txtGmSendJoke2__OnClick()
 Min = 1
 Max = 20
	local GetRandomWhisper = random(Min,Max)
	local gmStartConversation = GetRandomWhisper
		if gmStartConversation == 1 then
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("What do you call a druid who melees in tree form?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("A combat log.","WHISPER", nil, gmPlayerName:GetText());
		end
		if gmStartConversation == 2 then
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("And Christ said unto his disciples: 'I shall grant you eternal Salvation!' The disciples fell to their knees and replied: 'Give us Kings, noob!'","WHISPER", nil, gmPlayerName:GetText());
		end
		if gmStartConversation == 3 then
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("What did the main tank say to his girlfriend when she caught him raiding with a resto druid?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("''What can i say? She has the HoTs for me''","WHISPER", nil, gmPlayerName:GetText());	
		end
		if gmStartConversation == 4 then
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("One day Arthas was at Uther's house and asked 'What's the switch on the wall for?'","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("Uther replied 'FOR THE LIGHT!'","WHISPER", nil, gmPlayerName:GetText());	
		end
		if gmStartConversation == 5 then
	SendChatMessage("Why does the world's greatest raid team smell so bad?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("They never wipe.","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
		end
		if gmStartConversation == 6 then
	SendChatMessage("What does a paladin and a chicken got incommon?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("They both BoK BoK BoK.","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))	
		end
		if gmStartConversation == 7 then
	SendChatMessage("Why does Naxxramas fly?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("It has four wings of course.","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
		end
		if gmStartConversation == 8 then
	SendChatMessage("Why are pallidins overpowered?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("Because they come with their own Chargers.","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
		end
		if gmStartConversation == 9 then
	SendChatMessage("Why doesn't thunder bluff have any restautants?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("The waiters keep quitting when they find out they'll be tipped.","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))	
		end		
		if gmStartConversation == 10 then
	SendChatMessage("Do you know why gnomes can't be paladins?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("Poor little guys Can't reach the light. :(","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))	
		end
		if gmStartConversation == 11 then
	SendChatMessage("Why was the Gnome who just joined a nudist colony asked to leave?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("because he kept poking his nose into everybody's business.","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
		end
		if gmStartConversation == 12 then
	SendChatMessage("How many GM's does it take to change a light bulb?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("None, it's working as intended.","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))	
		end
		if gmStartConversation == 13 then
	SendChatMessage("Why didn't the Forsaken cross the road?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("He didn't have the guts.","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))	
		end	
		if gmStartConversation == 14 then
	SendChatMessage("What do you call it if paladins and druids share a bath?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("A HoT tub with Bubbles.","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
		end	
		if gmStartConversation == 15 then
	SendChatMessage("How did the paladins get clean?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("They had a bubble bath!","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
		end	
		if gmStartConversation == 16 then
	SendChatMessage("Which dragon has the dream job?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("Ysera","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
		end	
		if gmStartConversation == 17 then
	SendChatMessage("Why is the Cenarion Circle neutral?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("Circles have no sides.","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
		end	
		if gmStartConversation == 18 then
	SendChatMessage("Why do sneaky rogues prefer leather armor?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("because it's made of hide","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
		end	
		if gmStartConversation == 19 then
	SendChatMessage("Why are hunters bad at photography?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("They have no focus.","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
		end	
		if gmStartConversation == 20 then
	SendChatMessage("What did Gul'dan do when he tripped?","WHISPER", nil, gmPlayerName:GetText());
	SendChatMessage("He fel..","WHISPER", nil, gmPlayerName:GetText());	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Whisper by "..UnitName("Player"))
		end	
end
function mountrandotarget()
	if ( UnitIsUnit("target", "player") ) then	
	mountrando__OnClick()
	else
	TargetByName(UnitName("player"))
    gmAddonPrint("You must target yourself first! \n"..RED_FONT_COLOR_CODE.."Now Auto Targeting..")	
	end	
end

function mountrandocheck() -- turtlemount
    CreateFrame("frame"):SetScript("OnUpdate", mountrandochecktask)
end
function mountrandochecktask()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
            EzD_getdown()
        elseif (this.step == 1) then -- 1sec sec delay
            mountrandotarget()
        elseif  (this.step > 2) then -- Cleanup, destroy timer
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
function mountrando__OnClick()
 Min = 1
 Max = 87
	local GetRandomWhisper = random(Min,Max)
	local gmStartConversation = GetRandomWhisper
		if gmStartConversation == 1 then 
	SendChatMessage(gmCommands["AncientFrostsaber"]);
		end

		if gmStartConversation == 2 then
	SendChatMessage(gmCommands["ArcticWolf"]);
		end

		if gmStartConversation == 3 then
	SendChatMessage(gmCommands["BlackBattlestrider"]);
		end

		if gmStartConversation == 4 then
	SendChatMessage(gmCommands["BlackNightsaber"]);
		end

		if gmStartConversation == 5 then
	SendChatMessage(gmCommands["BlackRam"]);
		end

		if gmStartConversation == 6 then
	SendChatMessage(gmCommands["BlackStallion"]);
		end

		if gmStartConversation == 7 then
	SendChatMessage(gmCommands["BlackWarKodo"]);
		end

		if gmStartConversation == 8 then
	SendChatMessage(gmCommands["BlackWarRam"]);
		end

		if gmStartConversation == 9 then
	SendChatMessage(gmCommands["BlackWarRaptor"]);
		end

		if gmStartConversation == 10 then
	SendChatMessage(gmCommands["BlackWarSteed"]);
		end

		if gmStartConversation == 11 then
	SendChatMessage(gmCommands["BlackWarTiger"]);
		end

		if gmStartConversation == 12 then
	SendChatMessage(gmCommands["BlackWarWolf"]);
		end

		if gmStartConversation == 13 then
	SendChatMessage(gmCommands["BlackQirajiBattleTank"]);
		end

		if gmStartConversation == 14 then
	SendChatMessage(gmCommands["BlueMechanostrider"]);
		end

		if gmStartConversation == 15 then
	SendChatMessage(gmCommands["BlueQirajiBattleTank"]);
		end

		if gmStartConversation == 16 then
	SendChatMessage(gmCommands["BlueSkeletalHorse"]);
		end

		if gmStartConversation == 17 then
	SendChatMessage(gmCommands["BrownHorse"]);
		end

		if gmStartConversation == 18 then
	SendChatMessage(gmCommands["BrownKodo"]);
		end

		if gmStartConversation == 19 then
	SendChatMessage(gmCommands["BrownRam"]);
		end

		if gmStartConversation == 20 then
	SendChatMessage(gmCommands["BrownSkeletalHorse"]);
		end

		if gmStartConversation == 21 then
	SendChatMessage(gmCommands["BrownWolf"]);
		end

		if gmStartConversation == 22 then
	SendChatMessage(gmCommands["Charger"]);
		end

		if gmStartConversation == 23 then
	SendChatMessage(gmCommands["ChestnutMare"]);
		end

		if gmStartConversation == 24 then
	SendChatMessage(gmCommands["DireWolf"]);
		end

		if gmStartConversation == 25 then
	SendChatMessage(gmCommands["Dreadsteed"]);
		end

		if gmStartConversation == 26 then
	SendChatMessage(gmCommands["EmeraldRaptor"]);
		end

		if gmStartConversation == 27 then
	SendChatMessage(gmCommands["Felsteed"]);
		end

		if gmStartConversation == 28 then
	SendChatMessage(gmCommands["FrostRam"]);
		end

		if gmStartConversation == 29 then
	SendChatMessage(gmCommands["FluorescentGreenMechanostrider"]);
		end

		if gmStartConversation == 30 then
	SendChatMessage(gmCommands["FrostwolfHowler"]);
		end

		if gmStartConversation == 31 then
	SendChatMessage(gmCommands["GrayKodo"]);
		end

		if gmStartConversation == 32 then
	SendChatMessage(gmCommands["GrayRam"]);
		end

		if gmStartConversation == 33 then
	SendChatMessage(gmCommands["GreatBrownKodo"]);
		end

		if gmStartConversation == 34 then
	SendChatMessage(gmCommands["GreatGrayKodo"]);
		end

		if gmStartConversation == 35 then
	SendChatMessage(gmCommands["GreatWhiteKodo"]);
		end

		if gmStartConversation == 36 then
	SendChatMessage(gmCommands["GreenKodo"]);
		end

		if gmStartConversation == 37 then
	SendChatMessage(gmCommands["GreenMechanostrider"]);
		end

		if gmStartConversation == 38 then
	SendChatMessage(gmCommands["GreenQirajiBattleTank"]);
		end

		if gmStartConversation == 39 then
	SendChatMessage(gmCommands["GreenSkeletalWarhorse"]);
		end

		if gmStartConversation == 40 then
	SendChatMessage(gmCommands["IcyBlueMechanostriderModA"]);
		end

		if gmStartConversation == 41 then
	SendChatMessage(gmCommands["IvoryRaptor"]);
		end

		if gmStartConversation == 42 then
	SendChatMessage(gmCommands["MottledRedRaptor"]);
		end

		if gmStartConversation == 43 then
	SendChatMessage(gmCommands["Palomino"]);
		end

		if gmStartConversation == 44 then
	SendChatMessage(gmCommands["Pinto"]);
		end

		if gmStartConversation == 45 then
	SendChatMessage(gmCommands["PurpleSkeletalWarhorse"]);
		end

		if gmStartConversation == 46 then
	SendChatMessage(gmCommands["RedMechanostrider"]);
		end

		if gmStartConversation == 47 then
	SendChatMessage(gmCommands["RedQirajiBattleTank"]);
		end

		if gmStartConversation == 48 then
	SendChatMessage(gmCommands["RedSkeletalHorse"]);
		end

		if gmStartConversation == 49 then
	SendChatMessage(gmCommands["RedSkeletalWarhorse"]);
		end

		if gmStartConversation == 50 then
	SendChatMessage(gmCommands["RedWolf"]);
		end

		if gmStartConversation == 51 then
	SendChatMessage(gmCommands["RidingTurtle"]);
		end

		if gmStartConversation == 52 then
	SendChatMessage(gmCommands["RivendaresDeathcharger"]);
		end

		if gmStartConversation == 53 then
	SendChatMessage(gmCommands["SpottedFrostsaber"]);
		end

		if gmStartConversation == 54 then
	SendChatMessage(gmCommands["StormpikeBattleCharger"]);
		end

		if gmStartConversation == 55 then
	SendChatMessage(gmCommands["StripedFrostsaber"]);
		end

		if gmStartConversation == 56 then
	SendChatMessage(gmCommands["StripedNightsaber"]);
		end

		if gmStartConversation == 57 then
	SendChatMessage(gmCommands["SwiftBlueRaptor"]);
		end

		if gmStartConversation == 58 then
	SendChatMessage(gmCommands["SwiftBrownRam"]);
		end

		if gmStartConversation == 59 then
	SendChatMessage(gmCommands["SwiftBrownSteed"]);
		end

		if gmStartConversation == 60 then
	SendChatMessage(gmCommands["SwiftBrownWolf"]);
		end

		if gmStartConversation == 61 then
	SendChatMessage(gmCommands["SwiftFrostsaber"]);
		end

		if gmStartConversation == 62 then
	SendChatMessage(gmCommands["SwiftGrayRam"]);
		end

		if gmStartConversation == 63 then
	SendChatMessage(gmCommands["SwiftGrayWolf"]);
		end

		if gmStartConversation == 64 then
	SendChatMessage(gmCommands["SwiftGreenMechanostrider"]);
		end

		if gmStartConversation == 65 then
	SendChatMessage(gmCommands["SwiftMistsaber"]);
		end

		if gmStartConversation == 66 then
	SendChatMessage(gmCommands["SwiftOliveRaptor"]);
		end

		if gmStartConversation == 67 then
	SendChatMessage(gmCommands["SwiftOrangeRaptor"]);
		end

		if gmStartConversation == 68 then
	SendChatMessage(gmCommands["SwiftPalomino"]);
		end

		if gmStartConversation == 69 then
	SendChatMessage(gmCommands["SwiftRazzashiRaptor"]);
		end

		if gmStartConversation == 70 then
	SendChatMessage(gmCommands["SwiftStormsaber"]);
		end

		if gmStartConversation == 71 then
	SendChatMessage(gmCommands["SwiftTimberWolf"]);
		end

		if gmStartConversation == 72 then
	SendChatMessage(gmCommands["SwiftWhiteMechanostrider"]);
		end

		if gmStartConversation == 73 then
	SendChatMessage(gmCommands["SwiftWhiteRam"]);
		end

		if gmStartConversation == 74 then
	SendChatMessage(gmCommands["SwiftWhiteSteed"]);
		end

		if gmStartConversation == 75 then
	SendChatMessage(gmCommands["SwiftYellowMechanostrider"]);
		end

		if gmStartConversation == 76 then
	SendChatMessage(gmCommands["SwiftZulianTiger"]);
		end

		if gmStartConversation == 77 then
	SendChatMessage(gmCommands["TealKodo"]);
		end

		if gmStartConversation == 78 then
	SendChatMessage(gmCommands["TimberWolf"]);
		end

		if gmStartConversation == 79 then
	SendChatMessage(gmCommands["TurquoiseRaptor"]);
		end

		if gmStartConversation == 80 then
	SendChatMessage(gmCommands["UnpaintedMechanostrider"]);
		end

		if gmStartConversation == 81 then
	SendChatMessage(gmCommands["VioletRaptor"]);
		end

		if gmStartConversation == 82 then
	SendChatMessage(gmCommands["Warhorse"]);
		end

		if gmStartConversation == 83 then
	SendChatMessage(gmCommands["WhiteMechanostriderModB"]);
		end

		if gmStartConversation == 84 then
	SendChatMessage(gmCommands["WhiteRam"]);
		end

		if gmStartConversation == 85 then
	SendChatMessage(gmCommands["WhiteStallion"]);
		end

		if gmStartConversation == 86 then
	SendChatMessage(gmCommands["WinterspringFrostsaber"]);
		end

		if gmStartConversation == 87 then
	SendChatMessage(gmCommands["YellowQirajiBattleTank"]);
		end		
end

function txtGmCommon1__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage(" Here is something you can try to fix your issue. Exit your game, then delete the 'WDB' cache folder located in your WoW install directory. Then launch the game again and disable ALL addons.","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon2__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("Gamemasters can not assist players with in-game hints or offer any help for solving quests. Why not ask your fellow players for tips and hints instead? Check out our database at: https://vanilla-twinhead.twinstar.cz","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon3__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("I am sorry to inform you that we do not have the option to delete your account after it has been made.","WHISPER", nil, gmCommonPlayer:GetText());	
	SendChatMessage("If you wish to talk to someone who is in charge of accounts, please email Jeniczek@twinstar.cz.","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon4__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("First make sure you have all the required quest items in your inventory. Then abandon the quest (your quest items will not be destroyed in the process). After you have done that, re-accept the quest from the quest giver, and turn that in.","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon5__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("Thank you for your report. We will investigate this further and take appropriate action as necessary.","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon6__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("You can find all of the Kronos rules by following this link: http://www.kronos-wow.com/project-kronos-rules","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon7__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("You have been invited to join our Discord server. Join by using this link: https://discord.gg/yzQSnNp .","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon8__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("Please direct all ban appeals to the head Gamemasters on Kronos discord. Join by using this link: https://discord.gg/yzQSnNp","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon9__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("We are aware of this issue and it is currently awaiting a fix. Visit the Twinhead Bug Tracker for more information regarding this problem: https://vanilla-twinhead.twinstar.cz/?issues","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon10__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("You can read up on how to donate by following this link: https://www.twinstar.cz/manager/Donate/DonateHelp.aspx In order to see all of the features, you will have to log in from the top right corner of the website - using your WoW account.","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon11__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("In order to obtain a new Hearthstone you will have to visit an inn and talk to the innkeeper. Hold down left ctrl key, and right click the innkeeper then choose the following dialogue: 'Make this inn my home'.","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon12__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("Here are some methods you can try to get rid of the Combat Bug by your own: A) Press ALT+F4 to exit your game, B) Die to a monster in a PVE encounter. and C) Use the hearthstone. ","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon13__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("Here's something you can try to fix your drunken camera issue! Try relogging, if that doesn't help please just die to a monster. If after dying you still notice this effect, please relog and it should be gone.","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon14__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("Unfortunately we are unable to recover any loot that has gone missing during a server crash or a rollback. We are sorry for any inconvenience this has caused you.","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon15__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("It is forbidden for a player to be logged into more than one character “out in the world” at any time. Players are allowed to be online with multiple characters in a major city.","WHISPER", nil, gmCommonPlayer:GetText());			
end
function txtGmCommon16__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("In vanilla WoW Meeting Stones do not have the ability to summon players. Meeting Stones are for filling in partial (or just-starting) parties whose members met the required level range by auto-inviting suitable candidates.","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon17__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("We thank you for your report regarding the gold seller(s). And if you have not - please provide us with a screenshot! -- This is an automatic message.","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon18__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("text here.","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon19__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("We need more information. When submitting an Gamemaster ticket - please provide as much information as possible. Describe your issue shortly but clearly. When reporting players include names, what they said and screenshots as proofs.","WHISPER", nil, gmCommonPlayer:GetText());	
end
--Ilmus started adding new Whisper responses here.
function txtGmCommon20__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("The Fishing Extravaganza event takes place every sunday 14:00 - 17:00 server time! Visit our database for more information regarding this event: https://vanilla-twinhead.twinstar.cz/","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon21__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("The account was automatically suspended for 10 minutes for entering the password wrong too many times. You can change your password at www.twinstar.cz in the account manager.","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon22__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("One bubble of rested XP (5% of a level) is earned for every 8 hours spent resting. A maximum of 30 bubbles (150% of a level) may be earned. ","WHISPER", nil, gmCommonPlayer:GetText());	
	SendChatMessage("In other words, you can leave your character resting in an inn or capital city for up to 10 days (without gaining experience) before you earn the maximum amount of rest state.","WHISPER", nil, gmCommonPlayer:GetText());	
	SendChatMessage("And a resting character stores up one full level of rest in 160 hours (6 days, 16 hours). I hope this answers it for you!","WHISPER", nil, gmCommonPlayer:GetText());
end
function txtGmCommon23__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("One bubble of rested XP (5% of a level) is earned for every 8 hours spent resting. A maximum of 30 bubbles (150% of a level) may be earned. ","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon24__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("Your ticket requires more help than a normal GM can provide. Please submit a ticket on the official Kronos Discord, Join by using this link: https://discord.gg/yzQSnNp","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon25__OnClick()
	gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
	SendChatMessage("There is an outgoing mail cap per character - which is your issue here! Please log on your alt character to claim your mails from the mailbox, this will fix your issue on your main character.","WHISPER", nil, gmCommonPlayer:GetText());	
end
function txtGmCommon26__OnClick()
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("At the given moment there is no way to change your character's race. But it is a feature we will surely be providing to our players in the future! Once it is available, you will find it at www.twinstar.cz in the account manager.","WHISPER", nil, gmCommonPlayer:GetText()); 
end
function txtGmCommon27__OnClick()
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("Unfortunately there is nothing in-game GM's are able to do about this issue at the given moment.","WHISPER", nil, gmCommonPlayer:GetText()); 
	SendChatMessage("Please report this bug to our Bugtracker at: https://vanilla-twinhead.twinstar.cz/?issues this way our developers can identify the issue and fix it!","WHISPER", nil, gmCommonPlayer:GetText()); 
end
function txtGmCommon28__OnClick()
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("At the given moment there is no way to change your character's faction. But it is a feature we will surely be providing to our players in the future! Once it is available, you will find it at www.twinstar.cz in the account manager.","WHISPER", nil, gmCommonPlayer:GetText()); 
end
function btngmCommon29__OnClick()
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("You can post your ideas and feature requests to our Suggestions Forum at: http://forum.twinstar.cz/forumdisplay.php/758-Suggestions-and-comments this way our developers can hear your voice, and make great things happen!","WHISPER", nil, gmCommonPlayer:GetText()); 
end
function btngmCommon30__OnClick()
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("We are very sorry to hear that you've been scammed. Unfortunately we can not restore the items/gold that you've lost. We just wanted to give you a heads up that we're investigating this report and taking appropriate action as necessary.","WHISPER", nil, gmCommonPlayer:GetText()); 
end
function btngmCommon34__OnClick()
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("You are able to rename your characters in the Account Manager: www.Twinstar.cz ; Renaming your character will cost you 100 Stars. I hope this will answer your question!","WHISPER", nil, gmCommonPlayer:GetText()); 
end
function txtgmCommon35__OnClick()
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("If you are unable to turn your guild charter in to the Guild Master then here is something you can try: Please place your guild charter item into the first slot of your main bag, and try talking to the Guild Master NPC again.","WHISPER", nil, gmCommonPlayer:GetText()); 
end
function txtgmCommon36__OnClick()
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("Please open your Spellbook. Take a look at the bottom frame of the Spellbook, there is a tab called 'Demon' - open it (you must have your minion summoned). Then drag the Blood Pact ability manually to your pet bar.","WHISPER", nil, gmCommonPlayer:GetText()); 
end
function txtgmCommon37__OnClick()
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("Unfortunately we are unable to restore any items or gold that you lost. We can however help you to recover quest rewards, by re-adding you the quests. In this case you will have to provide us with the quest names.","WHISPER", nil, gmCommonPlayer:GetText()); 
    SendChatMessage("Please go to www.twinstar.cz account manager and change your password, or use this command in-game: .account password. It is possible that you used same login info on other private server projects.","WHISPER", nil, gmCommonPlayer:GetText()); 
    SendChatMessage("Also to be on the safe side, please do not use same password on your WoW account that you use in the forums.","WHISPER", nil, gmCommonPlayer:GetText()); 
end
function txtgmCommon38__OnClick()
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("In Vanilla WoW warlocks can not summon a player inside the instance, when the player is not inside the same instance and vice versa. You will have to move out from the instance in order to summon them.","WHISPER", nil, gmCommonPlayer:GetText()); 
end
function txtgmCommon39__OnClick()
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("You can change your password in the Account Manager on our website at: www.twinstar.cz ; additionally you can also change your password in-game with the following command: .account password oldpass newpass newpass.","WHISPER", nil, gmCommonPlayer:GetText()); 
    SendChatMessage("Do not use same account name & password from other private server projects! Keep your password different from what it is in the forums. Only you are responsible for your account's security.","WHISPER", nil, gmCommonPlayer:GetText()); 
end
function txtgmCommon40__OnClick()
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("At the given moment there is no way to change your character's gender. But it is a feature we will surely be providing to our players in the future! Once it is available, you will find it at www.twinstar.cz in the account manager.","WHISPER", nil, gmCommonPlayer:GetText()); 
end

function txtgmCommon41__OnClick()
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("Info regarding your ban can be found at: www.twinstar.cz Log in to the account manager - with your WoW account.","WHISPER", nil, gmCommonPlayer:GetText()); 
end

function txtgmCommon42__OnClick() -- World PvP Button
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("I am sorry to hear that someone is ganking you when you are trying to farm or level up. However, Kronos is a PvP server and this kind of behavior is not against the rules.","WHISPER", nil, gmCommonPlayer:GetText()); 
end

function txtgmCommon43__OnClick() -- Reboot Button
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("If the object is supposed to give you a quest but doesn't - please try and reboot the game, this will solve the problem.","WHISPER", nil, gmCommonPlayer:GetText()); 
end

function txtgmCommon44__OnClick() -- Harassment Button
    gmSendAddonMsg("Ticket from "..gmCommonPlayer:GetText().." answered via Whisper by "..UnitName("Player"))
    SendChatMessage("I am sorry to hear you feel harassed. as a first step, we recommend that you /ignore the offending player. If they continue to harass you with an alt account or tell others to do so, please let us know and we will address it as needed.","WHISPER", nil, gmCommonPlayer:GetText()); 
end

function gmClearntxtGmSendWhisp()
	txtGmSendWhisp:ClearFocus()
	txtGmSendWhisp:AddHistoryLine(txtGmSendWhisp:GetText())
	txtGmSendWhisp:SetText("")
end
function gmUpdateSlider()
	local str = ""
	--if gmFilterOnline:GetChecked() then 
	--str = "NumberOfOnlineTickets"
	--else
	str = "NumberOfTickets"
	--end
	getglobal(MySlider:GetName() .. 'High'):SetText(gmTicketSys[str]);
	if gmTicketSys[str] > 5 then
		MySlider:SetMinMaxValues(1, gmTicketSys[str]-4)
		MySlider:Show()
	else
		MySlider:SetMinMaxValues(1, gmTicketSys[str])
		MySlider:Show()
	end
	-- /print MySlider:IsToplevel()
	MySlider:SetValueStep(1)
	--MySlider:SetValue(gmTicketSys["ticketCurrent"])
	MySlider:SetValue(MySlider:GetValue())
end
function gmUIFrame_OnUpdate()
	if ticketArray and gmPlayerName:GetText() == "" and gmTicketSys["NumberOfTickets"] > 0 then gmSetTicket(1); gmUpdateSlider();end --updateBtns() 
	if (gmAddonReadTicket ~= nil and  gmAddonReadTicket + 1 < GetTime())  then -- reading of the ticket ends with a message from different source then SYSTEM MESSAGE -- id ~= "gmAddon" and 
		gmUpdateSlider();
		gmAddonReadTicket = nil
		gmStopReadingTickets()
	end
	if gmWhoTimer and gmWhoTimer + 1 < GetTime() then
		gmSetTicket(i)
		gmUpdateSlider()
		updateBtns()
		gmWhoTimer = nil
	end
	if gmCheckOnline:GetChecked() then
		gmCheckOnlineTicket()
	end
end
-- /run simTickets()
function gmCheckOnlineTicket()
	if not ticketArray or gmTicketSys["NumberOfTickets"] == 0 then return end
	if not gmCheckOnlineTicketTime or not gmCheckOnlineTicketIndex then 
		gmCheckOnlineTicketTime = GetTime()
		gmCheckOnlineTicketIndex = 1
		-- return
	elseif gmCheckOnlineTicketIndex > gmTicketSys["NumberOfTickets"] then
		gmCheckOnlineTicketIndex = 1
	end
	if gmCheckOnlineTicketTime + 10 > GetTime() then return end -- 10s checkonline check online
	if ticketArray[gmCheckOnlineTicketIndex] then
		gmCheckOnlinePlayerName = ticketArray[gmCheckOnlineTicketIndex].playerName
		if ticketArray[gmCheckOnlineTicketIndex].TicketOnline == true and gmTicketSys["NumberOfOnlineTickets"] > 0 then gmTicketSys["NumberOfOnlineTickets"] = gmTicketSys["NumberOfOnlineTickets"] - 1 end
		ticketArray[gmCheckOnlineTicketIndex]:setTicketOnline(false)
		SendWho("n-\""..gmCheckOnlinePlayerName.."\"")
		-- gmAddonPrint(("/who n-\""..gmCheckOnlinePlayerName.."\""..gmCheckOnlineTicketIndex))
		gmCheckOnlineTicketIndex = gmCheckOnlineTicketIndex + 1
		gmCheckOnlineTicketTime = GetTime()
	else
	end
end
function btnGmOnlineT_OnClick()
	SendWho("n-\""..gmPlayerName:GetText().."\"")
	--gmTicketSys["NumberOfOnlineTickets"] = 0
	--gmWhoTimer = GetTime()
	--table.foreachi(ticketArray, function(k,v)
	--	v:setTicketOnline(false)
	--	SendWho("n-\""..v.playerName.."\"")
	--end)
end
--function gmFilterOnline_OnClick()
--	gmUpdateSlider()
--	updateBtns()
--end
function btnGmSummon_OnClick()
	SendChatMessage(gmCommands["summon"].." "..gmPlayerName:GetText())
end
function btnGmGoView_OnClick()
	SendChatMessage(gmCommands["setview"])
end
function btnGmSummon1_OnClick()
	SendChatMessage(gmCommands["recall"].." "..gmPlayerName:GetText())
end
function gmPlayerName_OnEnterPressed()
	SendWho("n-\""..gmPlayerName:GetText().."\"")
	gmPlayerName:ClearFocus()
end
function simTickets()
	ticketArray = {};
	for i=1, 250 do
		t = Ticket:new()
		t:setPlayerName("Player".. i)
		t:setTicketMsg(i*24)
		t:setTicketTime(12 ..":"..i)
		t:setTicketDateA(21 ..".".. 12 ..".".. 2015)
		if math.random() > 0.6 then t:setTicketOnline(true) end
		tinsert(ticketArray,t);
		gmTicketSys["NumberOfTickets"] = gmTicketSys["NumberOfTickets"] + 1
		gmUpdateSlider()
	end
	updateBtns()
end
function simPinfo()
	txtGmPinfoStatus:SetText("ONLINE" )
	txtGmPinfoStatus:SetTextColor(0.0, 1.0, 0.0);
	txtGmPinfoStatus:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	txtGmplayernames:Hide()
	btnGmPinfoId:Show()
	txtGmplayernames:SetText("Gurky")
	txtGmaccountnames:SetText("Admin")
	txtGmaccountnames:Hide()
	txtGmPinfoIp2:SetText("127.0.0.1")
	txtGmPinfoIp2:Hide()
	txtGmPinfoId:SetText("Char: Gurkywuzhere (1664239)\nAcc: ADDONDEV (1459736)" )
	txtGmPinfoIp:SetText("Last IP: 192.168.1.10 \nLast Login: 12-31-2020 23:59:59\nLatency: 100 ")
	txtplainf:SetText("Level 61 Night Elf Mowhawk\nPlayed Time: 1000d23h59m59s\nMoney: |cffC9B037 1000000g|r|cffD7D7D7 99s|r|cffAD8A56 99c|r")					
	txtGmPinfoFingertext:SetText("Fingerprint: ")	
	txtGmPinfoFingertext:SetTextColor(1.0, 0.55, 0.0);	
	txtGmPinfoFingertext:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	txtGmPinfoFinger:SetText("0x116FC92E")	
	txtGmPinfoFinger:SetTextColor(1.0, 0.55, 0.0);	
	txtGmPinfoFinger:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	SendWho("Gurky")
end
function gmTurnOnOff()
if KGMM_Help:IsVisible() then
		KGMM_Help:Hide();	
	else
		KGMM_Help:Show()	
	end
end
SLASH_GM1= '/gm';
SLASH_GM2= '/ti';
SLASH_GM3= '/ticket';
SLASH_GM4= '/gma';
SLASH_GM5= '/gmaddon';
SlashCmdList["GM"] = gmTurnOnOff;
function gmMailFrame_OnLoad()
	gmMailMsg:SetBackdrop({
		bgFile = [[Interface\Buttons\WHITE8x8]],
		insets = {left = -5, right = -5, top = 0, bottom = -10
		}})
	gmMailMsg:SetBackdropColor(0, 0, 0, 0.5)
	gmMailMsg:ClearAllPoints()
	gmMailMsg:SetPoint("TOPLEFT", gmMailFrame, "LEFT", 20, -60)
	gmMailMsg:SetPoint("BOTTOMLEFT", gmMailFrame, "LEFT", 20, -160)
	gmMailMsg:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	gmMailMsg:SetTextColor(1.0, 0.55, 0.0);
	gmMailSubject:Insert("RE. Ticket")
	gmMailSubject:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")	
	gmMailSubject:SetTextColor(1.0, 0.55, 0.0);	
	gmMailPlayer:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	gmMailPlayer:SetTextColor(1.0, 0.55, 0.0);
	gmMailItem:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	gmMailItem:SetTextColor(1.0, 0.55, 0.0);	
	gmMailIssue:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	gmMailIssue:SetTextColor(1.0, 0.55, 0.0);	
	gmMailOwner:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	gmMailOwner:SetTextColor(1.0, 0.55, 0.0);	
	txtto:SetTextColor(1.0, 0.55, 0.0);
	txtto:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
	txtsubject:SetTextColor(1.0, 0.55, 0.0);
	txtsubject:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
	txtitemid:SetTextColor(1.0, 0.55, 0.0);
	txtitemid:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
	txtissueid:SetTextColor(1.0, 0.55, 0.0);
	txtissueid:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
	txtownerid:SetTextColor(1.0, 0.55, 0.0);
	txtownerid:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
	txtmessage:SetTextColor(1.0, 0.55, 0.0);
	txtmessage:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
	mailtitle:SetTextColor(1.0, 0.55, 0.0);
	mailtitle:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE, ")
	gmMailSendI:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	gmMailSendI:SetTextColor(1.0, 0.55, 0.0);	
	gmMailSend:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	gmMailSend:SetTextColor(1.0, 0.55, 0.0);	
	gmIssueSend:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	gmIssueSend:SetTextColor(1.0, 0.55, 0.0);	
	gmMailSendDel:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	gmMailSendDel:SetTextColor(1.0, 0.55, 0.0);	
	gmMailSendDelI:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	gmMailSendDelI:SetTextColor(1.0, 0.55, 0.0);
	txtGmPinfoId:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	txtGmPinfoId:SetTextColor(1.0, 0.55, 0.0);
	txtGmPinfoIp:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	txtGmPinfoIp:SetTextColor(1.0, 0.55, 0.0);	
	txtplainf:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	txtplainf:SetTextColor(1.0, 0.55, 0.0);	
	txtGmPinfoFingertext:SetTextColor(1.0, 0.55, 0.0);	
	txtGmPinfoFingertext:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	txtGmPinfoFinger:SetText("")
	txtGmPinfoFinger:SetTextColor(1.0, 0.55, 0.0);	
	txtGmPinfoFinger:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	
end	
function gmBanFrame_OnLoad()
tinsert(UISpecialFrames,"gmBanFrame");
timeformat:SetText("Ban Time:\n\n 1s = 1 Second\n 1m = 1 Minute\n 1h = 1 Hour\n 1d = 1 Day\n -1 = Perma")	
timeformat:SetJustifyH("CENTER")
timeformat:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
ipformat:SetText("WARNING!!!\n\nBan IP Range:\n\n Enter all but the last decimal\n in the Player/IP box.\n\n I.E - if the ip is 127.0.0.1 \nyou would enter \n127.0.0 in the box.")	
ipformat:SetJustifyH("CENTER")
ipformat:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
muteformat:SetText("Mute Time:\n\n 1 = 1 Minute\n 60 = 1 Hour\n 1440 = 1 Day")
muteformat:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
muteformat:SetJustifyH("CENTER")
txtplayerban:SetTextColor(1.0, 0.55, 0.0);
txtplayerban:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
txttimeban:SetTextColor(1.0, 0.55, 0.0);
txttimeban:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
txtreasonban:SetTextColor(1.0, 0.55, 0.0);
txtreasonban:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmBan:SetTextColor(1.0, 0.55, 0.0);
btngmBan:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmMute:SetTextColor(1.0, 0.55, 0.0);
btngmMute:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmKick:SetTextColor(1.0, 0.55, 0.0);
btngmKick:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLookup:SetTextColor(1.0, 0.55, 0.0);
btngmLookup:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmBaninfo:SetTextColor(1.0, 0.55, 0.0);
btngmBaninfo:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmBanIP:SetTextColor(1.0, 0.55, 0.0);
btngmBanIP:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmBanIPRange:SetTextColor(1.0, 0.55, 0.0);
btngmBanIPRange:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
gmBanPlayer:SetTextColor(1.0, 0.55, 0.0);
gmBanPlayer:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
gmBanTime:SetTextColor(1.0, 0.55, 0.0);
gmBanTime:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
gmBanReason:SetTextColor(1.0, 0.55, 0.0);
gmBanReason:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLookupacc:SetTextColor(1.0, 0.55, 0.0);
btngmLookupacc:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmBaninfoIP:SetTextColor(1.0, 0.55, 0.0);
btngmBaninfoIP:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
bantitle:SetTextColor(1.0, 0.55, 0.0);
bantitle:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE, ")
end	
function gmConfirmFrame_OnLoad()
txtbanc:SetTextColor(1.0, 0.55, 0.0);
txtbanc:SetFont("Fonts\\FRIZQT__.TTF", 9, "OUTLINE, ")
txtsure:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
end	
function gmAssignBox_OnLoad()
gmAssign:SetTextColor(1.0, 0.55, 0.0);
gmAssign:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
assigntitle:SetTextColor(1.0, 0.55, 0.0);
assigntitle:SetFont("Fonts\\FRIZQT__.TTF", 20, "OUTLINE, ")
btnGmAssignBoxClose:Show()
end	
function gmConfirmIPFrame_OnLoad()
end	
function gmConfirmIPRangeFrame_OnLoad()
end	
function gmLearnFrame_OnLoad()
tinsert(UISpecialFrames,"gmLearnFrame");
learntitle:SetTextColor(1.0, 0.55, 0.0);
learntitle:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE, ")
txttarget:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
txtprof:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
txtskill:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmLearnwep:SetTextColor(1.0, 0.55, 0.0);
btngmLearnwep:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnArm:SetTextColor(1.0, 0.55, 0.0);
btngmLearnArm:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnLang:SetTextColor(1.0, 0.55, 0.0);
btngmLearnLang:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnGmsp:SetTextColor(1.0, 0.55, 0.0);
btngmLearnGmsp:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnTale:SetTextColor(1.0, 0.55, 0.0);
btngmLearnTale:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnStat:SetTextColor(1.0, 0.55, 0.0);
btngmLearnStat:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnAlch:SetTextColor(1.0, 0.55, 0.0);
btngmLearnAlch:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnBlac:SetTextColor(1.0, 0.55, 0.0);
btngmLearnBlac:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnEnch:SetTextColor(1.0, 0.55, 0.0);
btngmLearnEnch:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnEngi:SetTextColor(1.0, 0.55, 0.0);
btngmLearnEngi:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnHerb:SetTextColor(1.0, 0.55, 0.0);
btngmLearnHerb:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnLeat:SetTextColor(1.0, 0.55, 0.0);
btngmLearnLeat:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnRidi:SetTextColor(1.0, 0.55, 0.0);
btngmLearnRidi:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnSkin:SetTextColor(1.0, 0.55, 0.0);
btngmLearnSkin:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnTail:SetTextColor(1.0, 0.55, 0.0);
btngmLearnTail:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnCook:SetTextColor(1.0, 0.55, 0.0);
btngmLearnCook:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnFirs:SetTextColor(1.0, 0.55, 0.0);
btngmLearnFirs:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnFish:SetTextColor(1.0, 0.55, 0.0);
btngmLearnFish:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmLearnMini:SetTextColor(1.0, 0.55, 0.0);
btngmLearnMini:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
end
function gmSettingsFrame_OnLoad()
tinsert(UISpecialFrames,"gmSettingsFrame");
settingstitle:SetTextColor(1.0, 0.55, 0.0);
settingstitle:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE, ")
gmset1Open:SetTextColor(1.0, 0.55, 0.0);
gmset1Open:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
gmset2Open:SetTextColor(1.0, 0.55, 0.0);
gmset2Open:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
gmset3Open:SetTextColor(1.0, 0.55, 0.0);
gmset3Open:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btnGmKGMA:SetTextColor(1.0, 0.55, 0.0);
btnGmKGMA:SetFont("Fonts\\FRIZQT__.TTF", 8, "OUTLINE, ")
end
function gmCommonFrame_OnLoad()
gmCommonPlayer:Hide()
btngmCommon1:SetTextColor(1.0, 0.55, 0.0);
btngmCommon1:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon2:SetTextColor(1.0, 0.55, 0.0);
btngmCommon2:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon3:SetTextColor(1.0, 0.55, 0.0);
btngmCommon3:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon4:SetTextColor(1.0, 0.55, 0.0);
btngmCommon4:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon5:SetTextColor(1.0, 0.55, 0.0);
btngmCommon5:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon6:SetTextColor(1.0, 0.55, 0.0);
btngmCommon6:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon7:SetTextColor(1.0, 0.55, 0.0);
btngmCommon7:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon8:SetTextColor(1.0, 0.55, 0.0);
btngmCommon8:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon9:SetTextColor(1.0, 0.55, 0.0);
btngmCommon9:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon10:SetTextColor(1.0, 0.55, 0.0);
btngmCommon10:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon11:SetTextColor(1.0, 0.55, 0.0);
btngmCommon11:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon12:SetTextColor(1.0, 0.55, 0.0);
btngmCommon12:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon13:SetTextColor(1.0, 0.55, 0.0);
btngmCommon13:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon14:SetTextColor(1.0, 0.55, 0.0);
btngmCommon14:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon15:SetTextColor(1.0, 0.55, 0.0);
btngmCommon15:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon16:SetTextColor(1.0, 0.55, 0.0);
btngmCommon16:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon18:SetTextColor(1.0, 0.55, 0.0);
btngmCommon18:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon19:SetTextColor(1.0, 0.55, 0.0);
btngmCommon19:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon20:SetTextColor(1.0, 0.55, 0.0);
btngmCommon20:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon21:SetTextColor(1.0, 0.55, 0.0);
btngmCommon21:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon22:SetTextColor(1.0, 0.55, 0.0);
btngmCommon22:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon24:SetTextColor(1.0, 0.55, 0.0);
btngmCommon24:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon25:SetTextColor(1.0, 0.55, 0.0);
btngmCommon25:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon26:SetTextColor(1.0, 0.55, 0.0);
btngmCommon26:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon27:SetTextColor(1.0, 0.55, 0.0);
btngmCommon27:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon28:SetTextColor(1.0, 0.55, 0.0);
btngmCommon28:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon29:SetTextColor(1.0, 0.55, 0.0);
btngmCommon29:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon30:SetTextColor(1.0, 0.55, 0.0);
btngmCommon30:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon31:SetTextColor(1.0, 0.55, 0.0);
btngmCommon31:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon35:SetTextColor(1.0, 0.55, 0.0);
btngmCommon35:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon34:SetTextColor(1.0, 0.55, 0.0);
btngmCommon34:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon40:SetTextColor(1.0, 0.55, 0.0);
btngmCommon40:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon36:SetTextColor(0.53, 0.53, 0.93);
btngmCommon36:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon38:SetTextColor(0.53, 0.53, 0.93);
btngmCommon38:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon33:SetTextColor(1.0, 0.55, 0.0);
btngmCommon33:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon42:SetTextColor(1.0, 0.55, 0.0);
btngmCommon42:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon43:SetTextColor(1.0, 0.55, 0.0);
btngmCommon43:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmCommon44:SetTextColor(1.0, 0.55, 0.0);
btngmCommon44:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
commontitle:SetTextColor(1.0, 0.55, 0.0);
commontitle:SetFont("Fonts\\FRIZQT__.TTF", 18, "OUTLINE, ")
chartitle:SetTextColor(1.0, 0.55, 0.0);
chartitle:SetFont("Fonts\\FRIZQT__.TTF", 18, "OUTLINE, ")
acctitle:SetTextColor(1.0, 0.55, 0.0);
acctitle:SetFont("Fonts\\FRIZQT__.TTF", 18, "OUTLINE, ")
acc2title:SetTextColor(1.0, 0.55, 0.0);
acc2title:SetFont("Fonts\\FRIZQT__.TTF", 18, "OUTLINE, ")
end	
function gmToggleGMFrame_OnLoad()
end	
function gmToggleTurtleFrame_OnLoad()
end	
function gmToggleWGMFrame_OnLoad()
end	
function gmToggleVGMFrame_OnLoad()
end	
function gmTeleFrame_OnLoad()
tinsert(UISpecialFrames,"gmTeleFrame");
teletitle:SetTextColor(1.0, 0.55, 0.0);
teletitle:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE, ")
txthorde:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
txtally:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
txtgm:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
txtworldboss:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmTeleOrg:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleOrg:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleUC:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleUC:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleTB:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleTB:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleDeath:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleDeath:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleMul:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleMul:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleVot:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleVot:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleIf:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleIf:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleSW:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleSW:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleDarn:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleDarn:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleShadow:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleShadow:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleNorth:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleNorth:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleCold:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleCold:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleGM:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleGM:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleJail:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleJail:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleDev:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleDev:SetTextColor(1.0, 0.55, 0.0);	
btngmTelePro:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTelePro:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleAC:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleAC:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleHyj:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleHyj:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleKazzak:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleKazzak:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleAzuregos:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleAzuregos:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleLethon:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleLethon:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleEmeriss:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleEmeriss:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleYsondre:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleYsondre:SetTextColor(1.0, 0.55, 0.0);	
btngmTeleTaerar:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmTeleTaerar:SetTextColor(1.0, 0.55, 0.0);	
end	
function gmMaintenanceFrame_OnLoad()
end	
function gmAuraFrame_OnLoad()
tinsert(UISpecialFrames,"gmAuraFrame");
auratitle:SetTextColor(1.0, 0.55, 0.0);
auratitle:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE, ")
txtcostume:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
txtaura:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmAuraPirateM:SetTextColor(1.0, 0.55, 0.0);
btngmAuraPirateM:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmAuraPirateF:SetTextColor(1.0, 0.55, 0.0);
btngmAuraPirateF:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmAuraNinjaM:SetTextColor(1.0, 0.55, 0.0);
btngmAuraNinjaM:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmAuraNinjaF:SetTextColor(1.0, 0.55, 0.0);
btngmAuraNinjaF:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmAuraLeper:SetTextColor(1.0, 0.55, 0.0);
btngmAuraLeper:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmAuraSkeleton:SetTextColor(1.0, 0.55, 0.0);
btngmAuraSkeleton:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmAuraGhostM:SetTextColor(1.0, 0.55, 0.0);
btngmAuraGhostM:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmAuraGhostF:SetTextColor(1.0, 0.55, 0.0);
btngmAuraGhostF:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmAuraRedOgre:SetTextColor(1.0, 0.55, 0.0);
btngmAuraRedOgre:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmAuraStunForever:SetTextColor(1.0, 0.55, 0.0);
btngmAuraStunForever:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmAuraUnStunForever:SetTextColor(1.0, 0.55, 0.0);
btngmAuraUnStunForever:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmAuraFreeze:SetTextColor(1.0, 0.55, 0.0);
btngmAuraFreeze:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
btngmAuraUnFreeze:SetTextColor(1.0, 0.55, 0.0);
btngmAuraUnFreeze:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
end	
function gmBugFrame_OnLoad()
tinsert(UISpecialFrames,"gmBugFrame");
	bugtitle:SetTextColor(1.0, 0.55, 0.0);
	bugtitle:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE, ")
	btngmTeleShay:SetTextColor(1.0, 0.55, 0.0);
	btngmTeleShay:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	btngmTeleKodoGraveyard:SetTextColor(1.0, 0.55, 0.0);
	btngmTeleKodoGraveyard:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	btngmDashel:SetTextColor(1.0, 0.55, 0.0);
	btngmDashel:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	btngmTeleTaelanEvent:SetTextColor(1.0, 0.55, 0.0);
	btngmTeleTaelanEvent:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	btngmTeleDragons:SetTextColor(1.0, 0.55, 0.0);
	btngmTeleDragons:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	btngmTeleUndercroft:SetTextColor(1.0, 0.55, 0.0);
	btngmTeleUndercroft:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	btngmTelePamela:SetTextColor(1.0, 0.55, 0.0);
	btngmTelePamela:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	btngmTeleDarkmoonAlly:SetTextColor(1.0, 0.55, 0.0);
	btngmTeleDarkmoonAlly:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
	btngmTeleDarkmoonHorde:SetTextColor(1.0, 0.55, 0.0);
	btngmTeleDarkmoonHorde:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE, ")
end	

function gmtoolbarFrame_OnLoad()
gmtoolbarFrame:Show()
end	
function setChatWindow()
  for i,v in ipairs({ChatFrameEditBox:GetRegions()}) do
    if i==6 or i==7 or i==8 then v:Hide() end
  end
ChatFrameEditBox:ClearAllPoints()
ChatFrameEditBox:SetPoint('BOTTOMLEFT', ChatFrame1, 'TOPLEFT', -2, 2)
ChatFrameEditBox:SetPoint('BOTTOMRIGHT', ChatFrame1, 'TOPRIGHT', 2, 2)
ChatFrameEditBox:SetFrameStrata("DIALOG");

ChatFrame1:ClearAllPoints()
ChatFrame1:SetFrameStrata("DIALOG");
ChatFrame1:SetPoint('TOPLEFT', chat, 'TOPLEFT', 17, -235)
ChatFrame1:SetWidth(395)
ChatFrame1:SetHeight(205)
ChatFrame1:SetUserPlaced(true)

local function DoNothing() end
ChatFrame1.ClearAllPoints = DoNothing
ChatFrame1.SetPoint = DoNothing
end
function setEditbox()
  for i,v in ipairs({ChatFrameEditBox:GetRegions()}) do
    if i==6 or i==7 or i==8 then v:Hide() end
  end
ChatFrameEditBox:ClearAllPoints()
ChatFrameEditBox:SetPoint('BOTTOMLEFT', ChatFrame1, 'TOPLEFT', -2, 2)
ChatFrameEditBox:SetPoint('BOTTOMRIGHT', ChatFrame1, 'TOPRIGHT', 2, 2)
ChatFrameEditBox:SetFrameStrata("DIALOG");
end
function gmUIFrame_OnLoad()
gmUIFrame:Show()
setup()
txtGmMsgT:Hide()
gmPlayerName:SetBackdropBorderColor(1,.49,.04,1)
gmPlayerName:SetBackdropColor(1,.49,.04,0)
gmPlayerName:SetFont("Fonts\\FRIZQT__.TTF", 16, "OUTLINE, ")
gmPlayerName:SetTextColor(1.0, 0.55, 0.0);
btnGMon:Show()
btnGMoff:Hide()
btnGMVon:Hide()
btnGMVoff:Show()
btnGMSETVon:Hide()
btnGMSETVoff:Show()
btngmbughelpers:SetTextColor(1.0, 0.55, 0.0);
btngmbughelpers:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmTeleOpen:SetTextColor(1.0, 0.55, 0.0);
btngmTeleOpen:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmAuraOpen:SetTextColor(1.0, 0.55, 0.0);
btngmAuraOpen:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmBanOpen:SetTextColor(1.0, 0.55, 0.0);
btngmBanOpen:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmLearnOpen:SetTextColor(1.0, 0.55, 0.0);
btngmLearnOpen:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
gmMountOpen:SetTextColor(1.0, 0.55, 0.0);
gmMountOpen:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
gmAuctionOpen:SetTextColor(1.0, 0.55, 0.0);
gmAuctionOpen:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
gmSettingsOpen:SetTextColor(1.0, 0.55, 0.0);
gmSettingsOpen:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
gmNoteOpen:SetTextColor(1.0, 0.55, 0.0);
gmNoteOpen:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btnGmwhisp2:SetTextColor(1.0, 0.55, 0.0);
btnGmwhisp2:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
gmCommonOpen:SetTextColor(1.0, 0.55, 0.0);
gmCommonOpen:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
gmJokeOpen:SetTextColor(1.0, 0.55, 0.0);
gmJokeOpen:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmEnd:SetTextColor(1.0, 0.55, 0.0);
btngmEnd:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btnGmWho:SetTextColor(1.0, 0.55, 0.0);
btnGmWho:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btnGmPinfoId:SetTextColor(1.0, 0.55, 0.0);
btnGmPinfoId:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btnGmPinfo:SetTextColor(1.0, 0.55, 0.0);
btnGmPinfo:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btnGmRefesh:SetTextColor(1.0, 0.55, 0.0);
btnGmRefesh:SetFont("Fonts\\FRIZQT__.TTF", 11, "OUTLINE, ")
btnGmEscalate2:SetTextColor(1.0, 0.55, 0.0);
btnGmEscalate2:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btnGmEscalate:SetTextColor(1.0, 0.55, 0.0);
btnGmEscalate:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btnGmHoldTicket:SetTextColor(1.0, 0.55, 0.0);
btnGmHoldTicket:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
gmMailOpen:SetTextColor(1.0, 0.55, 0.0);
gmMailOpen:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btnGmGo:SetTextColor(1.0, 0.55, 0.0);
btnGmGo:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btnGmSummon:SetTextColor(1.0, 0.55, 0.0);
btnGmSummon:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btnGmLoadT:SetTextColor(1.0, 0.55, 0.0);
btnGmLoadT:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btnGmSummon1:SetTextColor(1.0, 0.55, 0.0);
btnGmSummon1:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
btngmfly:SetTextColor(1.0, 0.55, 0.0);
btngmfly:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE, ")
gmPlayerName:SetJustifyH("CENTER")
	txtGmMsgT:SetBackdrop({
		bgFile = [[]],
		insets = {left = -5, right = 0, top = 0, bottom = 0
		}})
	txtGmMsgT:SetBackdropColor(94, 0.88, 0.19, 0.1)
	txtGmMsgT:SetHeight(100)
	txtGmMsgT:SetFont("Fonts\\FRIZQT__.TTF", 18, "OUTLINE, ")
	txtGmMsgT:SetTextColor(1.0, 0.55, 0.0);
	-- txtGmSendWhisp:SetBackdrop({
		-- bgFile = [[Interface\Buttons\WHITE8x8]],
		-- insets = {left = -5, right = 0, top = 0, bottom = 0
		-- }})
	-- txtGmSendWhisp:SetBackdropColor(0, 0, 0, 0.5)
	-- txtGmSendWhisp:SetHeight(13)
	txtGmMsgT:SetText("Updating tickets... If this takes too long type /reload and load the addon again. Or click the 'Refresh Ticket Text' button!")
	if not MySlider then
		CreateFrame('Slider', 'MySlider', gmUIFrame, 'OptionsSliderTemplate')
	end
	MySlider:ClearAllPoints()
	getglobal(MySlider:GetName() .. 'Low'):SetText('nil');
	MySlider:SetOrientation('VERTICAL')
	getglobal(MySlider:GetName() .. 'High'):SetText('nil');
	MySlider:SetMinMaxValues(1, 100)
	MySlider:SetValueStep(1)
	MySlider:SetHeight(220)
	MySlider:SetWidth(0)
	MySlider:SetPoint("TopLeft", gmUIFrame,"Center", 575, -295)
	MySlider:Hide()
	MySlider:SetScript("OnValueChanged", updateBtns)
	-- MySlider:SetScript("OnMouseWheel", gmTickets_OnMouseWheel(arg1,arg2))
	-- MySlider:SetScript("OnMinMaxChanged", MyFunction)
	---- 
	btn = {}
-- gmBtn1T:EnableMouseWheel(true);
-- gmBtn1T:SetScript("OnMouseWheel", function(self,delta) gmBtn1T:SetText(tostring(delta)) end)
	tinsert(btn,gmBtn1T)
	gmBtn1T:SetScript("OnClick", function(self, button, down) setTicketByPlayerName(gmBtn1T:GetText()) end)
	tinsert(btn,gmBtn2T)
	gmBtn2T:SetScript("OnClick", function(self, button, down) setTicketByPlayerName(gmBtn2T:GetText()) end)
	tinsert(btn,gmBtn3T)
	gmBtn3T:SetScript("OnClick", function(self, button, down) setTicketByPlayerName(gmBtn3T:GetText()) end)
	tinsert(btn,gmBtn4T)
	gmBtn4T:SetScript("OnClick", function(self, button, down) setTicketByPlayerName(gmBtn4T:GetText()) end)
	tinsert(btn,gmBtn5T)
	gmBtn5T:SetScript("OnClick", function(self, button, down) setTicketByPlayerName(gmBtn5T:GetText()) end)
	tinsert(btn,gmBtn6T)
	gmBtn6T:SetScript("OnClick", function(self, button, down) setTicketByPlayerName(gmBtn6T:GetText()) end)
	--simTickets()
	gmUIFrame:RegisterEvent("CHAT_MSG_ADDON");
	gmUIFrame:RegisterEvent("CHAT_MSG_WHISPER");	
	if not Slider then
		CreateFrame('Slider', 'S', gmUIFrame, 'OptionsSliderTemplate')
	end
	S.tooltipText = 'Speed Bar'
	getglobal(S:GetName() .. 'Low'):SetText('');
	S:SetOrientation('HORIZONTAL')
	getglobal(S:GetName() .. 'Text'):SetText('')
	getglobal(S:GetName() .. 'Text'):SetFont("Fonts\\FRIZQT__.TTF", 16, "OUTLINE, ")
	getglobal(S:GetName() .. 'Text'):SetTextColor(1.0, 0.55, 0.0);
	getglobal(S:GetName() .. 'High'):SetText('');
	S:SetMinMaxValues(2, 10)
	S:SetAlpha(1)
	S:SetValueStep(2)
	S:SetValue(2)
	S:SetHeight(15)
	S:SetWidth(210)
	S:SetPoint("TopLeft", gmUIFrame,"Center", -512, -468)
	S:SetScript("OnValueChanged", updateSpeed)
	S:SetScale(1)
	S:SetBackdropColor(255,140,0)
	S:SetBackdropBorderColor(255,140,0)
	
end	
function updateSpeed()
local value = S:GetValue()
	if ( UnitIsUnit("target", "player") ) then	
	SendChatMessage(gmCommands["Speed"].." "..value..' ')
	gmAddonPrint("Speed is set to "..value..' ')
	else
	TargetByName(UnitName("player"))
    gmAddonPrint("You must target yourself first! \n"..RED_FONT_COLOR_CODE.."Now Auto Targeting..")	
	end	
end

function gmNoteFrame_OnLoad()
tinsert(UISpecialFrames,"gmAuraFrame");
	local CopyChat = CreateFrame('Frame', 'nChatCopy', UIParent)
	CopyChat:SetWidth(580)
	CopyChat:SetHeight(380)
	CopyChat:SetPoint('CENTER', gmNoteFrame, 'CENTER', 0, 0)
	CopyChat:SetFrameStrata('TOOLTIP')
	CopyChat:Hide()
	CopyChat:SetBackdrop({
		bgFile = [[Interface\Buttons\WHITE8x8]],
		insets = {left = 3, right = 3, top = 4, bottom = 3
		}})
	CopyChat:SetBackdropColor(0, 0, 0, 0.7)
	-- CreateBorder(CopyChat, 12, 1, 1, 1)
	CopyChatBox = CreateFrame('EditBox', 'nChatCopyBox', CopyChat)
	CopyChatBox:SetMultiLine(true)
	CopyChatBox:SetAutoFocus(false)
	CopyChatBox:EnableMouse(true)
	CopyChatBox:SetMaxLetters(999999)
	CopyChatBox:SetWidth(580)
	CopyChatBox:SetHeight(9000)
	CopyChatBox:SetScript('OnEscapePressed', function() CopyChatBox:ClearFocus() end)
	if not gmSave then gmSave = {} end
	CopyChatBox:SetScript('OnTextChanged', function() if strlen( CopyChatBox:GetText()) > 0 then gmSave["notepad"] = CopyChatBox:GetText() end end)
	CopyChatBox:SetFont("Fonts\\FRIZQT__.TTF", 16, "OUTLINE, ")
	CopyChatBox:SetTextColor(1.0, 0.55, 0.0);	
	local Scroll = CreateFrame('ScrollFrame', 'nChatCopyScroll', CopyChat, 'UIPanelScrollFrameTemplate')
	Scroll:SetPoint('TOPLEFT', CopyChat, 'TOPLEFT', 0, -5)
	Scroll:SetPoint('BOTTOMRIGHT', CopyChat, 'BOTTOMRIGHT', -30, 0)
	Scroll:SetScrollChild(CopyChatBox)
end
function gmMailSubject_OnTextChanged()
	if strlen( gmMailSubject:GetText()) > 0 then gmSave["subject"] = gmMailSubject:GetText() end
end
function gmMailMsg_OnTextChanged()
	if strlen( gmMailMsg:GetText()) > 0 then gmSave["msg"] = gmMailMsg:GetText() end
end
function gmMailItem_OnTextChanged()
	if strlen( gmMailItem:GetText()) > 0 then gmSave["item"] = gmMailItem:GetText() end
end
function gmMailIssue_OnTextChanged()
	if strlen( gmMailIssue:GetText()) > 0 then gmSave["issue"] = gmMailIssue:GetText() end
end
function gmMailOwner_OnTextChanged()
	if strlen( gmMailOwner:GetText()) > 0 then gmSave["issue"] = gmMailOwner:GetText() end
end
function gmBanPlayer_OnTextChanged()
	if strlen( gmBanPlayer:GetText()) > 0 then gmSave["banplayer"] = gmBanPlayer:GetText() end
end
function gmBanTime_OnTextChanged()
	if strlen( gmBanTime:GetText()) > 0 then gmSave["bantime"] = gmBanTime:GetText() end
end
function gmBanReason_OnTextChanged()
	if strlen( gmBanReason:GetText()) > 0 then gmSave["banreason"] = gmBanReason:GetText() end
end
function gmMailSend_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmMailOwner:ClearFocus()	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	gmSendMail()
end
function gmIssueSend_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmMailOwner:ClearFocus()	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	gmSendIssue()
end
function gmMailBug_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmMailOwner:ClearFocus()	
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	gmSendBug()
end
function gmMailWDB_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()		
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	gmSendWDB()
end
function gmMailMissloot_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()		
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	gmSendMissloot()
end
function btngmBan_OnClick()
	gmBanPlayer:ClearFocus()
	gmBanTime:ClearFocus()
	gmBanReason:ClearFocus()	
	gmSendAddonMsg(""..gmBanPlayer:GetText().." was Banned by "..UnitName("Player"))
	gmBan()
	btnConfirmClose_OnClick()
end
function btngmBanIP_OnClick()
	gmBanPlayer:ClearFocus()
	gmBanTime:ClearFocus()
	gmBanReason:ClearFocus()	
	gmSendAddonMsg("IP"..gmBanPlayer:GetText().." was Banned by "..UnitName("Player"))
	gmBanIP()
	btnConfirmIPClose_OnClick()
end
function btngmBanIPRange_OnClick()
	gmBanPlayer:ClearFocus()
	gmBanTime:ClearFocus()
	gmBanReason:ClearFocus()	
	gmSendAddonMsg("IP"..gmBanPlayer:GetText().." was Banned by "..UnitName("Player"))
	gmBanIPRange()
	btnConfirmIPRangeClose_OnClick()
end
--Ilmus added more answered via Mail start-- 
function gmCommonAwaitingFix_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()		
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	gmCommonAwaitingFix()
end
function gmCommonInvestigation_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()		
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	gmCommonInvestigation()
end
function gmCommonGoldSelling_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()		
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonGoldSelling()
end
function gmCommonMultiBoxing_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()		
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonMultiBoxing()
end
function gmCommonCombatBug_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()		
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonCombatBug()
end
function gmCommonHearthstone_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()		
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonHearthstone()
end
function gmCommonCamera_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()		
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonCamera()
end
function gmCommonCrash_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()		
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonCrash()
end
function gmCommonDonations_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()		
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonDonations()
end
function gmCommonRules_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()		
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonRules()
end
function gmCommonIRC_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()		
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonIRC()
end
function gmCommonSummoningStones_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonSummoningStones()
end
function gmCommonBanInfo_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonBanInfo()
end
function gmCommonAppeals_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonAppeals()
end
function gmCommonTicketDetail_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonTicketDetail()
end
function gmCommonHints_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonHints()
end
function gmCommonAbandon_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonAbandon()
end
function gmCommonRestedXP_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonRestedXP()
end
function gmCommonLootIncident_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonLootIncident()
end
function gmCommonMailCap_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonMailCap()
end
function gmCommonBugtracker_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonBugtracker()
end
function gmCommonRaceChange_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonRaceChange()
end
function gmCommonFactionChange_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonFactionChange()
end
function gmCommonGenderChange_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonGenderChange()
end
function gmCommonScammed_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonScammed()
end
function gmCommonSuggestions_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonSuggestions()
end
function gmCommonRename_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonRename()
end
function gmCommonGuildCharter_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonGuildCharter()
end
function gmCommonFishing_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonFishing()
end
function gmCommonBloodPact_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonBloodPact()
end
function gmCommonHacked_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonHacked()
end
function gmCommonAutoBans_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonAutoBans()
end
function gmCommonRitualOfSummoning_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonRitualOfSummoning()
end
function gmCommonWorldPvPMail_OnClick()--World PvP Mail
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonWorldPvPMail()
end
function gmCommonRebootMail_OnClick()--Reboot PvP Mail
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonRebootMail()
end
function gmCommonHarassmentMail_OnClick()--Harassment PvP Mail
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonHarassmentMail()
end
function gmCommonPasswords_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	 gmCommonPasswords()
end
--Ilmus added more answered via Mail stop--
function btngmLookup_OnClick()
	gmBanPlayer:ClearFocus()
	gmBanTime:ClearFocus()
	gmBanReason:ClearFocus()	
	gmLookup()
end
function btngmBaninfo_OnClick()
	gmBanPlayer:ClearFocus()
	gmBanTime:ClearFocus()
	gmBanReason:ClearFocus()	
	gmBaninfo()
end
function btngmLookupacc_OnClick()
	gmBanPlayer:ClearFocus()
	gmBanTime:ClearFocus()
	gmBanReason:ClearFocus()	
	gmLookupacc()
end
function btngmBaninfoIP_OnClick()
	gmBanPlayer:ClearFocus()
	gmBanTime:ClearFocus()
	gmBanReason:ClearFocus()	
	gmBaninfoIP()
end
function btngmKick_OnClick()
	gmBanPlayer:ClearFocus()
	gmBanTime:ClearFocus()
	gmBanReason:ClearFocus()	
	gmSendAddonMsg(""..gmBanPlayer:GetText().." was Kicked by "..UnitName("Player"))
	gmKick()
end
function btngmMute_OnClick()
	gmBanPlayer:ClearFocus()
	gmBanTime:ClearFocus()
	gmBanReason:ClearFocus()	
	gmSendAddonMsg(""..gmBanPlayer:GetText().." was Muted by "..UnitName("Player"))
	gmMute()
end
function gmMailDetail_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	gmSendDetail()
end
function gmMailSendI_OnClick()
	gmMailSubject:ClearFocus()
	gmMailMsg:ClearFocus()
	gmMailItem:ClearFocus()
	gmMailIssue:ClearFocus()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Mail by "..UnitName("Player"))
	gmSendMailI()
end
function gmMailSendDel_OnClick()
	gmMailSend_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailDetailDel_OnClick()
	gmMailDetail_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailBugDel_OnClick()
	gmMailBug_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailWDBDel_OnClick()
	gmMailWDB_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailSendDelI_OnClick()
	gmMailSendI_OnClick()
	btnGmDeleteT_OnClick()
end
--Ilmus added Del_OnClick here START
function gmMailAwaitingFixDel_OnClick()
	gmCommonAwaitingFix_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailInvestigationDel_OnClick()
	gmCommonInvestigation_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailGoldSellingDel_OnClick()
	gmCommonGoldSelling_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailMultiBoxingDel_OnClick()
	gmCommonMultiBoxing_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailCombatBugDel_OnClick()
	gmCommonCombatBug_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailHearthstoneDel_OnClick()
	gmCommonHearthstone_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailCameraDel_OnClick()
	gmCommonCamera_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailCrashDel_OnClick()
	gmCommonCrash_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailDonationsDel_OnClick()
	gmCommonDonations_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailRulesDel_OnClick()
	gmCommonRules_OnClick()
	btnGmDeleteT_OnClick()
end
function gmMailIRCDel_OnClick()
	gmCommonIRC_OnClick()
	btnGmDeleteT_OnClick()
end
function gmSummoningStonesDel_OnClick()
	gmCommonSummoningStones_OnClick()
	btnGmDeleteT_OnClick()
end
function gmBanInfoDel_OnClick()
	gmCommonBanInfo_OnClick()
	btnGmDeleteT_OnClick()
end
function gmAppealsDel_OnClick()
	gmCommonAppeals_OnClick()
	btnGmDeleteT_OnClick()
end
function gmTicketDetailDel_OnClick()
	gmCommonTicketDetail_OnClick()
	btnGmDeleteT_OnClick()
end
function gmCommonHintsDel_OnClick()
	gmCommonHints_OnClick()
	btnGmDeleteT_OnClick()
end
function gmCommonAbandonDel_OnClick()
	gmCommonAbandon_OnClick()
	btnGmDeleteT_OnClick()
end
function gmCommonRestedXPDel_OnClick()
	gmCommonRestedXP_OnClick()
	btnGmDeleteT_OnClick()
end
function gmCommonLootIncidentDel_OnClick()
	gmCommonLootIncident_OnClick()
	btnGmDeleteT_OnClick()
end
function gmCommonMailCaptDel_OnClick()
	gmCommonMailCap_OnClick()
	btnGmDeleteT_OnClick()
end
function gmCommonMailRaceChangeDel_OnClick()
	gmCommonRaceChange_OnClick()
	btnGmDeleteT_OnClick()
end
function gmCommonMailFactionChangeDel_OnClick()
	gmCommonFactionChange_OnClick()
	btnGmDeleteT_OnClick()
end
function gmCommonMailGenderChangeDel_OnClick()
	gmCommonGenderChange_OnClick()
	btnGmDeleteT_OnClick()
end
function gmCommonMailBugtrackerDel_OnClick()
	gmCommonBugtracker_OnClick()
	btnGmDeleteT_OnClick()
end
function gmCommonMailScammedDel_OnClick()
	gmCommonScammed_OnClick()
	btnGmDeleteT_OnClick()
end
function gmCommonMailSuggestionsDel_OnClick()
	gmCommonSuggestions_OnClick()
	btnGmDeleteT_OnClick()
end
function gmCommonMailRenameDel_OnClick()
	gmCommonRename_OnClick()
	btnGmDeleteT_OnClick()
end
function gmCommonMailGuildCharterDel_OnClick()
	gmCommonGuildCharter()
	btnGmDeleteT_OnClick()
end
function gmCommonFishingDel_OnClick()
	gmCommonFishing()
	btnGmDeleteT_OnClick()
end
function gmCommonBloodPactDel_OnClick()
	gmCommonBloodPact()
	btnGmDeleteT_OnClick()
end
function gmCommonHackedDel_OnClick()
	gmCommonHacked()
	btnGmDeleteT_OnClick()
end
function gmCommonAutoBansDel_OnClick()
	gmCommonAutoBans()
	btnGmDeleteT_OnClick()
end
function gmCommonWorldPvPMailDel_OnClick()
	gmCommonWorldPvPMail()
	btnGmDeleteT_OnClick()
end
function gmCommonRebootMailDel_OnClick()
	gmCommonRebootMail()
	btnGmDeleteT_OnClick()
end
function gmCommonHarassmentMailDel_OnClick()
	gmCommonHarassmentMail()
	btnGmDeleteT_OnClick()
end
function gmCommonRitualOfSummoningDel_OnClick()
	gmCommonRitualOfSummoning()
	btnGmDeleteT_OnClick()
end
function gmCommonPasswordsDel_OnClick()
	gmCommonPasswords()
	btnGmDeleteT_OnClick()
end
--Ilmus stopped adding Del_OnClick here  gmCommonPasswords()
function btnGmAssignBoxClose_OnClick()
	gmAssignBox:Hide()
	btnGmAssignBoxClose:Hide()
end
-- function btnmini_OnClick()
	-- gmAddonFrame:Hide()
-- end
function btnMailClose_OnClick()
	gmMailFrame:Hide()
	gmMailItem:SetText("")	
end
function btnBanClose_OnClick()
	gmBanFrame:Hide()
	gmBanPlayer:SetText("")	
	gmBanTime:SetText("")	
	gmBanReason:SetText("")	
	btnConfirmClose_OnClick()
end
function btnBanIPClose_OnClick()
	gmBanFrame:Hide()
	gmBanPlayer:SetText("")	
	gmBanTime:SetText("")	
	gmBanReason:SetText("")	
	btnConfirmIPClose_OnClick()	
end
function btnBanIPRangeClose_OnClick()
	gmBanFrame:Hide()
	gmBanPlayer:SetText("")	
	gmBanTime:SetText("")	
	gmBanReason:SetText("")	
	btnConfirmIPRangeClose_OnClick()	
end
function btnNoteClose_OnClick()
	gmNoteFrame:Hide()
	nChatCopy:Hide()
end
function btnToggleGM_OnClick()
	SendChatMessage(gmCommands["gmon"]);
end
function btnaccount_OnClick()
	SendChatMessage(gmCommands["account"]);
end
function btnToggleGMV_OnClick()
	SendChatMessage(gmCommands["gmvoff"]);
end
function gmToggleGMOpen_OnClick()
	if gmToggleGMFrame:IsVisible() then
		btnToggleGMClose_OnClick()	
		SendChatMessage(gmCommands["gmoff"])
	else
		gmToggleGMFrame:Show()	
		SendChatMessage(gmCommands["gmon"]);
	end
end
function gmMENUOpen_OnClick()
	if KGMM_Help:IsVisible() then
		KGMM_Help:Hide();	
	else
		KGMM_Help:Show()	
	end
end

function gmfly_OnClick()
	CreateFrame("frame"):SetScript("OnUpdate", taskgmfly)
end

function taskgmfly()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
        TargetByName(UnitName("player"))
        elseif (this.step == 1) then -- 1sec sec delay
		SendChatMessage(gmCommands["gmflyon"])
		SendChatMessage(gmCommands["dragon"])
		SendChatMessage(gmCommands["gmflyspeed"]) 
        elseif  (this.step > 2) then -- Cleanup, destroy timer
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end

function gmGMon_OnClick()
		SendChatMessage(gmCommands["gmoff"])
		btnGMon:Hide()
		btnGMoff:Show()
end
function gmGMoff_OnClick()
		SendChatMessage(gmCommands["gmon"])
		btnGMoff:Hide()
		btnGMon:Show()
end
function gmGMVon_OnClick()
		SendChatMessage(gmCommands["gmvoff"])
		btnGMVon:Hide()
		btnGMVoff:Show()
end
function gmGMVoff_OnClick()
		SendChatMessage(gmCommands["gmvon"])
		btnGMVoff:Hide()
		btnGMVon:Show()
end
function gmGMSETVon_OnClick()
		btnGMSETVon:Hide()
		btnGMSETVoff:Show()
		CreateFrame("frame"):SetScript("OnUpdate", taskgmsetvoff)
end
function taskgmsetvoff()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
            TargetByName(UnitName("player"))
        elseif (this.step == 1) then -- 1sec sec delay
            SendChatMessage(gmCommands["setview"])
        elseif  (this.step > 2) then -- Cleanup, destroy timer
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
function gmGMSETVoff_OnClick()
		SendChatMessage(gmCommands["setview"])
		btnGMSETVoff:Hide()
		btnGMSETVon:Show()
end
function gmToggleWGMOpen_OnClick()
	if gmToggleWGMFrame:IsVisible() then
		btnToggleWGMClose_OnClick()	
		SendChatMessage(gmCommands["whispoff"])
	else
		gmToggleWGMFrame:Show()	
		SendChatMessage(gmCommands["whispon"]);
	end
end
function gmToggleVGMOpen_OnClick()
	if gmToggleVGMFrame:IsVisible() then
		btnToggleVGMClose_OnClick()	
		SendChatMessage(gmCommands["gmvoff"])
	else
		gmToggleVGMFrame:Show()	
		SendChatMessage(gmCommands["gmvon"]);
	end
end
function btnLearnClose_OnClick()
	gmLearnFrame:Hide()
end
function btnSettingsClose_OnClick()
	gmSettingsFrame:Hide()
end
function btnCommonClose_OnClick()
	gmCommonFrame:Hide()
end
function btnTeleClose_OnClick()
	gmTeleFrame:Hide()
end
function btnBugClose_OnClick()
	gmBugFrame:Hide()
end
function btnMaintenanceClose_OnClick()
	gmMaintenanceFrame:Hide()
end
function btnAuraClose_OnClick()
	gmAuraFrame:Hide()
end
function btnConfirmClose_OnClick()
	gmConfirmFrame:Hide()
end
function btnConfirmIPClose_OnClick()
	gmConfirmIPFrame:Hide()
end
function btnConfirmIPRangeClose_OnClick()
	gmConfirmIPRangeFrame:Hide()
end
function btnToggleGMClose_OnClick()
	gmToggleGMFrame:Hide()
end
function btnToggleTurtleClose_OnClick()
	gmToggleTurtleFrame:Hide()
end
function btnToggleWGMClose_OnClick()
	gmToggleWGMFrame:Hide()
end
function btnToggleVGMClose_OnClick()
	gmToggleVGMFrame:Hide()
end
function gmMailOpen_OnClick()
	if gmMailFrame:IsVisible() then
		btnMailClose_OnClick()
	else
		gmMailFrame:Show()
		if gmSave["subject"] and gmMailSubject:GetText() == "" then gmMailSubject:SetText(gmSave["subject"]) end
		-- if gmSave["msg"] and gmMailMsg:GetText() == "" then gmMailMsg:SetText(gmSave["msg"]) end
		if gmSave["item"] and gmMailItem:GetText() == "" then gmMailItem:SetText(ID) end		
	end
end
function gmBanOpen_OnClick()
	if gmBanFrame:IsVisible() then
		btnBanClose_OnClick()
		btnConfirmClose_OnClick()
	else
		gmBanFrame:Show()
		if gmSave["banplayer"] and gmBanPlayer:GetText() == "" then gmBanPlayer:SetText("PlayerName") end
		if gmSave["bantime"] and gmBanTime:GetText() == "" then gmBanTime:SetText("Time") end
		if gmSave["banreason"] and gmBanReason:GetText() == "" then gmBanReason:SetText("Reason") end		
	end
end
function gmBanIPOpen_OnClick()
	if gmBanFrame:IsVisible() then
		btnBanClose_OnClick()
		btnConfirmIPClose_OnClick()
	else
		gmBanFrame:Show()
		if gmSave["banplayer"] and gmBanPlayer:GetText() == "" then gmBanPlayer:SetText("PlayerName") end
		if gmSave["bantime"] and gmBanTime:GetText() == "" then gmBanTime:SetText("Time") end
		if gmSave["banreason"] and gmBanReason:GetText() == "" then gmBanReason:SetText("Reason") end		
	end
end
function gmBanIPRangeOpen_OnClick()
	if gmBanFrame:IsVisible() then
		btnBanClose_OnClick()
		btnConfirmIPRangeClose_OnClick()
	else
		gmBanFrame:Show()
		if gmSave["banplayer"] and gmBanPlayer:GetText() == "" then gmBanPlayer:SetText("PlayerName") end
		if gmSave["bantime"] and gmBanTime:GetText() == "" then gmBanTime:SetText("Time") end
		if gmSave["banreason"] and gmBanReason:GetText() == "" then gmBanReason:SetText("Reason") end		
	end
end
function gmNoteOpen_OnClick()
	if gmNoteFrame:IsVisible() then
		btnNoteClose_OnClick()	
		nChatCopy:Hide()		
	else
		gmNoteFrame:Show()	
		nChatCopy:Show()
		if gmSave["notepad"] and CopyChatBox:GetText() == "" then CopyChatBox:SetText(gmSave["notepad"]) end		
	end
end
function gmSettingsOpen_OnClick()
	if gmSettingsFrame:IsVisible() then
		btnSettingsClose_OnClick()	
	else
		gmSettingsFrame:Show()	
	end
end
function gmLearnOpen_OnClick()
	if gmLearnFrame:IsVisible() then
		btnLearnClose_OnClick()	
	else
		gmLearnFrame:Show()	
	end
end
function gmCommonOpen_OnClick()
	if gmCommonFrame:IsVisible() then
		btnCommonClose_OnClick()	
	else
		gmCommonFrame:Show()	
	end
end
function gmTeleOpen_OnClick()
	if gmTeleFrame:IsVisible() then
		btnTeleClose_OnClick()	
	else
		gmTeleFrame:Show()	
	end
end
function gmBugOpen_OnClick()
	if gmBugFrame:IsVisible() then
		btnBugClose_OnClick()	
	else
		gmBugFrame:Show()	
	end
end
function gmMaintenanceOpen_OnClick()
	if gmMaintenanceFrame:IsVisible() then
		btnMaintenanceClose_OnClick()	
	else
		gmMaintenanceFrame:Show()	
	end
end
function gmAuraOpen_OnClick()
	if gmAuraFrame:IsVisible() then
		btnAuraClose_OnClick()	
	else
		gmAuraFrame:Show()	
	end
end

function gmConfirmOpen_OnClick()
	if gmConfirmFrame:IsVisible() then
		btnConfirmClose_OnClick()	
	else
		gmConfirmFrame:Show()	
	end
end
function gmConfirmIPOpen_OnClick()
	if gmConfirmIPFrame:IsVisible() then
		btnConfirmIPClose_OnClick()	
	else
		gmConfirmIPFrame:Show()	
	end
end

function gmConfirmIPRangeOpen_OnClick()
	if gmConfirmIPRangeFrame:IsVisible() then
		btnConfirmIPRangeClose_OnClick()	
	else
		gmConfirmIPRangeFrame:Show()	
	end
end
function gmPlayerName_OnTextChanged()
	gmMailPlayer:SetText(gmPlayerName:GetText())
	gmCommonPlayer:SetText(gmPlayerName:GetText())	
end
function gmSendMail()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		local item = gmMailItem:GetText()	
		if strlen(text) <= 200 then
			SendChatMessage(gmCommands["send items"].." "..nick..' "'..subject..'" "'..text..'\n\n\n'..UnitName("Player")..' <Kronos Team>" "'..item..'"');
		elseif strlen(text) > 200 and strlen(text) <= 400 then
			local text1 = gmCommands["send items"].." "..nick..' "'..subject..' 1/2" "'..strsub(text,1,200)..'" "'..item..'"'
			local text2 = gmCommands["send items"].." "..nick..' "'..subject..' 2/2" "'..strsub(text,200,strlen(text))..'"'
			SendChatMessage(text1)
			SendChatMessage(text2)
		elseif strlen(text) > 200 and strlen(text) <= 600 then
			local text1 = gmCommands["send items"].." "..nick..' "'..subject..'  1/3" "'..strsub(text,1,200)..'" "'..item..'"'
			text2 = gmCommands["send items"].." "..nick..' "'..subject..' 2/3" "'..strsub(text,200,400)..'"'
			text3 = gmCommands["send items"].." "..nick..' "'..subject..' 3/3" "'..strsub(text,400,600)..'"'
			SendChatMessage(text1)
			SendChatMessage(text2)
			SendChatMessage(text3)
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
		gmMailMsg:SetText("")
	else
	end
end
function gmSendIssue()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()	
		local item = gmMailItem:GetText()
		local issue = gmMailIssue:GetText()	
		local owner = gmMailOwner:GetText()			
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send items"].." "..nick..' "Loot Issue" "Greetings,\n\nItem ID #'..item..' has been transferred from '..owner..' to '..nick..' due to a missloot during the following raid:\n\nvanilla-twinhead.twinstar.cz/?boss-kill='..issue..'\n\n\n'..UnitName("Player")..' <Kronos Team>\n\n" "'..item..'"');
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Read First" "Greetings '..nick..'.\n\nIf you have received the mail labeled Loot Issue by mistake or the item is not correct hit the return button at the bottom to avoid any repercussions.\n\n\n'..UnitName("Player")..' <Kronos Team>"');
			else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmBan()
	if gmBanPlayer:GetText() ~= "" then
		local banreason = gmBanReason:GetText()
		local banplayer = gmBanPlayer:GetText()
		local banttime = gmBanTime:GetText()
			SendChatMessage(gmCommands["Ban"].." "..banplayer..' "'..banttime..'" "'..banreason..'"');
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmBanPlayer:ClearFocus()
		gmBanTime:ClearFocus()
		gmBanReason:ClearFocus()		
end
function gmBanIP()
	if gmBanPlayer:GetText() ~= "" then
		local banreason = gmBanReason:GetText()
		local banplayer = gmBanPlayer:GetText()
		local banttime = gmBanTime:GetText()
			SendChatMessage(gmCommands["BanIP"].." "..banplayer..' "'..banttime..'" "'..banreason..'"');
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmBanPlayer:ClearFocus()
		gmBanTime:ClearFocus()
		gmBanReason:ClearFocus()		
end
function gmBanIPRange()
	if gmBanPlayer:GetText() ~= "" then
		local banreason = gmBanReason:GetText()
		local banplayer = gmBanPlayer:GetText()
		local banttime = gmBanTime:GetText()
			btngmDelayBanIPRange_OnClick()
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmBanPlayer:ClearFocus()
		gmBanTime:ClearFocus()
		gmBanReason:ClearFocus()		
end
function gmLookup()
	if gmBanPlayer:GetText() ~= "" then
		local banreason = gmBanReason:GetText()
		local banplayer = gmBanPlayer:GetText()
		local banttime = gmBanTime:GetText()
			SendChatMessage(gmCommands["Lookup"].." "..banplayer..' ');
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmBanPlayer:ClearFocus()
		gmBanTime:ClearFocus()
		gmBanReason:ClearFocus()		
end
function gmKick()
	if gmBanPlayer:GetText() ~= "" then
		local banreason = gmBanReason:GetText()
		local banplayer = gmBanPlayer:GetText()
		local banttime = gmBanTime:GetText()
			SendChatMessage(gmCommands["Kick"].." "..banplayer..' "');
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmBanPlayer:ClearFocus()
		gmBanTime:ClearFocus()
		gmBanReason:ClearFocus()		
end
function gmMute()
	if gmBanPlayer:GetText() ~= "" then
		local banreason = gmBanReason:GetText()
		local banplayer = gmBanPlayer:GetText()
		local banttime = gmBanTime:GetText()
			SendChatMessage(gmCommands["Mute"].." "..banplayer..' '..banttime..' "'..banreason..'"');
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmBanPlayer:ClearFocus()
		gmBanTime:ClearFocus()
		gmBanReason:ClearFocus()		
end
function gmBaninfo()
	if gmBanPlayer:GetText() ~= "" then
		local banreason = gmBanReason:GetText()
		local banplayer = gmBanPlayer:GetText()
		local banttime = gmBanTime:GetText()
			SendChatMessage(gmCommands["BanInfo"].." "..banplayer..' ');
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmBanPlayer:ClearFocus()
		gmBanTime:ClearFocus()
		gmBanReason:ClearFocus()		
end
function gmBaninfoIP()
	if gmBanPlayer:GetText() ~= "" then
		local banreason = gmBanReason:GetText()
		local banplayer = gmBanPlayer:GetText()
		local banttime = gmBanTime:GetText()
			SendChatMessage(gmCommands["BanInfoIP"].." "..banplayer..' ');
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmBanPlayer:ClearFocus()
		gmBanTime:ClearFocus()
		gmBanReason:ClearFocus()		
end
function gmLookupacc()
	if gmBanPlayer:GetText() ~= "" then
		local banreason = gmBanReason:GetText()
		local banplayer = gmBanPlayer:GetText()
		local banttime = gmBanTime:GetText()
			SendChatMessage(gmCommands["LookupAcc"].." "..banplayer..' ');
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmBanPlayer:ClearFocus()
		gmBanTime:ClearFocus()
		gmBanReason:ClearFocus()		
end
function gmSendMailI()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 200 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "'..subject..'" "'..text..'\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		elseif strlen(text) > 200 and strlen(text) <= 400 then
			local text1 = gmCommands["send mail"].." "..nick..' "'..subject..' 1/2" "'..strsub(text,1,200)..'"'
			local text2 = gmCommands["send mail"].." "..nick..' "'..subject..' 2/2" "'..strsub(text,200,strlen(text))..'"'
			SendChatMessage(text1)
			SendChatMessage(text2)
		elseif strlen(text) > 200 and strlen(text) <= 600 then
			local text1 = gmCommands["send mail"].." "..nick..' "'..subject..' 1/3" "'..strsub(text,1,200)..'"'
			text2 = gmCommands["send mail"].." "..nick..' "'..subject..' 2/3" "'..strsub(text,200,400)..'"'
			text3 = gmCommands["send mail"].." "..nick..' "'..subject..' 3/3" "'..strsub(text,400,600)..'"'
			SendChatMessage(text1)
			SendChatMessage(text2)
			SendChatMessage(text3)
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
		gmMailMsg:SetText("")
	else
	end
end
function gmSendBug()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()	
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Bug Tracker" "Greetings '..nick..'.\n\nPlease use our Bug Tracker at:\n\nVanilla-Twinhead.twinstar.cz/?issues\n\nYou will need to search for the Quest/Npc/Item/etc which you find is bugged. Then vote up on this bug.\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmSendWDB()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()	
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "WDB Folder" "Greetings '..nick..'!\n\n\nHere is something you can try to fix the issue you are having.\n\nFirst close your game, and then delete the WDB folder located in your WoW directory.\n\nThen relaunch your game.\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmSendMissloot()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()	
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Loot Issue" "Greetings, Thank you for the report. However for loot issues you need to use the Loot Incident Quota format located in the Raid/Dungeon forum. Please resubmit a new ticket using this format. "');		
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
--Ilmus started here to add some more mail responses
function gmCommonAwaitingFix()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Awaiting Fix" "Greetings '..nick..'!\n\n\nWe are aware of this issue and it is currently awaiting a fix.\n\n\nPlease visit our bugtracker for more information regarding this bug at:\n\nVanilla-Twinhead.twinstar.cz/?issues\n\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonInvestigation()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Investigation" "Greetings '..nick..'.\n\n\nWe wanted to give you a heads up that your reported issue is now under our investigation.\n\nThank you for making Kronos a better place for everyone!\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonGoldSelling()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Gold Sellers" "Greetings '..nick..'!\n\n\nThank you for your report!\n\nWe wanted to let you know that we have taken action against the reported player.\n\n\nThank you making Kronos a better place for everyone!\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonMultiBoxing()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Multiboxing" "Greetings '..nick..'.\n\n\nIt is forbidden for a player to be logged into more than one character “out in the world” at any time.\n\n\Players are allowed to be online with multiple characters in a major city.\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonCombatBug()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Combat Bug" "Greetings '..nick..'.\n\nBelow are some methods you can try to rid yourself from the Combat Bug\n\nA) Die to a monster.\nB) Press ALT+F4\nC) Use hearthstone.\n\n\nBug Tracker\n\nhttps://twinhead.twinstar.cz/?issues\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonHearthstone()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Hearthstone" "Greetings '..nick..'.\n\nTo obtain a new Hearthstone you will have to talk to an innkeeper.\n\nHold down left ctrl key, and right click the innkeeper then choose the following dialogue: Make this inn my home.\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonCamera()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Camera" "Greetings '..nick..'.\n\n\nBelow are some methods you can try to remove the Drunken Camera effect\n\nA) Relog\nB) Die to a monster\nC) Press ALT+F4\n\n\n\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonCrash()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Server Crash" "Greetings '..nick..'.\n\n\nUnfortunately we are unable to recover any loot that has gone missing during a server crash or a rollback.\n\n\n\nWe are sorry for any inconvenience this may have caused you.\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonDonations()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Donations" "Greetings '..nick..'.\n\n\nYou can read on how to donate via:\n\nhttps://www.twinstar.cz/manager/Donate/DonateHelp.aspx\n\n\nYou will have to log in to the website from top right corner using your WoW account.\n\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonRules()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Rules" "Greetings '..nick..'.\n\n\nYou can read about all the rules that you need to know about, on how to play safely in Kronos - on our website!\n\nKronos-wow.com/project-kronos-rules\n\n\n\n\nSafe travels!\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonIRC()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Discord" "'..nick..'.\n\nYou have been invited to join our support channel in Discord!\n\nPlease visit the link below to join.\n\nDiscord: https://discord.gg/yzQSnNp\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonSummoningStones()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Meeting Stones" "Greetings '..nick..'.\n\n\In vanilla WoW Meeting Stones do not have the ability to summon players. Meeting Stones are for auto-inviting suitable candidates.\n\nMore info: \n\n\nwww.wowpedia.org/Meeting_Stone\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonBanInfo()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Ban Info" "Greetings '..nick..'.\n\n\Info regarding your ban can be found at: www.twinstar.cz\n\nLog in to the account manager - with your WoW account.\n\n\nWhen facing issues, set your browser into Private Browsing Mode.\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonAppeals()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Ban Appeal" "Greetings '..nick..'.\n\n\n\nGreetings playername, please direct all ban appeals to the head Gamemasters on Kronos discord.\n\nJoin by using this link: https://discord.gg/yzQSnNp\n\n\n\n\n\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonTicketDetail()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "More Info" "Greetings '..nick..'\n\nWe need more information regarding your ticket.\n\nWhen submitting an ticket, provide as much information as possible. Include player names, links to screenshots, or other curcial information."');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonHints()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Hints" "Greetings '..nick..'.\n\n\Gamemasters do not assist players with in-game hints. Use the internet resources available, ask your fellow players for tips and hints!\n\nHere is our database\n\nVanilla-Twinhead.twinstar.cz\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonAbandon()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Quest" "Greetings '..nick..'.\n\n\Make sure you have the required quest items in your inventory.\n\nThen abandon the quest - this will not destroy the items.\n\nAfter you have done that, re-take the quest, and turn that in!\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonRestedXP()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Rested XP" "Greetings '..nick..'.\n\n\Here are the facts!\n\n\n1. One bubble of rested XP is earned every 8h spent resting.\n2. A maximum of 150% of a level may be earned.\n3. It takes 6D & 16H to become fully rested.\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonLootIncident()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Loot Issue" "Greetings '..nick..'.\n\n\your ticket requires more help than a normal GM can provide.\n\nPlease submit a ticket on the official Kronos Discord, Join by using this link: https://discord.gg/yzQSnNp\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonMailCap()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Mail Cap" "Greetings '..nick..'.\n\n\there is an outgoing mail cap per character.\n\nPlease log on your alt character to claim your mails from the mailbox.\n\n\nThis will fix your issue on your main character.\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonBugtracker()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Bugtracker" "TXT HERE"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonRaceChange()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Race Change" "Greetings '..nick..'.\n\nCurrently there is no way to change a character\'\s race.\n\nIt is something we want to provide in the future.\n\nOnce available you will find it on the website at www.twinstar.cz\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonFactionChange()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Faction Change" "Greetings '..nick..'.\n\nCurrently there is no way to change a one\'\s faction.\n\nIt is something we want to provide in the future.\n\nOnce available you will find it on the website at www.twinstar.cz\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonGenderChange()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Gender Change" "Greetings '..nick..'.\n\nCurrently there is no way to change a one\'\s gender.\n\nIt is something we want to provide in the future.\n\nOnce available you will find it on the website at www.twinstar.cz\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonScammed()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Scammed" "Greetings '..nick..'.\n\nWe are sorry to hear that you\'\ve been scammed. However we can not restore the items/gold that you lost.\n\nWe are investigating this report and taking appropriate action as necessary.\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonSuggestions()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Suggestions" "Greetings '..nick..'.\n\nYou can post your ideas and feature requests to our Suggestions Forum at\n\nforum.twinstar.cz\n\n\nThis way our developers can hear your thoughts and make great things happen!\n\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonRename()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Character Rename" "Greetings '..nick..'.\n\nYou are able to rename your character at www.Twinstar.cz\n\nLog in with your WoW credentials to the site.\n\n\nRenaming a character will cost 100 Stars.\n\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonGuildCharter()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Guild Charter" "'..nick..'.\n\nIf you are having trouble turning your guild charter in to the Guild Master NPC.\n\nThen please place the Guild Charter item (with signatures) into the First Slot of your Main Bag.\n\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonFishing()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Fishing" "'..nick..'.\n\nthe Fishing Extravaganza event takes place every sunday 14:00 - 17:00 server time!\n\n\nVisit our database for more information regarding this event: https://vanilla-twinhead.twinstar.cz/\n\n\n'..UnitName("Player")..' <Kronos Team>."');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmDiscord()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
	SendChatMessage(gmCommands["send mail"].." "..nick..' "Discord" "Greetings '..nick..'!\n\n\nYour ticket needs more help than a normal GM can provide.\n\n\nPlease contact Flash or Lightsky on Discord, the link to join can be found at:\n\nwww.kronos-wow.com/support/\n\n\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmDiscord2()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
	SendChatMessage(gmCommands["send mail"].." "..nick..' "If a raid loot issue" "Greetings '..nick..'!\n\n\nLoot issue format.\n\nLootmaster’s name:\nGuilds name:\nRaid and Boss:\nPlayer who the item was intended for:\nPlayer who has the item:\nItem name:\nDate of kill:\nBoss kill link:\n\n'..UnitName("Player")..' <Kronos Team>"');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonBloodPact()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Blood Pact" "'..nick..'.\n\nFirst open your Spellbook, then look at the bottom of the frame - there is a tab called Demon.\n\nOpen it and drag the Blood Pact ability from there manually to your pet bar.\n\n\n\n\n'..UnitName("Player")..' <Kronos Team>."');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonHacked()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Hacked Account?" "'..nick..'.\n\nUnfortunately we can not recover any lost gold or items. Your report is now under investigation.\n\nPlease change your account password.\n\nWe can help with restoring quest rewards.\n\n\n\n\n'..UnitName("Player")..' <Kronos Team>."');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonAutoBans()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Auto Bans" "'..nick..'.\n\nYour account was automatically suspended for entering the password wrong too many times.\n\nThese auto-bans last for 10 minutes.\n\n\n\n\n'..UnitName("Player")..' <Kronos Team>."');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonRitualOfSummoning()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Ritual of Summoning" "'..nick..'.\n\nIn Vanilla WoW it is not possible for Warlocks to summon a player inside the instance - from outside of the instance, and vice versa.\n\n\n\n\n\n\n'..UnitName("Player")..' <Kronos Team>."');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonWorldPvPMail() --world pvp mail button
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "World PvP" "'..nick..'.\n\nI am sorry to hear that someone is ganking you when you are trying to farm or level up. However, Kronos is a PvP server and this kind of behavior is not against the rules.\n\n\n\n\n\n\n'..UnitName("Player")..' <Kronos Team>."');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonRebootMail() --reboot mail button
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Reboot" "'..nick..'.\n\nthis problem can be solved by rebooting the game. Should this not work, please come back to us.\n\n\n\n\n\n\n'..UnitName("Player")..' <Kronos Team>."');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonHarassmentMail() --Harassment mail button
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Harassment" "'..nick..'.\n\nI am sorry to hear you feel harassed. as a first step, we recommend that you /ignore the offending player. If they continue to harass you with an alt account or tell others to do so, please let us know and we will address it as needed.\n\n\n\n\n\n\n'..UnitName("Player")..' <Kronos Team>."');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
function gmCommonPasswords()
	if gmMailPlayer:GetText() ~= "" then
		local text = gmMailMsg:GetText()
		local nick = gmMailPlayer:GetText()
		local subject = gmMailSubject:GetText()
		if strlen(text) <= 800 then
			SendChatMessage(gmCommands["send mail"].." "..nick..' "Passwords" "'..nick..'.\n\nChange your password in the Account Manager at: www.twinstar.cz\n\nOr in-game with this command:\n.account password oldpw newpw newpw\n\n\n\n'..UnitName("Player")..' <Kronos Team>."');
		else
			gmAddonPrint("Message is too long!")
		end
		-- gmMailMsg:AddHistoryLine(gmMailMsg:GetText())
		-- gmMailMsg:SetText("")
		-- gmMailSubject:SetText("")
		gmMailMsg:ClearFocus()
	else
	end
end
--Ilmus stopped adding mail responses here
function btnGmRespond_OnClick()
	SendChatMessage(gmCommands["ticket respond"].." "..gmPlayerName:GetText().." "..txtGmSendWhisp:GetText())
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Respond by "..UnitName("Player"))
	gmAddonPrint("Response \""..txtGmSendWhisp:GetText().."\" added. Be aware, a player can see this while editing the ticket.")
	gmClearntxtGmSendWhisp()
end
function btnGmEscalate_OnClick()
	SendChatMessage(gmCommands["ticket respond"].." "..gmPlayerName:GetText().." Your ticket has been escalated to a Higher GM, by <GM> "..UnitName("Player"))
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Respond by "..UnitName("Player"))
	gmAddonPrint("Escalation added. Be aware, a player can see this escalation while editing the ticket.")
end
function btnGmEscalate2_OnClick()
	gmDiscord()
	gmDiscord2()
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Respond by "..UnitName("Player"))
    SendChatMessage(""..gmCommonPlayer:GetText()..", Your ticket needs more help than a normal GM can provide. Please contact Flash or Lightsky on Discord, the link to join can be found at: www.kronos-wow.com/support/.","WHISPER", nil, gmCommonPlayer:GetText());	
    SendChatMessage("Instructions have also been mailed to you on loot issue formatting.","WHISPER", nil, gmCommonPlayer:GetText());		
	-- btnGmDeleteT_OnClick()
end
function btnGmHoldTicket_OnClick()
	SendChatMessage(gmCommands["ticket respond"].." "..gmPlayerName:GetText().." This ticket requires the player to come online in order to solve the issue they are having - <GM> "..UnitName("Player"))
	gmSendAddonMsg("Ticket from "..gmPlayerName:GetText().." answered via Respond by "..UnitName("Player"))
	gmAddonPrint("This ticket has now been placed on Hold.")
end
function gmAddonPrint(msg)
	if not msg then msg = "" end
	DEFAULT_CHAT_FRAME:AddMessage(RED_FONT_COLOR_CODE.." "..NORMAL_FONT_COLOR_CODE..msg)
end
function gmCheckOnline_OnClick()
	if gmCheckOnline:GetChecked() then gmAddonPrint("Checking online status (using /who, 1ticket per 10s)") end
end
function gmUIFrame_OnEvent(event, arg1,arg2,arg3,arg4,...)
	if event == "CHAT_MSG_ADDON" and arg1 ==  "gmAddon"  and  arg4 ~= UnitName("player") and ticketArray then
		-- print(arg2)
		if strfind(arg2,"Character %a+ ticket deleted") then
			-- print(arg2)
			local _,_,ticketName =  strfind(arg2,"Character (%a+) ticket deleted")
			-- print("ticket from "..ticketName.." deleted by "..arg4)
			gmDeleteTicket(ticketName)
			gmAddonPrint("Ticket from "..ticketName.." deleted by "..arg4..".");
		elseif strfind(arg2, "Ticket from %a+ answered via %a+ by %a+") then
			local _,_, ticketName, answerType, gmName = strfind(arg2, "Ticket from (%a+) answered via (%a+) by (%a+)")
			--print(ticketName)
			--print(answerType)
			--print(gmName)
			table.foreachi(ticketArray, function(k,v)
				if (v and v.playerName == ticketName) then
					if not strfind(v.answeredBy, gmName) then gmAddonPrint(arg2.."."); end
					v.answeredBy = gmName.." ("..answerType..")"
					if k == gmTicketSys["ticketCurrent"] then
						gmSetTicket(gmTicketSys["ticketCurrent"])
					end
					updateBtns()
					return
				end
			end)
		end
	elseif event == "CHAT_MSG_WHISPER" then
		if not autoWhispEnabled or ticketArray == nil then return end
		local hasTicket = false
		table.foreachi(ticketArray, function(k,v)
			-- Does he have a ticket?
			if (v and v.playerName == arg2) then
				hasTicket = true
				return
			end
		end)
		if (not hasTicket) then
			-- print(arg2.." doesn't have a ticket!")
			if (playerWhispArray == nil) then playerWhispArray = {} end -- This array holds information about players and their whispers
			local p = nil -- To hold PlayerWhisp object			
			table.foreachi(playerWhispArray, function(k,v)
				if (v and v.playerName == arg2) then
					-- "I already sent the "SYSTEM: ..." msg to this player, update his LastWhisp time"
					tremove(playerWhispArray,k)
					p = v
					p:setLastWhisp(time())
				else
					if v ~= nil and v:SendWhisp() then -- Remove old players
						tremove(playerWhispArray,k)
					end
				end
			end)
			if (p == nil) then
				p = PlayerWhisp:new()
				p:setPlayerName(arg2)
				p:setLastWhisp(time())
			end
			tinsert(playerWhispArray, p)
			if p:SendWhisp() then
				-- print("Sending whisper..."..tostring(p:SendWhisp()))
				GmAddonW("SYSTEM: This Game Master does not currently have an open ticket from you and did not receive your whisper. Please submit a new GM Ticket request if you need to speak to a GM. This is an automatic message.", p.playerName)
				p:setAutoResponseTime(time())
			end
		end
	end
end
-- /run SendAddonMessage( "gmAddon", "User Data: XYZ", "GUILD" );
function gmSendAddonMsg(msg)
	if IsInGuild() then SendAddonMessage( "gmAddon", msg, "GUILD" ); end
end
function bagclear()
for bag = 0,4,1 do for slot = 1, 32, 1 do local name = GetContainerItemLink(bag,slot); if name and string.find(name,"") then PickupContainerItem(bag,slot); DeleteCursorItem(); end; end; end
end
function gmTickets_OnMouseWheel(arg1,arg2)
if not arg1 then return end
 -- print(arg1)
-- print(arg2)
MySlider:SetValue(MySlider:GetValue() - arg1)
end
function gmAddonFrame_Toggle()
	if(gmAddonFrame:IsVisible()) then
		gmAddonFrame:Hide();
	else
		gmAddonFrame:Show();
	end	
end
-------------------------------------------------------------
-------------------- Guild note Tickets: --------------------
-------------------------------------------------------------
gmTicketsNote = "Tickets: "
--[[  
This needs informations that client recieves after calling GuildRoster() (information about guild members)
I am now calling GuildRoster() only in btnGmLoadT_OnClick(). It might cause some problems if there are changes in the guild between 
btnGmLoadT_OnClick() and btnGmDeleteT_OnClick()
]]
-- Finds index and public note of my character in guild roster
function gmFindMyGuildIndex()
	for i = 1, GetNumGuildMembers() do
		fullName, _, _, _, _, _, note, officernote, online= GetGuildRosterInfo(i)
		-- print(fullName..": "..note)
		if fullName == UnitName("Player") then
			return i, note;
		end
	end
end
-- Removes text "Tickets: xx" from the String
function gmRemoveTickets(note)
	return string.gsub(note,gmTicketsNote.."(%d+)","" );
end
function gmAddTicketSolved() -- /run gmAddTicketSolved()
	local index, note = gmFindMyGuildIndex()
	if strfind(note, gmTicketsNote.."%d+") then -- If public guild note contains Tickets: xx
		local _,_,c = string.find(note, gmTicketsNote.."(%d+)") -- Parse number of tickets
		c = c + 1 -- Add one ticket
		note = gmRemoveTickets(note)
		GuildRosterSetPublicNote(index, gmTicketsNote..c..""..note) -- Add new "Tickets: xx" at the beginning of the note
	else 
		GuildRosterSetPublicNote(index, gmTicketsNote.."1 "..note) -- Tickets: 1
	end
end
-- Removes "Tickets: xx" from my guild note
function gmResetPublicNote()
	local index, note = gmFindMyGuildIndex()
	note = gmRemoveTickets(note)
	GuildRosterSetPublicNote(index, note) -- Set note without ticket info
end
-- Removes "Tickets: xx" from ALL guild notes
function gmResetPublicNotes()
	print("Removing tickets from public notes...")
	for i = 1, GetNumGuildMembers() do
		fullName, _, _, _, _, _, note, officernote, online= GetGuildRosterInfo(i)
		if strfind(note,gmTicketsNote) then
			print(fullName..": "..note.."; "..officernote)
			note = gmRemoveTickets(note)
			GuildRosterSetPublicNote(i, note) -- Set note without ticket info
		end
	end
	print("Done!")
end
-- Shows in chat guild members with note with solved tickets. GuildRoster() needs to be called before use, or just open guild window.
function gmPrintGuildNotes()
	print("List of GMs:")
	for i = 1, GetNumGuildMembers() do
		fullName, _, _, _, _, _, note, officernote, online= GetGuildRosterInfo(i)
		if strfind(note,gmTicketsNote) then
			print(fullName..": "..note.."; "..officernote)
		end
	end
end
--------------------------------------------------------------
------------------------- AUTO WHISP -------------------------
--------------------------------------------------------------
PlayerWhisp = {
	playerName = "",
	lastWhisp = 0, -- Time of last whisper from the player
	autoResponseTime = 0, -- Time of the last auto reponse msg sent to this player
	setPlayerName = function (self,str)
		self.playerName = str;
	end,
	setLastWhisp = function (self,str)
		self.lastWhisp = str;
	end,
	setAutoResponseTime = function (self,str)
		self.autoResponseTime = str;
	end
}
function PlayerWhisp:new(o)
	o = o or {}   -- create object if user does not provide one
	setmetatable(o, self)
	self.__index = self
	return o
end
-- Calculates if addon should send "SYSTEM: ..." msg to the player
function PlayerWhisp:SendWhisp()
	if time() > self.autoResponseTime + AUTO_WHISPER_COOLDOWN then
		return true
	end
	return false
end
function toggleAutoWhisp()
	if autoWhispEnabled == nil or autoWhispEnabled == false then
		autoWhispEnabled = true
		print("AutoWhisp: "..GREEN_FONT_COLOR_CODE.."ENABLED")
	else
		autoWhispEnabled = false
		print("AutoWhisp: "..RED_FONT_COLOR_CODE.."DISABLED")
	end
end
-- Visual *flash test for future use
function btnGmLoadT_FlashEffect()
	btnGmLoadT:Show();
	UIFrameFlash(btnGmLoadT, 1, 1, 36000, false);
end
function btnGmLoadT_FlashEffectOff()
	btnGmLoadT:Hide();
	UIFrameFlashStop(btnGmLoadT);
end
-- Help Buttons(Bugfixes) --

function btngmTeleDashelStonefist_OnClick() -- /run btngmTeleDashelStonefist_OnClick()
    CreateFrame("frame"):SetScript("OnUpdate", taskDashelStonefist)
end
function taskDashelStonefist()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
            SendChatMessage(gmCommands["DashelStonefist"])
        elseif (this.step == 1) then -- 1sec sec delay
            TargetByName("DashelStonefist")
        elseif (this.step == 2) then -- 2sec sec delay
            SendChatMessage(gmCommands["die"])
		elseif (this.step == 3) then -- 3sdec sec delay
			SendChatMessage(gmCommands["respawn"])	
        elseif  (this.step > 5) then -- Cleanup, destroy timer
            gmAddonPrint("Dashel Fixed <3",1, 1, 1, "gmAddon")
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
function SystemOn() -- /run SystemOn()
    CreateFrame("frame"):SetScript("OnUpdate", taskSystemOn)
end
function taskSystemOn()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay

        elseif (this.step == 1) then -- 1sec sec delay
		gmTicketSys["hideTicketSystemMSG"] = false
        elseif (this.step == 2) then -- 2sec sec delay
            gmTicketSys["hideTicketSystemMSG"] = false
		elseif (this.step == 3) then -- 3sdec sec delay	
		gmTicketSys["hideTicketSystemMSG"] = false
        elseif  (this.step > 5) then -- Cleanup, destroy timer
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
function btngmtaskturtlemount_OnClick() -- turtlemount
    CreateFrame("frame"):SetScript("OnUpdate", taskturtlemount)
end
function taskturtlemount()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
            TargetByName(UnitName("Player"))
        elseif (this.step == 1) then -- 1sec sec delay
            gmToggleTurtleOpen_OnClick()
        elseif  (this.step > 2) then -- Cleanup, destroy timer
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
function btngmDelayBanIPRange_OnClick() -- /run DelayBanIPRange()
    CreateFrame("frame"):SetScript("OnUpdate", taskDelayBanIPRange)
end
function taskDelayBanIPRange()
	if gmBanPlayer:GetText() ~= "" then
		local banreason = gmBanReason:GetText()
		local banplayer = gmBanPlayer:GetText()
		local banttime = gmBanTime:GetText()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end

    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
            gmAddonPrint("This will take a while Aprox. 4.5 minutes, Sit back and relax! DO NOT TOUCH ANY BUTTONS YOU CUCK!",1, 1, 1, "gmAddon")
        elseif (this.step == 1) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.001 "'..banttime..'" "'..banreason..'"');	
        elseif (this.step == 2) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.002 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 3) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.003 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 4) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.004 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 5) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.005 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 6) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.006 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 7) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.007 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 8) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.8 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 9) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.9 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 10) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.010 "'..banttime..'" "'..banreason..'"');
		elseif (this.step == 11) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.011 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 12) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.012 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 13) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.013 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 14) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.014 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 15) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.015 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 16) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.016 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 17) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.017 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 18) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.18 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 19) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.19 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 20) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.020 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 21) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.021 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 22) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.022 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 23) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.023 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 24) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.024 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 25) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.025 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 26) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.026 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 27) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.027 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 28) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.28 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 29) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.29 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 30) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.030 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 31) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.031 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 32) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.032 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 33) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.033 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 34) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.034 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 35) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.035 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 36) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.036 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 37) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.037 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 38) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.38 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 39) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.39 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 40) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.040 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 41) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.041 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 42) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.042 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 43) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.043 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 44) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.044 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 45) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.045 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 46) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.046 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 47) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.047 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 48) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.48 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 49) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.49 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 50) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.050 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 51) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.051 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 52) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.052 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 53) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.053 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 54) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.054 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 55) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.055 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 56) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.056 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 57) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.057 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 58) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.58 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 59) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.59 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 60) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.060 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 61) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.061 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 62) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.062 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 63) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.063 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 64) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.064 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 65) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.065 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 66) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.066 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 67) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.067 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 68) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.68 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 69) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.69 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 70) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.070 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 71) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.071 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 72) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.072 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 73) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.073 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 74) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.074 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 75) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.075 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 76) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.076 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 77) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.077 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 78) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.78 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 79) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.79 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 80) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.80 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 81) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.81 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 82) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.82 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 83) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.83 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 84) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.84 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 85) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.85 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 86) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.86 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 87) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.87 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 88) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.88 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 89) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.89 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 90) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.90 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 91) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.91 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 92) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.92 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 93) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.93 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 94) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.94 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 95) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.95 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 96) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.96 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 97) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.97 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 98) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.98 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 99) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.99 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 100) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.100 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 101) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.101 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 102) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.102 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 103) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.103 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 104) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.104 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 105) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.105 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 106) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.106 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 107) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.107 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 108) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.108 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 109) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.109 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 110) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.110 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 111) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.111 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 112) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.112 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 113) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.113 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 114) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.114 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 115) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.115 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 116) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.116 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 117) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.117 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 118) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.118 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 119) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.119 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 120) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.120 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 121) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.121 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 122) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.122 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 123) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.123 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 124) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.124 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 125) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.125 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 126) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.126 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 127) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.127 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 128) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.128 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 129) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.129 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 130) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.130 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 131) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.131 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 132) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.132 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 133) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.133 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 134) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.134 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 135) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.135 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 136) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.136 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 137) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.137 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 138) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.138 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 139) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.139 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 140) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.140 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 141) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.141 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 142) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.142 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 143) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.143 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 144) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.144 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 145) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.145 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 146) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.146 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 147) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.147 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 148) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.148 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 149) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.149 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 150) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.150 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 151) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.151 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 152) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.152 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 153) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.153 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 154) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.154 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 155) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.155 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 156) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.156 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 157) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.157 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 158) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.158 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 159) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.159 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 160) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.160 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 161) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.161 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 162) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.162 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 163) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.163 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 164) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.164 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 165) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.165 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 166) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.166 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 167) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.167 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 168) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.168 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 169) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.169 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 170) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.170 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 171) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.171 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 172) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.172 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 173) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.173 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 174) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.174 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 175) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.175 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 176) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.176 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 177) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.177 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 178) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.178 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 179) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.179 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 180) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.180 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 181) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.181 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 182) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.182 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 183) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.183 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 184) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.184 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 185) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.185 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 186) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.186 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 187) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.187 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 188) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.188 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 189) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.189 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 190) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.190 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 191) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.191 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 192) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.192 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 193) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.193 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 194) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.194 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 195) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.195 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 196) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.196 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 197) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.197 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 198) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.198 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 199) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.199 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 200) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.200 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 201) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.201 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 202) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.202 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 203) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.203 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 204) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.204 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 205) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.205 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 206) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.206 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 207) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.207 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 208) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.208 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 209) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.209 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 210) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.210 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 211) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.211 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 212) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.212 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 213) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.213 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 214) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.214 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 215) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.215 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 216) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.216 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 217) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.217 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 218) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.218 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 219) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.219 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 220) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.220 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 221) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.221 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 222) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.222 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 223) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.223 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 224) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.224 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 225) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.225 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 226) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.226 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 227) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.227 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 228) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.228 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 229) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.229 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 230) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.230 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 231) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.231 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 232) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.232 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 233) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.233 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 234) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.234 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 235) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.235 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 236) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.236 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 237) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.237 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 238) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.238 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 239) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.239 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 240) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.240 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 241) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.241 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 242) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.242 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 243) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.243 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 244) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.244 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 245) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.245 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 246) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.246 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 247) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.247 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 248) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.248 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 249) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.249 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 250) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.250 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 251) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.251 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 252) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.252 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 253) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.253 "'..banttime..'" "'..banreason..'"');	
		elseif (this.step == 254) then 			
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.254 "'..banttime..'" "'..banreason..'"');
		elseif (this.step == 255) then 					
        SendChatMessage(gmCommands["BanIP"].." "..banplayer..'.255 "'..banttime..'" "'..banreason..'"');					
        elseif  (this.step > 255) then -- Cleanup, destroy timer
            gmAddonPrint("Range Terminated",1, 1, 1, "gmAddon")
			PlaySoundFile("Interface\\Addons\\KronosGMAddon\\Images\\terminator.ogg")			
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
end
function btnGmGo_OnClick() -- /run btnGmGo_OnClick()
    CreateFrame("frame"):SetScript("OnUpdate", taskGmGo_OnClick)
end
function taskGmGo_OnClick()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
            SendChatMessage(gmCommands["teleportTo"].." "..gmPlayerName:GetText())
        elseif (this.step == 1) then -- 1sec sec delay
            TargetByName(gmPlayerName:GetText())
        elseif  (this.step > 3) then -- Cleanup, destroy timer
            gmAddonPrint("You appeared at "..gmPlayerName:GetText().."'s Location and he is now targeted",1, 1, 1, "gmAddon")
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
function btngmTeleDragons_OnClick() -- /run btngmTeleDragons_OnClick()
    CreateFrame("frame"):SetScript("OnUpdate", taskgmTeleDragons_OnClick)
end
function taskgmTeleDragons_OnClick()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
            SendChatMessage(gmCommands["Dragons"])
        elseif (this.step == 1) then -- 1sec sec delay
            TargetByName("Blacklash")
        elseif (this.step == 2) then -- 2sec sec delay
            SendChatMessage(gmCommands["die"])
		elseif (this.step == 3) then -- 3sdec sec delay
			TargetByName("Hematus")	
        elseif (this.step == 4) then -- 2sec sec delay
            SendChatMessage(gmCommands["die"])  
        elseif (this.step == 5) then -- 2sec sec delay
            SendChatMessage(gmCommands["respawn"])  			
        elseif  (this.step > 6) then -- Cleanup, destroy timer
            gmAddonPrint("Dragons are now fixed.",1, 1, 1, "gmAddon")
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
function btngmTeleShay_OnClick() -- /run btngmTeleDragons_OnClick()
    CreateFrame("frame"):SetScript("OnUpdate", taskgmTeleShay_OnClick)
end
function taskgmTeleShay_OnClick()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
            SendChatMessage(gmCommands["Shay"])
        elseif (this.step == 1) then -- 1sec sec delay
            TargetByName("Shay")           
        elseif (this.step == 2) then -- 2sec sec delay
            SendChatMessage(gmCommands["die"])
        elseif (this.step == 5) then -- 2sec sec delay
            SendChatMessage(gmCommands["respawn"])  			
        elseif  (this.step > 6) then -- Cleanup, destroy timer
            gmAddonPrint("Shay Leafrunner is now fixed.",1, 1, 1, "gmAddon")
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
function btngmTeleKodoGraveyard_OnClick() 
    CreateFrame("frame"):SetScript("OnUpdate", taskgmTeleKodoGraveyard_OnClick)
end
function taskgmTeleKodoGraveyard_OnClick()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
            SendChatMessage(gmCommands["teleportTo"])
        elseif (this.step == 1) then -- 1sec sec delay
            TargetByName(gmPlayerName:GetText())           
        elseif (this.step == 2) then -- 2sec sec delay
            SendChatMessage(gmCommands["kodoquest"])
        elseif  (this.step > 6) then -- Cleanup, destroy timer
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
function btngmTelePamela_OnClick() 
    CreateFrame("frame"):SetScript("OnUpdate", taskgmTelePamela_OnClick)
end
function taskgmTelePamela_OnClick()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
            SendChatMessage(gmCommands["Pamela"])
        elseif  (this.step > 6) then -- Cleanup, destroy timer
            this:SetScript("OnUpdate", nil)
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
function btngmTeleDarkmoonAlly_OnClick() 
    CreateFrame("frame"):SetScript("OnUpdate", taskgmTeleDarkmoonAlly_OnClick)
end
function taskgmTeleDarkmoonAlly_OnClick()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
            SendChatMessage(gmCommands["teleportTo"])
        elseif (this.step == 1) then -- 1sec sec delay
            TargetByName(gmPlayerName:GetText())           
        elseif (this.step == 2) then -- 2sec sec delay
            SendChatMessage(gmCommands["darkmoonally"])
        elseif  (this.step > 6) then -- Cleanup, destroy timer
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
function btngmTeleDarkmoonHorde_OnClick() 
    CreateFrame("frame"):SetScript("OnUpdate", taskgmTeleDarkmoonHorde_OnClick)
end
function taskgmTeleDarkmoonHorde_OnClick()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
            SendChatMessage(gmCommands["teleportTo"])
        elseif (this.step == 1) then -- 1sec sec delay
            TargetByName(gmPlayerName:GetText())           
        elseif (this.step == 2) then -- 2sec sec delay
            SendChatMessage(gmCommands["darkmoonhorde"])
        elseif  (this.step > 6) then -- Cleanup, destroy timer
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
function btngmTeleUndercloft_OnClick() -- /run btngmTeleDragons_OnClick()
    CreateFrame("frame"):SetScript("OnUpdate", taskgmTeleUndercloft_OnClick)
end
function taskgmTeleUndercloft_OnClick()
    if(this.period == nil) then  -- Initialization
        this.period = 1 -- Do something every 1 second
        this.elapsed = 0
        this.step = 0
    end
    this.elapsed = this.elapsed + arg1 -- track elapsed time (in seconds)
    if (this.elapsed >= this.period or this.step == 0) then
        if (this.step == 0) then -- 0sec sec delay
            SendChatMessage(gmCommands["Undercloft"])
        elseif (this.step == 1) then -- 1sec sec delay
            TargetByName("Crypt Robber")
        elseif (this.step == 2) then -- 2sec sec delay
            SendChatMessage(gmCommands["die"])
        elseif (this.step == 3) then -- 2sec sec delay
            SendChatMessage(gmCommands["respawn"]) 			
		elseif (this.step == 4) then -- 3sdec sec delay
			TargetByName("Crypt Robber")	
        elseif (this.step == 5) then -- 2sec sec delay
            SendChatMessage(gmCommands["die"])  
        elseif (this.step == 6) then -- 2sec sec delay
            SendChatMessage(gmCommands["respawn"]) 			
		elseif (this.step == 7) then -- 3sdec sec delay
			TargetByName("Crypt Robber")	
        elseif (this.step == 8) then -- 2sec sec delay
            SendChatMessage(gmCommands["die"]) 			
        elseif (this.step == 9) then -- 2sec sec delay
            SendChatMessage(gmCommands["respawn"])  			
        elseif  (this.step > 10) then -- Cleanup, destroy timer
		    gmAddonPrint("Grave Robbers have been purged.",1, 1, 1, "gmAddon")
            this:SetScript("OnUpdate", nil)
            this = nil
            return
        end
        this.elapsed = 0
        this.step = this.step + 1
    end
end
-- shagu's code thanks man when/if you ever see this!
-- core specific commands
local gm_server = {
  ["kronos"] = {
    ["GM_PLAYERINFO"]   = {false, "|cff87C735Player info" , ".pinfo #PLAYER"},
	["GM_PLAYERBANINFO"]   = {false, "|cff87C735Ban info" , ".baninfo char #PLAYER"},
    ["GM_GO"]           = {false, "|cff00A5F9Go to", ".goname #PLAYER" },
    ["GM_SUMMON"]       = {false, "|cff00A5F9Summon", ".namego #PLAYER" },
    ["GM_RECALL"]       = {false, "Recall", ".recall #PLAYER" },
    ["GM_KICK"]         = {true, "|cffff5500World kick", "test(\"#PLAYER\")" },
    ["GM_POSSES"]       = {false, "Set View", ".gm setview" },
    ["GM_MUTE"]         = {false, "|cffff5500Mute 5m", ".mute #PLAYER 5 BadBoi" },
	["GM_BAN"]         = {false, "|cffff5500Gold spam", ".ban char #PLAYER 999 Goldspam" },
    ["GM_UNMUTE"]       = {false, "|cffff5500Unmute" , ".unmute #PLAYER"},
    ["GM_FREEZE"]       = {false, "Stun" , ".stun #PLAYER"},
    ["GM_UNFREEZE"]     = {false, "UnStun", ".unstun" },
    ["GM_FLY"]          = {true, "Flying Mode", "gmfly_OnClick()" },	
    ["GM_SPEED_BOOST"]  = {false, "Speed Boost", ".modify aspeed 5" },
    ["GM_SPEED_MAX"]    = {false, "Max Speed", ".modify aspeed 10" },
    ["GM_SPEED_RESET"]  = {false, "Reset Speed", ".modify aspeed 1" },
    ["GM_SAY"]  = {false, "|cff7f4fc9Say history", ".history #PLAYER say" },
    ["GM_YELL"]  = {false, "|cff7f4fc9Yell history", ".history #PLAYER yell" },
    ["GM_WHISPER"]  = {false, "|cff7f4fc9Whisper history", ".history #PLAYER whisper" },
    ["GM_CHANNEL"]  = {false, "|cff7f4fc9Channel history", ".history #PLAYER channel" },	
    ["GM_ALL"]  = {false, "|cff7f4fc9All history", ".history #PLAYER all" },	
    ["GM_MAIL_SENT"]  = {false, "|cffffcd00Mail sent history", ".list mailsent #PLAYER" },	
    ["GM_MAIL_REC"]  = {false, "|cffffcd00Mail recieved history", ".list mailrec #PLAYER" },
    ["GM_TICKET_LIST"]  = {false, "Tickets", ".ticket" },
    ["GM_TARNAME"]          = {true, "|cff87C735Name Box", "test2(\"#PLAYER\")" },
	["GM_FINGERPRINT"]   = {false, "Fingerprint" , ".lookup fingerprint #PLAYER"},
	["GM_IPP"]   = {false, "|cff009888Lookup Player IP" , ".lookup player ip #PLAYER"},
	["GM_IPA"]   = {false, "|cff009888Lookup Account IP" , ".lookup account ip #PLAYER"},	
  },
}
local server_default = "kronos"
UnitPopupButtons["GM_HEADER"] = { text = TEXT("PLAYER"), dist = 0 , nested = 1}
UnitPopupButtons["GM_HEADER2"] = { text = TEXT("ACCOUNT"), dist = 0, nested = 1}
UnitPopupButtons["GM_HEADER3"] = { text = TEXT("IP"), dist = 0 , nested = 1}
UnitPopupButtons["GM_HEADER4"] = { text = TEXT("HISTORY"), dist = 0 , nested = 1}
UnitPopupButtons["GM_HEADER5"] = { text = TEXT("FINGERPRINT"), dist = 0 , nested = 1}
UnitPopupButtons["GM_DIVIDER"] = { text = TEXT("---------"), dist = 0 }
for label, data in pairs(gm_server[server_default]) do
  local displayname = data[2]
  UnitPopupButtons[label] = { text = TEXT("|cff00ff00" .. displayname), dist = 0 }
end
function test(name)
ChannelKick("world", name)
print(name.. " has been kicked from world.");
end

function test2(name)
gmPlayerName:SetText("")
gmPlayerName:Insert(name)
print(name.. " has been added to your player box.");
end

function pickTestFunction(name)
	print(name.. " says Hi");
end

UnitPopupMenus["GM_HEADER"] = {"WHISPER", "INVITE", "TARGET", "GM_TARNAME", "GM_PLAYERINFO", "GM_PLAYERBANINFO", "GM_GO", "GM_SUMMON", "GM_KICK", "GM_BAN", "GM_MUTE", "GM_UNMUTE", "CANCEL"};
UnitPopupMenus["GM_HEADER2"] = {"CANCEL"};
UnitPopupMenus["GM_HEADER3"] = {"GM_IPP", "GM_IPA", "CANCEL"};
UnitPopupMenus["GM_HEADER4"] = {"GM_SAY", "GM_YELL", "GM_WHISPER", "GM_CHANNEL", "GM_ALL", "GM_MAIL_SENT", "GM_MAIL_REC","CANCEL"};
UnitPopupMenus["GM_HEADER5"] = {"GM_FINGERPRINT","CANCEL"};

-- chat dropdown

table.insert(UnitPopupMenus["FRIEND"], 1, "GM_HEADER")
table.insert(UnitPopupMenus["FRIEND"], 2, "GM_HEADER2")
table.insert(UnitPopupMenus["FRIEND"], 3, "GM_HEADER3")
table.insert(UnitPopupMenus["FRIEND"], 4, "GM_HEADER4")
table.insert(UnitPopupMenus["FRIEND"], 5, "GM_HEADER5")
table.insert(UnitPopupMenus["FRIEND"], 6, "CANCEL")
table.remove(UnitPopupMenus["FRIEND"], 7)
table.remove(UnitPopupMenus["FRIEND"], 8)
table.remove(UnitPopupMenus["FRIEND"], 9)
table.remove(UnitPopupMenus["FRIEND"], 10)
table.remove(UnitPopupMenus["FRIEND"], 11)
table.remove(UnitPopupMenus["FRIEND"], 12)
-- player dropdown
table.insert(UnitPopupMenus["SELF"], "GM_HEADER")
table.insert(UnitPopupMenus["SELF"], "GM_FLY")
table.insert(UnitPopupMenus["SELF"], "GM_SPEED_BOOST")
table.insert(UnitPopupMenus["SELF"], "GM_SPEED_MAX")
table.insert(UnitPopupMenus["SELF"], "GM_SPEED_RESET")
table.insert(UnitPopupMenus["SELF"], "GM_RECALL")
table.insert(UnitPopupMenus["SELF"], "GM_TICKET_LIST")
-- player target dropdown
table.insert(UnitPopupMenus["PLAYER"], "GM_HEADER")
table.insert(UnitPopupMenus["PLAYER"], "GM_TARNAME")
table.insert(UnitPopupMenus["PLAYER"], "GM_PLAYERINFO")
table.insert(UnitPopupMenus["PLAYER"], "GM_PLAYERBANINFO")
table.insert(UnitPopupMenus["PLAYER"], "GM_POSSES")
table.insert(UnitPopupMenus["PLAYER"], "GM_RECALL")
table.insert(UnitPopupMenus["PLAYER"], "GM_FREEZE")
table.insert(UnitPopupMenus["PLAYER"], "GM_UNFREEZE")
table.insert(UnitPopupMenus["PLAYER"], "GM_MUTE")
table.insert(UnitPopupMenus["PLAYER"], "GM_UNMUTE")
table.insert(UnitPopupMenus["PLAYER"], "GM_KICK")
table.insert(UnitPopupMenus["PLAYER"], "GM_HEADER3")
table.insert(UnitPopupMenus["PLAYER"], "GM_SAY")
table.insert(UnitPopupMenus["PLAYER"], "GM_YELL")
table.insert(UnitPopupMenus["PLAYER"], "GM_WHISPER")
table.insert(UnitPopupMenus["PLAYER"], "GM_CHANNEL")
table.insert(UnitPopupMenus["PLAYER"], "GM_ALL")
table.insert(UnitPopupMenus["PLAYER"], "GM_HEADER4")
table.insert(UnitPopupMenus["PLAYER"], "GM_MAIL_SENT")
table.insert(UnitPopupMenus["PLAYER"], "GM_MAIL_REC")
-- party member dropdown
table.insert(UnitPopupMenus["PARTY"], "GM_HEADER")
table.insert(UnitPopupMenus["PARTY"], "GM_PLAYERINFO")
table.insert(UnitPopupMenus["PARTY"], "GM_PLAYERBANINFO")
table.insert(UnitPopupMenus["PARTY"], "GM_GO")
table.insert(UnitPopupMenus["PARTY"], "GM_DIVIDER")
table.insert(UnitPopupMenus["PARTY"], "GM_SUMMON")
table.insert(UnitPopupMenus["PARTY"], "GM_RECALL")
table.insert(UnitPopupMenus["PARTY"], "GM_MUTE")
table.insert(UnitPopupMenus["PARTY"], "GM_UNMUTE")
table.insert(UnitPopupMenus["PARTY"], "GM_KICK")
-- raid member dropdown
table.insert(UnitPopupMenus["RAID"], "GM_HEADER")
table.insert(UnitPopupMenus["RAID"], "GM_PLAYERINFO")
table.insert(UnitPopupMenus["RAID"], "GM_PLAYERBANINFO")
table.insert(UnitPopupMenus["RAID"], "GM_GO")
table.insert(UnitPopupMenus["RAID"], "GM_DIVIDER")
table.insert(UnitPopupMenus["RAID"], "GM_SUMMON")
table.insert(UnitPopupMenus["RAID"], "GM_RECALL")
table.insert(UnitPopupMenus["RAID"], "GM_MUTE")
table.insert(UnitPopupMenus["RAID"], "GM_UNMUTE")
table.insert(UnitPopupMenus["RAID"], "GM_KICK")
local oldOnClick = UnitPopup_OnClick

function UnitPopup_OnClick()
	 local dropdownFrame = getglobal(UIDROPDOWNMENU_INIT_MENU)
	 local button = this.value
	 local unit = dropdownFrame.unit
	 local name = dropdownFrame.name
	 local server = dropdownFrame.server	 
	 local finger = "txtGmPinfoFinger:GetText()"
	 for label, data in pairs(gm_server[server_default]) do
	   local commandIsFunction = data[1] -- The first value of {true, "Pick's function", "pickTestFunction()" }
	   local command = data[3]    
	   if button == label then
			 if name ~= nil and name ~= "" then
			   command = string.gsub(command, "#PLAYER", name)
			   command = string.gsub(command, CHAT_FLAG_GM, name)
			 end
			if commandIsFunction then 
				RunScript(command) -- The same as ingame /run pickTestFunction("Picktest")
			else
				SendChatMessage(command)
	   end
	end
	
	 end
	 oldOnClick()
end
