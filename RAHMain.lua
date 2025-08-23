local RahTempToggleOverride = 0
local RahSpellToggle = 0
local RahTempToggleDoubleTap = 0
local RahPlayerOnTaxi = 0
local RahisCombat = false
local RahisTempToggleDown = 0
local RahisCursorSpell = false
local RahtimeRunning = 0
local RahtimeRunningStart = 0
local RahtimeRunningNow = 0
local RahTempToggleDoubleTapTime = 0
local RahTempToggleDoubleTapStart = 0
local RahTempToggleDoubleTapped = 0
local RahTempToggleDoubleTapNow = 0
local RahFisMLLooking = false
local RahisFlying = false
local RahMlInteractionTime = 0
local RahisInCine = 0

--disable any functions but toggling
function RahSmartDisableFunc()
	RahSmartEnable = false
	RahtimeRunning = 0
	RahtimeRunningStart = 0
	RahtimeRunningNow = 0
	RahTempToggleDoubleTapTime = 0
	RahTempToggleDoubleTapStart = 0
	RahTempToggleDoubleTapNow = 0
	RahTempToggleOverride = 0
	RahSpellToggle = 0
	RahTempToggleDoubleTap = 0
	RahPlayerOnTaxi = 0
	RahisCombat = false
	RahisTempToggleDown = 0
	MouselookStop()
	print("RAH smart features disabled.")
end

--enables functions smart functions
function RahSmartEnableFunc()
	RahSmartEnable = true
	print("RAH smart features enabled.")
end

--toggle on or off smart functions
function RahSmartToggle()
	if RahSmartEnable == true then
		RahSmartDisableFunc()
	else
		RahSmartEnableFunc()
	end
end

--lock or unlock mouse look
function RahMLToggle()
	if IsMouselooking() == true then
		MouselookStop()
	else
		MouselookStart()
	end
end

--when pressing down keybinding invert the current state of mouselooking
function RahMLTempToggle(Rahkeystate)
	RahFisMLLooking = IsMouselooking()
	if Rahkeystate == "down" then
		RahisTempToggleDown = 1
		if (RahFisMLLooking == true) then
			MouselookStop()
		else
				MouselookStart()
		end
	else
		RahisTempToggleDown = 0
		RahTempToggleDoubleTap = RahTempToggleDoubleTap + 1
		if RahFisMLLooking == true then
			MouselookStop()
		else
			if (RahTempToggleOverride == 0) then
				MouselookStart()
			end
		end
	end
end

function RahPrintMsg(typeAction,message)
	if (RahCFPrints == true) then
		print("RAH "..typeAction.." mouse: "..message)
	end
end

