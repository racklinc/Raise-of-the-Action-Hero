--detect if you are dragonriding since dragonriding doesnt have a moving speed
HCpos1 = ""
HCpos2 = ""
if (HCisCursorSpell == false and HCMLTempToggleOverride == 0 and HCFisMLLooking == false and HCisTempToggleDown == 0) then
	for nameI = 1, 20 do
		local HCName = UnitAura("PLAYER", nameI,"PLAYER|HELPFUL")
		if (
			HCName == "Renewed Proto-Drake"
			or HCName == "Highland Drake"
			or HCName == "Cliffside Wylderdrake"
			or HCName == "Windborne Velocidrake"
		) then
			local map = C_Map.GetBestMapForUnit("player")
			local position = C_Map.GetPlayerMapPosition(map, "player")
			HCpos1 = position:GetXY()
			if HCpos1 ~= HCpos2 then
				MouselookStart()
				HCBindingsOverriddenOn()
			end
			HCpos2 = position:GetXY()
		end
	end
endottom of dragonriding detection

local RSDText = "RSDText trigger"
HCCombatFrame_SSH = _G.CreateFrame("Frame",modName .. "HCCombatFrame_SSH",UIParent,"SecureHandlerStateTemplate")
function HCCombatFrame_SSH:onHCisML(newstate)
	_G["HCCombatFrame_SSH"["RSDText"] = newstate
end
HCCombatFrame_SSH:SetAttribute("_onstate-hcisml",[[
self:CallMethod("onHCisML",newstate)
]])
RegisterStateDriver(HCCombatFrame_SSH,"HCisML",RSDText)

--hoooks that work... how to use?
local HCCombatFrame_HSF = CreateFrame("Frame")
hooksecurefunc("CameraOrSelectOrMoveStart", function()
	print(HCOverScript_LM)
	SetOverrideBinding(HCCombatFrame_HSF,false,"BUTTON1",HCOverScript_LM)
	SetOverrideBinding(HCCombatFrame_HSF,false,"BUTTON2",HCOverScript_RM)
end)
hooksecurefunc("CameraOrSelectOrMoveStop", function()
	print("lm up")
	--SetOverrideBinding(HCCombatFrame_HSF,false,"BUTTON1",nil)
	ClearOverrideBindings(HCCombatFrame_HSF)
end)
hooksecurefunc("TurnOrActionStart", function()
  print("rm down")
  end)
hooksecurefunc("TurnOrActionStop", function()
  print("rm up")
end)

local HCPCL_Frame = CreateFrame("HCPCL_Frame")
hooksecurefunc("LOADING_SCREEN_DISABLED",function()
HCGossipShow:SetScript("OnEvent",function(self, event)
--MouselookStop()
--HCBindingsOverriddenOff()
--print("loading screen disabled")
end)
HCPCL_Frame:RegisterEvent("LOADING_SCREEN_DISABLED")


if(IsControlKeyDown()) then
	print("ctrl")
elseif(IsShiftKeyDown()) then
	print("shift")
elseif(IsAltKeyDown()) then
	print("alt")
else
	print("no mod")
end
local HCCombatFrame_HSF = CreateFrame("Frame")

local HCMacro = [=[
/script AcceptQuest()
]=]
local frame = CreateFrame("Button", nil, UIParent, "SecureActionButtonTemplate");
frame:SetAllPoints()
frame:SetAttribute("type", "macro")
frame:SetAttribute("macrotext", HCMacro);
frame:EnableMouse(false)
frame:RegisterForClicks("LeftButtonUp");
frame:EnableMouse(true)


--local HCCombatFrame_HSF = CreateFrame("Frame")
--local LmPos = ""
--local HCCombat_HSF_elapsed = 0
--HCCombatFrame_HSF:HookScript("OnUpdate", function(self, elapsedHSF)
--	HCCombat_HSF_elapsed = HCCombat_HSF_elapsed + elapsedHSF
--	if (HCCombat_HSF_elapsed > 0.05) then
--		--print(LmPos)
--		if(IsMouselooking() == false) then
--			--print(LmPos)
--			SetMouselookOverrideBinding("BUTTON1", "" and nil)
--			--print("clearing")
--		else
--			SetMouselookOverrideBinding("BUTTON1",HCOverScript_LM)
--			--print("setting")
--		end
--		HCCombat_HSF_elapsed = 0
--	end
--end)
--
--hooksecurefunc("CameraOrSelectOrMoveStart", function()
--	print("clear overrides")
--	ClearOverrideBindings(HCCombatFrame_HSF)
--	LmPos = "down"
--end)
--hooksecurefunc("CameraOrSelectOrMoveStop", function()
--	print("set overrides")
--	--ClearOverrideBindings(HCCombatFrame)
--	SetOverrideBinding(HCCombatFrame_HSF,false,"BUTTON1",HCOverScript_LM)
--	--SetOverrideBinding(HCCombatFrame_HSF,false,"BUTTON2",HCOverScript_RM)
--	LmPos = "up"
--end)
----
----local HCCombatFrame = CreateFrame("Frame")
----HCCombatFrame:RegisterEvent("PLAYER_REGEN_DISABLED")
----HCCombatFrame:SetScript("OnEvent",function(self, event)
----	HCBindingsOverriddenOff()
----end)
----
----local HCOutCombatFrame = CreateFrame("Frame")
----HCOutCombatFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
----HCOutCombatFrame:SetScript("OnEvent",function(self, event)
----	HCBindingsOverriddenOn()
----end)
--
----overrides the left click and right click while mouselook is on
--function HCBindingsOverriddenOn()
--	if(HCisCombat == false) then
--		SetOverrideBinding(HCCombatFrame,false,"BUTTON1",HCOverScript_LM)
--		SetOverrideBinding(HCCombatFrame,false,"BUTTON2",HCOverScript_RM)
--	end
--end
--
----turns off overrides while the mouselook is off
--function HCBindingsOverriddenOff()
--	if(HCisCombat == false) then
--		ClearOverrideBindings(HCCombatFrame)
--	end
--end
--
--local HCOverBindingFrameLmUp = CreateFrame("Frame")
--HCOverBindingFrameLmUp:RegisterEvent("CameraOrSelectOrMoveStop")
--HCOverBindingFrameLmUp:SetScript("OnEvent",function(self, event)
--	print("LM up")
--	--SetOverrideBinding(HCCombatFrame_HSF,false,"BUTTON1",HCOverScript_LM)
--	--SetOverrideBinding(HCCombatFrame_HSF,false,"BUTTON2",HCOverScript_RM)
--end)
--
--local HCOverBindingFrameLmDown = CreateFrame("Frame")
--HCOverBindingFrameLmDown:RegisterEvent("CameraOrSelectOrMoveStart")
--HCOverBindingFrameLmDown:SetScript("OnEvent",function(self, event)
--	print("LM down")
--	--ClearOverrideBindings(HCOverBindingFrameLmUp)
--	--SetOverrideBinding(HCCombatFrame_HSF,false,"BUTTON2",HCOverScript_RM)
--end)