--frame for determining if mouselook should be on or off based on conditions
local Rahframe = CreateFrame("Frame")
local RahtimeElapsed = 0
local RahCylceTime = 0
local RahCylceTime2 = 0
Rahframe:HookScript("OnUpdate", function(self, elapsed)
	RahtimeElapsed = RahtimeElapsed + elapsed
	RahMlInteractionTime = RahMlInteractionTime + elapsed
	RahCylceTime = RahCylceTime + elapsed
	RahCylceTime2 = RahCylceTime2 + elapsed
	--frame & ms limiter
	if (RahtimeElapsed > 0.05) then
		RahtimeElapsed = 0
		RahFisMLLooking = IsMouselooking()
		RahisCursorSpell = SpellIsTargeting()
		RahisCombat = UnitAffectingCombat("player")
		RahisPlayerMoving = GetUnitSpeed("player")
		RahisFlying = IsFlying()

		--disables mouse look if certain frames are on screen
		--also see the RahPLayerInteraction frame for other auto unlocks
		if (RahSmartEnable == true and RahCylceTime > 0.1) then
			RahCylceTime = 0
			if (RahisCombat == false and RahisTempToggleDown == 0 and RahFisMLLooking == true
			and RahisPlayerMoving == 0 and RahisFlying == false) then
				if (RahMlInteractionEnable == true and RahMlInteractionTime > RahMlInteractionTimeDetect) then
					if (GameMenuFrame:IsVisible() == true) then
						MouselookStop()
						RahPrintMsg("unlocking", "Game Menu open")
					elseif (IsBagOpen(0)) then
						MouselookStop()
						RahPrintMsg("unlocking", "bags open")
					elseif (IsBagOpen(1)) then
						MouselookStop()
						RahPrintMsg("unlocking", "bags open")
					elseif (IsBagOpen(2)) then
						MouselookStop()
						RahPrintMsg("unlocking", "bags open")
					elseif (IsBagOpen(3)) then
						MouselookStop()
						RahPrintMsg("unlocking", "bags open")
					elseif (IsBagOpen(4)) then
						MouselookStop()
						RahPrintMsg("unlocking", "bags open")
					elseif (RahMapUnlock == true and WorldMapFrame:IsVisible() == true) then --unlock if the map is open
						MouselookStop()
						RahPrintMsg("unlocking", "Map open")
					elseif (RahYakUnlock == true and C_UnitAuras.GetPlayerAuraBySpellID(122708)) then --unlock if vendor yak mount
						MouselookStop()
						RahPrintMsg("unlocking", "yak")
					elseif (RahMammothUnlock == true and C_UnitAuras.GetPlayerAuraBySpellID(61425)) then --unlock if vendor mammoth mount
						MouselookStop()
						RahPrintMsg("unlocking", "mammoth")
					elseif (RahBearUnlock == true and C_UnitAuras.GetPlayerAuraBySpellID(457485)) then --unlock if vendor bear mount
						MouselookStop()
						RahPrintMsg("unlocking", "bear")
					elseif (RahBrutoUnlock == true and C_UnitAuras.GetPlayerAuraBySpellID(163042)) then --unlock if AH Bruto mount, you richie
						MouselookStop()
						RahPrintMsg("unlocking", "brutosaur")
					elseif (RahBrutoUnlock == true and C_UnitAuras.GetPlayerAuraBySpellID(229418)) then --unlock if AH Bruto mount, you richie
						MouselookStop()
						RahPrintMsg("unlocking", "brutosaur")
					else
						RahMlInteractionTime = 0
					end -- end of frames to look for
				end
			else
				RahMlInteractionTime = 0
			end -- end of conditions to prevent unlocking
		end -- end of cycle statement

		--turns off mouselook if the cursor is holding a spell to target a unit on the ground
		if(RahFisMLLooking == true and RahisCursorSpell == true) then
			MouselookStop()
			RahSpellToggle = 1
			RahTempToggleOverride = 1
		end
		if(RahSpellToggle == 1 and RahisCursorSpell == false) then
			MouselookStart()
			RahSpellToggle = 0
			RahTempToggleOverride = 0
		end

		--allows the use of the temp toggle to toggle mouselook by double tapping
		if (RahDoubleTapDefault == true and RahTempToggleDoubleTap > 0) then
			if(RahTempToggleDoubleTap == 2 and RahTempToggleDoubleTapped == 0) then
				RahMLToggle()
				RahTempToggleDoubleTapped = 1
			else
				RahTempToggleDoubleTapNow = GetTime()
				if(RahTempToggleDoubleTapStart == 0) then
					RahTempToggleDoubleTapStart = GetTime()
				else
					RahTempToggleDoubleTapTime = RahTempToggleDoubleTapNow - RahTempToggleDoubleTapStart
				end
				if(RahTempToggleDoubleTapTime > 1) then
					RahTempToggleDoubleTap = 0
					RahTempToggleDoubleTapTime = 0
					RahTempToggleDoubleTapStart = 0
					RahTempToggleDoubleTapNow = 0
					RahTempToggleDoubleTapped = 0
				end
			end
		end

		-- disable mouselook during cutscenes so you can exit one early
		if(InCinematic() == true or IsInCinematicScene() == true) then
			RahtimeRunning = 0
			RahtimeRunningStart = 0
			RahtimeRunningNow = 0
			RahTempToggleDoubleTapTime = 0
			RahTempToggleDoubleTapStart = 0
			RahTempToggleDoubleTapNow = 0
			RahSpellToggle = 0
			RahTempToggleDoubleTap = 0
			RahPlayerOnTaxi = 0
			RahisCombat = false
			RahisTempToggleDown = 0
			if (RahisInCine == 0) then
				RahPrintMsg("unlocking", "Cinematic")
			end
			RahisInCine = 1
			RahTempToggleOverride = 1
			--don't change this to toggle again. the game is lying about the mouselook state in cinematics
			MouselookStop()
		elseif (RahisInCine == 1 and (InCinematic() == false and IsInCinematicScene() == false)) then
			RahisInCine = 0
			RahTempToggleOverride = 0
		end

		--RAHDisable() disables the body of code, making the addon just toggle on the temp toggle or toggle keybinding
		if RahSmartEnable == true then
			--goes back to mouselook after a temp override has been done
			if(RahTempToggleOverride == 0 and (RahisTempToggleDown == 0 and RahFisMLLooking == false)
				and RahSpellToggle == 0 and RahisCursorSpell == false)
				and (InCinematic() == false or IsInCinematicScene() == false) then
					if(RahCombatDefaultCBVal == true and RahisCombat == true and RahMLStopMoving == false) then
						MouselookStart()
					end
			end
			--if you run for more than the defined value in the settings pane it will lock mouselook
			if(RahMLMovingDefault == true and (RahisTempToggleDown == 0 and RahFisMLLooking == false)
			and RahTempToggleOverride == 0 and RahisCursorSpell == false) then
				if (RahisPlayerMoving > 0) then
					RahtimeRunningNow = GetTime()
					if(RahtimeRunning == 0) then
						RahtimeRunningStart = GetTime()
						RahtimeRunning = 0.01
					else
						RahtimeRunning = RahtimeRunningNow - RahtimeRunningStart
					end
				else
					RahtimeRunning = 0
				end
				if(RahtimeRunning > RahMLMovingTimeDetect) then
					MouselookStart()
					RahtimeRunning = 0
					RahtimeRunningStart = 0
					RahtimeRunningNow = 0
				end
			end --bottom of mouselock if running detection
			if (RahMLStopMoving == true and RahisTempToggleDown == 0 and RahFisMLLooking == true and RahisPlayerMoving == 0 and RahisFlying == false) then
				MouselookStop()
			end

			--disable smart features if the player is on a taxi
			if(RahFisMLLooking == false and UnitOnTaxi("player") == true) then
				RahTempToggleOverride = 1
				RahPlayerOnTaxi = 1
				RahPrintMsg("unlocking", "taxi")
			elseif (RahPlayerOnTaxi == 1 and UnitOnTaxi("player") == false) then
				RahTempToggleOverride = 0
				RahPlayerOnTaxi = 0
			end

			--detect if you are flying and turn on mouselooking
			if (RahisFlying == true and RahTempToggleOverride == 0 and RahFisMLLooking == false and RahisTempToggleDown == 0) then
				MouselookStart()
				RahPrintMsg("locking", "flying")
			end
		end --inside disable
	end --inside onUpdate
end) -- bottom of main frame

--A second frame for detecting automation on frames that seem to cause issues
local RahTrickyFrames = CreateFrame("Frame")
local RahTCFTimeElapsed = 0
RahTrickyFrames:HookScript("OnUpdate", function(self, elapsed)
	RahTCFTimeElapsed = RahTCFTimeElapsed + elapsed
	if (RahTCFTimeElapsed > 2) then
		--some basic checks
		if (UnitAffectingCombat("player") == false and IsMouselooking() == true and GetUnitSpeed("player") == 0 and IsFlying() == false) then

			--unlock when Macro frame is open
			if MacroFrame then
				if (MacroFrame:IsVisible() == true) then
					RahMLToggle()
					RahPrintMsg("unlocking", "editing macro")
				end
			end
			--unlock when settings frame is open
			if SettingsPanel then
				if (SettingsPanel:IsVisible() == true) then
					RahMLToggle()
					RahPrintMsg("unlocking", "Settings Panel is open.")
				end
			end
			--unlock when Weak Auras Options frame is open
			if WeakAurasOptions then
				if (WeakAurasOptions:IsVisible() == true) then
					RahMLToggle()
					RahPrintMsg("unlocking", "Weak Auras Options is open.")
				end
			end
			--unlock when DBM_GUI_OptionsFrame frame is open
			if DBM_GUI_OptionsFrame then
				if (DBM_GUI_OptionsFrame:IsVisible() == true) then
					RahMLToggle()
					RahPrintMsg("unlocking", "DBM Options is open.")
				end
			end
			--unlock when character sheet is open
			if PaperDollFrame then
				if (PaperDollFrame:IsVisible() == true) then
					MouselookStop()
					RahPrintMsg("unlocking", "charater screen open")
				end
			end

			if LFGDungeonReadyDialogEnterDungeonButton then
				if (LFGDungeonReadyDialogEnterDungeonButton:IsVisible() == true) then
					RahSBBase("cf")
				end
			end

		end--inside basic checks
		RahTCFtimeElapsed = 0
	end --inside onUpdate
end) -- bottom of main frame

--unlocks the mouse based on player interactions
--also see RahCylceTime section for additional timed unlocks
local RahPLayerInteraction = CreateFrame("Frame")
RahPLayerInteraction:RegisterEvent("QUEST_GREETING")
RahPLayerInteraction:RegisterEvent("CINEMATIC_START")
RahPLayerInteraction:RegisterEvent("QUEST_FINISHED")
RahPLayerInteraction:RegisterEvent("MAIL_SHOW")
RahPLayerInteraction:RegisterEvent("QUEST_PROGRESS")
RahPLayerInteraction:RegisterEvent("QUEST_DETAIL")
RahPLayerInteraction:RegisterEvent("QUEST_COMPLETE")
RahPLayerInteraction:RegisterEvent("BANKFRAME_OPENED")
RahPLayerInteraction:RegisterEvent("AUCTION_HOUSE_SHOW")
RahPLayerInteraction:RegisterEvent("GUILDBANKFRAME_OPENED")
RahPLayerInteraction:RegisterEvent("BANKFRAME_OPENED")
RahPLayerInteraction:RegisterEvent("TRAINER_SHOW")
RahPLayerInteraction:RegisterEvent("PLAYER_INTERACTION_MANAGER_FRAME_SHOW")
RahPLayerInteraction:SetScript("OnEvent",function(self, event,...)

	local type = ...
	-- events page https://warcraft.wiki.gg/wiki/PLAYER_INTERACTION_MANAGER_FRAME_HIDE
	local RahPimTable = {"Trade Partner","Item","Gossip","Quest Giver","Merchant","Taxi","Trainer","Banker"
	,"Allied Race Details Giver","Guild Banker","Registrar","Vendor","Petition Vendor","Tabard Vendor","Talent Master"
	,"Specialization Master","Mail Info","Spirit Healer	","Area Spirit Healer","Binder","Auctioneer","Stable Master"
	,"Battle Master","Transmogrifier","LFG Dungeon","Void Storage Banker","Black Market Auctioneer","Adventure Map"
	,"World Map","Garrison Architect","Garrison Tradeskill","Garrison Mission","Shipment Crafter"
	,"Garrison Recruitment","Garrison Talent","Trophy","Player Choice","Artifact Forge","Obliterum Forge","Scrapping Machine"
	,"Contribution Collector","Azerite Respec","Island Queue","Item Interaction","Chromie Time","Covenant Preview"
	,"Anima Diversion","Legendary Crafting","Weekly Rewards","Soulbind","Covenant Sanctum","New Player Guide","Item Upgrade"
	,"Adventure Journal","Renown","Azerite Forge","Perks Program Vendor","Professions Crafting Order","Professions"
	,"Professions Customer Order","Trait System","Barbers Choice","Jailers Tower Buffs","Major Faction Renown","Forge Master"
	,"Character Banker","Account Banker","Profession Respec","PlaceholderType71","PlaceholderType72","PlaceholderType73","PlaceholderType74"
	,"PlaceholderType75","PlaceholderType76","Guild Rename"}

	local RahCiT = {["AUCTION_HOUSE_SHOW"] = "auction house", ["BANKFRAME_OPENED"] = "bank opened"
		,["MAIL_SHOW"] = "mailbox", ["QUEST_GREETING"] = "quest npc", ["QUEST_FINISHED"] = "quest npc"
		,["QUEST_DETAIL"] = "quest npc", ["QUEST_COMPLETE"] = "quest npc",["QUEST_PROGRESS"] = "quest progress"}
	-- only unlocks if the smart features is checked
	if (RahMlInteractionEnable == true and RahSmartEnable == true and IsMouselooking() == true) then
		MouselookStop()
		if (event == "PLAYER_INTERACTION_MANAGER_FRAME_SHOW") then
			RahPrintMsg("unlocking", RahPimTable[type])
		else
			RahPrintMsg("unlocking",RahCiT[event])
		end
	end
	if (RahChatMessages == true) then
		RahSBBase("cf")
	end
end)
