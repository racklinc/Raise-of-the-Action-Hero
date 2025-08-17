--Bindings.xml labels
BINDING_NAME_RAHMLTOGGLE = "Toggle mouse look."
BINDING_NAME_RAHMLTEMPTOGGLE = "Temp toggle of mouse look."
BINDING_NAME_RAHSmartEnableTOGGLE = "Enable or Disable smart features."
BINDING_NAME_SMARTBINDING1 = "Smart Button 1"
BINDING_NAME_SMARTBINDING2 = "Smart Button 2"
BINDING_NAME_SMARTBINDING3 = "Smart Button 3"
BINDING_NAME_SMARTBINDING4 = "Smart Button 4"

--options frame
local RahSvFrame = CreateFrame("Frame")
RahSvFrame:RegisterEvent("ADDON_LOADED")
RahSvFrame:SetScript("OnEvent",function(self, event)

	if(RahSmartEnable == nil) then
		RahSmartEnable = false
		RahSmartEnableCB:SetChecked(false)
	elseif (RahSmartEnable == true) then
		RahSmartEnableCB:SetChecked(true)
	elseif (RahSmartEnable == false) then
		RahSmartEnableCB:SetChecked(false)
	end

	if(RahCFPrints == nil) then
		RahCFPrints = true
		RahCFPrintsCB:SetChecked(true)
	elseif (RahCFPrints == true) then
		RahCFPrintsCB:SetChecked(true)
	elseif (RahCFPrints == false) then
		RahCFPrintsCB:SetChecked(false)
	end

	if (RahCombatDefaultCBVal == nil) then
		RahCombatDefaultCBVal = false
		RahCombatDefaultCB:SetChecked(false)
	elseif(RahCombatDefaultCBVal == true) then
		RahCombatDefaultCBVal = true
		RahCombatDefaultCB:SetChecked(true)
	elseif(RahCombatDefaultCBVal == false) then
		RahCombatDefaultCBVal = false
		RahCombatDefaultCB:SetChecked(false)
	end

	if (RahDoubleTapDefault == nil) then
		RahDoubleTapDefault = true
		RahDoubleTapDefaultCB:SetChecked(true)
	elseif(RahDoubleTapDefault == true) then
		RahDoubleTapDefault = true
		RahDoubleTapDefaultCB:SetChecked(true)
	elseif(RahDoubleTapDefault == false) then
		RahDoubleTapDefault = false
		RahDoubleTapDefaultCB:SetChecked(false)
	end

	if (RahMLMovingDefault == nil) then
		RahMLMovingDefault = true
		RahMLMovingDefaultCB:SetChecked(true)
	elseif(RahMLMovingDefault == true) then
		RahMLMovingDefault = true
		RahMLMovingDefaultCB:SetChecked(true)
	elseif(RahMLMovingDefault == false) then
		RahMLMovingDefault = false
		RahMLMovingDefaultCB:SetChecked(false)
	else
		RahMLMovingDefault = false
		RahMLMovingDefaultCB:SetChecked(false)
	end
	if (RahMLMovingTimeDetect == nil) then
		RahMLMovingTimeDetect = 0.25
	end

	if(RahMLStopMoving == nil) then
		RahMLStopMoving = false
		RahMLStopMovingCB:SetChecked(false)
	elseif (RahMLStopMoving == true) then
		RahMLStopMovingCB:SetChecked(true)
	elseif (RahMLStopMoving == false) then
		RahMLStopMovingCB:SetChecked(false)
	end

	if (RahMlInteractionEnable == nil) then
		RahMlInteractionEnable = false
		RahMlInteractionDefaultCB:SetChecked(false)
	elseif(RahMlInteractionEnable == true) then
		RahMlInteractionEnable = true
		RahMlInteractionDefaultCB:SetChecked(true)
	elseif(RahMlInteractionEnable == false) then
		RahMlInteractionEnable = false
		RahMlInteractionDefaultCB:SetChecked(false)
	else
		RahMlInteractionEnable = false
		RahMlInteractionDefaultCB:SetChecked(false)
	end
	if (RahMlInteractionTimeDetect == nil) then
		RahMlInteractionTimeDetect = 0.25
		RahMlInteractionDefaultStr:SetText(RahMlInteractionTimeDetect)
	end

	if (RahAllUnlock == nil) then
		RahAllUnlock = true
		RahAllUnlockCB:SetChecked(true)
	elseif(RahAllUnlock == true) then
		RahAllUnlockCB:SetChecked(true)
	elseif(RahAllUnlock == false) then
		RahAllUnlockCB:SetChecked(false)
	end
	if (RahMapUnlock == nil) then
		RahMapUnlock = true
		RahMapUnlockCB:SetChecked(true)
	elseif(RahMapUnlock == true) then
		RahMapUnlockCB:SetChecked(true)
	elseif(RahMapUnlock == false) then
		RahMapUnlockCB:SetChecked(false)
	end
	if (RahYakUnlock == nil) then
		RahYakUnlock = true
		RahYakUnlockCB:SetChecked(true)
	elseif(RahYakUnlock == true) then
		RahYakUnlockCB:SetChecked(true)
	elseif(RahYakUnlock == false) then
		RahYakUnlockCB:SetChecked(false)
	end
	if (RahBearUnlock == nil) then
		RahBearUnlock = true
		RahBearUnlockCB:SetChecked(true)
	elseif(RahBearUnlock == true) then
		RahBearUnlockCB:SetChecked(true)
	elseif(RahBearUnlock == false) then
		RahBearUnlockCB:SetChecked(false)
	end
	if (RahMammothUnlock == nil) then
		RahMammothUnlock = true
		RahMammothUnlockCB:SetChecked(true)
	elseif(RahMammothUnlock == true) then
		RahMammothUnlockCB:SetChecked(true)
	elseif(RahMammothUnlock == false) then
		RahMammothUnlockCB:SetChecked(false)
	end
	if (RahBrutoUnlock == nil) then
		RahBrutoUnlock = true
		RahBrutoUnlockCB:SetChecked(true)
	elseif(RahBrutoUnlock == true) then
		RahBrutoUnlockCB:SetChecked(true)
	elseif(RahBrutoUnlock == false) then
		RahBrutoUnlockCB:SetChecked(false)
	end

	if (RahOverrideEnable_LM_CB == nil) then
		RahOverrideEnable_LM_CB = false
		RahOverrideEnable_LM_CBFrame:SetChecked(false)
	end
	if(RahOverrideEnable_LM_CB == true) then
		RahOverrideEnable_LM_CBFrame:SetChecked(true)
	else
		RahOverrideEnable_LM_CBFrame:SetChecked(false)
	end
	if (RahOverrideType_LM_DD_Var == nil) then
		RahOverrideType_LM_DD_Var = "none"
	end
	if (RahOverWoWFunc_LM_DD_Var == nil) then
		RahOverWoWFunc_LM_DD_Var = "TOGGLEAUTORUN"
	end
	if(RahOverrideType_LM_DD_Var == "WoW function") then
		RahOverWoWFunc_LM_DD_Frame:Show()
	else
		RahOverWoWFunc_LM_DD_Frame:Hide()
	end
	if (RahLmOverMacro_Val == nil) then
		RahLmOverMacro_Val = ""
	end
	if(RahOverrideType_LM_DD_Var == "WoW function") then
		RahOverWoWFunc_LM_DD_Frame:Show()
		RahLmOverMacro_Frame:Hide()
	elseif(RahOverrideType_LM_DD_Var == "MACRO") then
		RahOverWoWFunc_LM_DD_Frame:Hide()
		RahLmOverMacro_Frame:Show()
	else
		RahOverWoWFunc_LM_DD_Frame:Hide()
		RahLmOverMacro_Frame:Hide()
	end
	UIDropDownMenu_SetText(RahOverrideType_LM_DD_Frame,"Left Mouse Override type: " .. RahOverrideType_LM_DD_Var)
	UIDropDownMenu_SetText(RahOverWoWFunc_LM_DD_Frame,"Override action: " .. RahOverWoWFunc_LM_DD_Var)
	if (RahOverrideEnable_RM_CB == nil) then
		RahOverrideEnable_RM_CB = false
	end
	if(RahOverrideEnable_RM_CB == true) then
		RahOverrideEnable_RM_CBFrame:SetChecked(true)
	else
		RahOverrideEnable_RM_CBFrame:SetChecked(false)
	end
	if (RahOverrideType_RM_DD_Var == nil) then
		RahOverrideType_RM_DD_Var = "none"
	end
	if (RahOverWoWFunc_RM_DD_Var == nil) then
		RahOverWoWFunc_RM_DD_Var = "TOGGLEAUTORUN"
	end
	if(RahOverrideType_RM_DD_Var == "WoW function") then
		RahOverWoWFunc_RM_DD_Frame:Show()
	else
		RahOverWoWFunc_RM_DD_Frame:Hide()
	end
	if (RahRmOverMacro_Val == nil) then
		RahRmOverMacro_Val = ""
	end
	if(RahOverrideType_RM_DD_Var == "WoW function") then
		RahOverWoWFunc_RM_DD_Frame:Show()
		RahRmOverMacro_Frame:Hide()
	elseif(RahOverrideType_RM_DD_Var == "MACRO") then
		RahOverWoWFunc_RM_DD_Frame:Hide()
		RahRmOverMacro_Frame:Show()
	else
		RahOverWoWFunc_RM_DD_Frame:Hide()
		RahRmOverMacro_Frame:Hide()
	end
	UIDropDownMenu_SetText(RahOverrideType_RM_DD_Frame,"Right Mouse Override type: " .. RahOverrideType_RM_DD_Var)
	UIDropDownMenu_SetText(RahOverWoWFunc_RM_DD_Frame,"Override action: " .. RahOverWoWFunc_RM_DD_Var)
	setRahOverScript_LM()
	setRahOverScript_RM()
	if(RahMLStopMoving == true) then
		RahCombatDefaultCB:Disable()
	elseif(RahMLStopMoving == false) then
		RahCombatDefaultCB:Enable()
	end

	if (RahChatMessages == nil) then
		RahChatMessages = true
	end
	if (RahChatMessages == true) then
		RahChatMessagesCB:SetChecked(true)
	else
		RahChatMessagesCB:SetChecked(false)
	end

end)

function RahSetRow(RahReqPos)
	return ((RahReqPos*-20) -10)
end

--widgets in this section are meant to control smart features of mouselook
local category, layout
RahPanel = CreateFrame("Frame", "OptionsPanel")
OptionsPanel.name = "Raise of the Action Hero"
RahPanel.name = "Raise of the Action Hero"
category, layout = Settings.RegisterCanvasLayoutCategory(RahPanel, RahPanel.name, RahPanel.name);
category.ID = RahPanel.name
Settings.RegisterAddOnCategory(category);
local title = RahPanel:CreateFontString(nil,"ARTWORK","GameFontNormalLarge")
title:SetPoint("TOPLEFT",10,-10)
title:SetText("RAH: Mouselook Settings")

--just some helpful text to point to setting RAH's Keybindings
local RahKeyBindingReference = RahPanel:CreateFontString("RahKeyBindingReferenceText", "OVERLAY", "GameFontNormal");
RahKeyBindingReference:SetPoint("TOPRIGHT",-10,-10)
RahKeyBindingReference:SetText("Check keybindings menu for additional settings.")

--mouselook can be statically turn off and on, this section allows double tapping the mouselook temp toggle to turn off an on toggling
RahDoubleTapDefaultCB = CreateFrame("CheckButton", "RahDoubleTapDefault_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahDoubleTapDefaultCB:SetPoint("TOPLEFT", 10, RahSetRow(1))
RahDoubleTapDefault_GlobalNameText:SetText("Mouselook toggle with double tap of temp toggle.")
RahDoubleTapDefaultCB.tooltip = "Double tap the temp toggle keybinding to toggle mouselook."
RahDoubleTapDefaultCB:SetScript("OnClick", function()
	if(RahDoubleTapDefault == true) then
		RahDoubleTapDefault = false
	elseif(RahDoubleTapDefault == false) then
		RahDoubleTapDefault = true
	end
end)
--this section sets using or not using smart features at loading of the addon, the smart toggle keybinding can override this for a game session
RahSmartEnableCB = CreateFrame("CheckButton", "RahSmartEnable_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahSmartEnableCB:SetPoint("TOPLEFT",  10, RahSetRow(2))
RahSmartEnable_GlobalNameText:SetText("Smart features default.")
RahSmartEnableCB.tooltip = "Enable or disable smart features at load. Those will be ignored if smart features are off."
RahSmartEnableCB:SetScript("OnClick", function()
	if(RahSmartEnable == true) then
		RahSmartEnable = false
		RahSmartDisableFunc()
	else
		RahSmartEnable = true
		RahSmartEnableFunc()
	end
end)
--mouselook can be toggled on automatically when entering combat with this section
RahCombatDefaultCB = CreateFrame("CheckButton", "RahCombatDefault_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahCombatDefaultCB:SetPoint("TOPLEFT", 50, RahSetRow(3))
RahCombatDefault_GlobalNameText:SetText("Mouselook combat default.")
RahCombatDefaultCB.tooltip = "Enable or disable mouselook when in combat.\n\nThis setting is ignored by the stop mouselook when stopping movement setting."
RahCombatDefaultCB:SetScript("OnClick", function()
	if(RahCombatDefaultCBVal == true) then
		RahCombatDefaultCBVal = false
	elseif(RahCombatDefaultCBVal == false) then
		RahCombatDefaultCBVal = true
	end
end)
--mouselook can be toggled on automatically when moving for a period of time. the period of time is set in the next section
RahMLMovingDefaultCB = CreateFrame("CheckButton", "RahMLMovingDefault_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahMLMovingDefaultCB:SetPoint("TOPLEFT", 50, RahSetRow(4))
RahMLMovingDefault_GlobalNameText:SetFormattedText("Mouselook by moving.")
RahMLMovingDefaultCB.tooltip = "Start mouselook by moving for a period of time. Put a delay time in seconds then press enter to save it. (ie: 0, 0.25, 1, 2)"
RahMLMovingDefaultCB:SetScript("OnClick", function()
	if(RahMLMovingDefault == true) then
		RahMLMovingDefault = false
	elseif(RahMLMovingDefault == false) then
		RahMLMovingDefault = true
	end
end)
--when the previous section is checked in the UI RahPanel, use this box to set the time it takes to run before automatically enabling mouselook
RahMLMovingDefaultStr = CreateFrame("EditBox", "RahMLMovingDefaultStr", RahPanel,"InputBoxTemplate")
RahMLMovingDefaultStr:SetSize(100, 20)
RahMLMovingDefaultStr:SetPoint("TOPLEFT", 250, RahSetRow(4))
RahMLMovingDefaultStr:SetFontObject("ChatFontNormal")
RahMLMovingDefaultStr:SetMaxLetters(4)
RahMLMovingDefaultStr:SetAutoFocus(false)
RahMLMovingDefaultStr:SetNumeric()
RahMLMovingDefaultStr:SetScript("OnEnterPressed", function()
	RahMLMovingTimeDetect = RahMLMovingDefaultStr:GetNumber()
	print("Mouselook will start after running " ..RahMLMovingTimeDetect.." seconds." )
end)
RahMLMovingDefaultStr:SetScript("OnShow", function()
		RahMLMovingDefaultStr:SetText(RahMLMovingTimeDetect)
end)

RahMLStopMovingCB = CreateFrame("CheckButton", "RahMLStopMoving_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahMLStopMovingCB:SetPoint("TOPLEFT", 75, RahSetRow(5))
RahMLStopMoving_GlobalNameText:SetFormattedText("Stop mouselook when stopping movement.")
RahMLStopMovingCB.tooltip = "Unlock mouselook when stopping moving.\n\n This along with mouselook by moving settings, makes all movement like \"Move and Steer\".\n\nThis causes the mouselook combat setting to be ignored."
RahMLStopMovingCB:SetScript("OnClick", function()
	if(RahMLStopMoving == true) then
		RahMLStopMoving = false
		RahCombatDefaultCB:Enable()
	elseif(RahMLStopMoving == false) then
		RahMLStopMoving = true
		RahCombatDefaultCB:Disable()
	end
end)

RahMlInteractionDefaultCB = CreateFrame("CheckButton", "RahMlInteraction_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahMlInteractionDefaultCB:SetPoint("TOPLEFT", 50, RahSetRow(6))
RahMlInteraction_GlobalNameText:SetFormattedText("Unlock mouselook by interacting.")
RahMlInteractionDefaultCB.tooltip = "Unlock mouselook after a period of time for certain interactions. (ie: 0, 0.25, 1, 2)"
RahMlInteractionDefaultCB:SetScript("OnClick", function()
	if(RahMlInteractionEnable == true) then
		RahMlInteractionDefault = 0
		RahMlInteractionEnable = false
	elseif(RahMlInteractionEnable == false) then
		RahMlInteractionMovingDefault = 1
		RahMlInteractionEnable = true
	end
end)

RahMlInteractionDefaultStr = CreateFrame("EditBox", "RahMlInteractionDefaultStr", RahPanel,"InputBoxTemplate")
RahMlInteractionDefaultStr:SetSize(100, 20)
RahMlInteractionDefaultStr:SetPoint("TOPLEFT", 250, RahSetRow(6))
RahMlInteractionDefaultStr:SetFontObject("ChatFontNormal")
RahMlInteractionDefaultStr:SetMaxLetters(4)
RahMlInteractionDefaultStr:SetAutoFocus(false)
RahMlInteractionDefaultStr:SetNumeric()
RahMlInteractionDefaultStr:SetScript("OnEnterPressed", function()
	RahMlInteractionTimeDetect = RahMlInteractionDefaultStr:GetNumber()
	print("Mouselook will unlock when interacting npcs or some frames after " ..RahMlInteractionTimeDetect.." seconds." )
end)
RahMlInteractionDefaultStr:SetScript("OnShow", function()
		RahMlInteractionDefaultStr:SetText(RahMlInteractionTimeDetect)
end)


RahAllUnlockCB = CreateFrame("CheckButton", "RahAllUnlock_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahAllUnlockCB:SetPoint("TOPLEFT", 395, RahSetRow(6))
RahAllUnlock_GlobalNameText:SetText("Check/Uncheck all")
RahAllUnlockCB.tooltip = "Check/Uncheck all interaction checkboxes below."
RahAllUnlockCB:SetScript("OnClick", function()
	if(RahAllUnlock == true) then
		RahAllUnlock = false
		RahMapUnlock = false
		RahYakUnlock = false
		RahBearUnlock = false
		RahMammothUnlock = false
		RahBrutoUnlock = false
		RahMapUnlockCB:SetChecked(false)
		RahYakUnlockCB:SetChecked(false)
		RahBearUnlockCB:SetChecked(false)
		RahMammothUnlockCB:SetChecked(false)
		RahBrutoUnlockCB:SetChecked(false)
	elseif(RahAllUnlock == false) then
		RahAllUnlock = true
		RahMapUnlock = true
		RahYakUnlock = true
		RahBearUnlock = true
		RahMammothUnlock = true
		RahBrutoUnlock = true
		RahMapUnlockCB:SetChecked(true)
		RahYakUnlockCB:SetChecked(true)
		RahBearUnlockCB:SetChecked(true)
		RahMammothUnlockCB:SetChecked(true)
		RahBrutoUnlockCB:SetChecked(true)
	end
end)
RahMapUnlockCB = CreateFrame("CheckButton", "RahMapUnlock_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahMapUnlockCB:SetPoint("TOPLEFT", 75, RahSetRow(7))
RahMapUnlock_GlobalNameText:SetText("Map")
RahMapUnlockCB.tooltip = "Unlock mouselook when map is open and not moving."
RahMapUnlockCB:SetScript("OnClick", function()
	if(RahMapUnlock == true) then
		RahMapUnlock = false
	elseif(RahMapUnlock == false) then
		RahMapUnlock = true
	end
end)
RahYakUnlockCB = CreateFrame("CheckButton", "RahYakUnlock_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahYakUnlockCB:SetPoint("TOPLEFT", 235, RahSetRow(7))
RahYakUnlock_GlobalNameText:SetText("Yak")
RahYakUnlockCB.tooltip = "Unlock mouselook when vendor yak is mounted and not moving."
RahYakUnlockCB:SetScript("OnClick", function()
	if(RahYakUnlock == true) then
		RahYakUnlock = false
	elseif(RahYakUnlock == false) then
		RahYakUnlock = true
	end
end)
RahBearUnlockCB = CreateFrame("CheckButton", "RahBearUnlock_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahBearUnlockCB:SetPoint("TOPLEFT", 395, RahSetRow(7))
RahBearUnlock_GlobalNameText:SetText("Bear")
RahBearUnlockCB.tooltip = "Unlock mouselook when vendor bear is mounted and not moving."
RahBearUnlockCB:SetScript("OnClick", function()
	if(RahBearUnlock == true) then
		RahBearUnlock = false
	elseif(RahBearUnlock == false) then
		RahBearUnlock = true
	end
end)
RahMammothUnlockCB = CreateFrame("CheckButton", "RahMammothUnlock_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahMammothUnlockCB:SetPoint("TOPLEFT", 555, RahSetRow(7))
RahMammothUnlock_GlobalNameText:SetText("Mammoth")
RahMammothUnlockCB.tooltip = "Unlock mouselook when vendor mammoth is mounted and not moving."
RahMammothUnlockCB:SetScript("OnClick", function()
	if(RahMammothUnlock == true) then
		RahMammothUnlock = false
	elseif(RahMammothUnlock == false) then
		RahMammothUnlock = true
	end
end)
RahBrutoUnlockCB = CreateFrame("CheckButton", "RahBrutoUnlock_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahBrutoUnlockCB:SetPoint("TOPLEFT", 75, RahSetRow(8))
RahBrutoUnlock_GlobalNameText:SetText("Brutosaur")
RahBrutoUnlockCB.tooltip = "Unlock mouselook when a brutosaur is mounted and not moving."
RahBrutoUnlockCB:SetScript("OnClick", function()
	if(RahBrutoUnlock == true) then
		RahBrutoUnlock = false
	elseif(RahBrutoUnlock == false) then
		RahBrutoUnlock = true
	end
end)

--the next several sections control overriding the left mouse button when mouselook is engaged.
--a checkbox used to enable or disable left mouse button (LMB) override
RahOverrideEnable_LM_CBFrame = CreateFrame("CheckButton", "RahOverrideEnable_LM_CBFrame_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahOverrideEnable_LM_CBFrame:SetPoint("TOPLEFT", 10, RahSetRow(9))
RahOverrideEnable_LM_CBFrame_GlobalNameText:SetFormattedText("Left mouse override.")
RahOverrideEnable_LM_CBFrame.tooltip = "Set a left mouse button override while mouselooking."
RahOverrideEnable_LM_CBFrame:SetScript("OnClick", function()
	if(RahOverrideEnable_LM_CB == true) then
		RahOverrideEnable_LM_CB = false
	elseif(RahOverrideEnable_LM_CB == false) then
		RahOverrideEnable_LM_CB = true
	end
end)
--primary drop down used to set between LMB override type
RahOverrideType_LM_DD_Frame = CreateFrame("Frame",RahOverrideType_LM_DD,RahPanel,"UIDropDownMenuTemplate")
RahOverrideType_LM_DD_Frame:SetPoint("TOPLEFT",80,RahSetRow(10))
UIDropDownMenu_SetWidth(RahOverrideType_LM_DD_Frame,200)
UIDropDownMenu_Initialize(RahOverrideType_LM_DD_Frame,function (self,menuList)
	RahOTLMDDinfo = UIDropDownMenu_CreateInfo()
		RahOTLMDDinfo.text = "Make a choice from the selections below."
		UIDropDownMenu_AddButton(RahOTLMDDinfo)
	RahOTLMDDinfo.text = "none"
		RahOTLMDDinfo.func = RahOverLM_DDFunc_none
		UIDropDownMenu_AddButton(RahOTLMDDinfo)
	RahOTLMDDinfo.text = "WoW function"
		RahOTLMDDinfo.func = RahOverLM_DDFunc_WoWFunc
		UIDropDownMenu_AddButton(RahOTLMDDinfo)
	RahOTLMDDinfo.text = "MACRO"
		RahOTLMDDinfo.func = RahOverLM_DDFunc_MACRO
		UIDropDownMenu_AddButton(RahOTLMDDinfo)
end)
function RahOverLM_DDFunc_none()
	RahOverrideType_LM_DD_Var = "none"
	UIDropDownMenu_SetText(RahOverrideType_LM_DD_Frame,"Left Mouse Override type: " .. RahOverrideType_LM_DD_Var)
	RahOverWoWFunc_LM_DD_Frame:Hide()
	RahLmOverMacro_Frame:Hide()
	setRahOverScript_LM()
end
function RahOverLM_DDFunc_WoWFunc()
	RahOverrideType_LM_DD_Var = "WoW function"
	UIDropDownMenu_SetText(RahOverrideType_LM_DD_Frame,"Left Mouse Override type: " .. RahOverrideType_LM_DD_Var)
	RahOverWoWFunc_LM_DD_Frame:Show()
	RahLmOverMacro_Frame:Hide()
	setRahOverScript_LM()
end
function RahOverLM_DDFunc_MACRO()
	RahOverrideType_LM_DD_Var = "MACRO"
	UIDropDownMenu_SetText(RahOverrideType_LM_DD_Frame,"Left Mouse Override type: " .. RahOverrideType_LM_DD_Var)
	RahOverWoWFunc_LM_DD_Frame:Hide()
	RahLmOverMacro_Frame:Show()
	setRahOverScript_LM()
end
--if LMB override is set to function, this drop down is show allowing a choice of predefined functions.. more to come in the future
RahOverWoWFunc_LM_DD_Frame = CreateFrame("Frame",RahOverWoWFunc_LM_DD,RahPanel,"UIDropDownMenuTemplate")
RahOverWoWFunc_LM_DD_Frame:SetPoint("TOPLEFT",80,RahSetRow(11))
UIDropDownMenu_SetWidth(RahOverWoWFunc_LM_DD_Frame,200)
UIDropDownMenu_Initialize(RahOverWoWFunc_LM_DD_Frame,function (self,menuList)
	RahLmOWFinfo = UIDropDownMenu_CreateInfo()
		RahLmOWFinfo.text = "Make a choice of the selections below."
		UIDropDownMenu_AddButton(RahLmOWFinfo)
	RahLmOWFinfo.text = "TOGGLEAUTORUN"
		RahLmOWFinfo.func = RahLmOWF_DDFunc_TAR
		UIDropDownMenu_AddButton(RahLmOWFinfo)
	RahLmOWFinfo.text = "SITORSTAND"
		RahLmOWFinfo.func = RahLmOWF_DDFunc_SoS
		UIDropDownMenu_AddButton(RahLmOWFinfo)
	RahLmOWFinfo.text = "TARGETLASTTARGET"
		RahLmOWFinfo.func = RahLmOWF_DDFunc_TLT
		UIDropDownMenu_AddButton(RahLmOWFinfo)
	RahLmOWFinfo.text = "STARTATTACK"
		RahLmOWFinfo.func = RahLmOWF_DDFunc_SA
		UIDropDownMenu_AddButton(RahLmOWFinfo)
	RahLmOWFinfo.text = "STOPATTACK"
		RahLmOWFinfo.func = RahLmOWF_DDFunc_STA
		UIDropDownMenu_AddButton(RahLmOWFinfo)
	RahLmOWFinfo.text = "PETATTACK"
		RahLmOWFinfo.func = RahLmOWF_DDFunc_PA
		UIDropDownMenu_AddButton(RahLmOWFinfo)
	RahLmOWFinfo.text = "PETASSIST"
		RahLmOWFinfo.func = RahLmOWF_DDFunc_PAS
		UIDropDownMenu_AddButton(RahLmOWFinfo)
end)
function RahLmOWF_DDFunc_TAR()
	RahOverWoWFunc_LM_DD_Var = "TOGGLEAUTORUN"
	UIDropDownMenu_SetText(RahOverWoWFunc_LM_DD_Frame,"Override function: " .. RahOverWoWFunc_LM_DD_Var)
	setRahOverScript_LM()
end
function RahLmOWF_DDFunc_SoS()
	RahOverWoWFunc_LM_DD_Var = "SITORSTAND"
	UIDropDownMenu_SetText(RahOverWoWFunc_LM_DD_Frame,"Override function: " .. RahOverWoWFunc_LM_DD_Var)
	setRahOverScript_LM()
end
function RahLmOWF_DDFunc_TLT()
	RahOverWoWFunc_LM_DD_Var = "TARGETLASTTARGET"
	UIDropDownMenu_SetText(RahOverWoWFunc_LM_DD_Frame,"Override function: " .. RahOverWoWFunc_LM_DD_Var)
	setRahOverScript_LM()
end
function RahLmOWF_DDFunc_SA()
	RahOverWoWFunc_LM_DD_Var = "STARTATTACK"
	UIDropDownMenu_SetText(RahOverWoWFunc_LM_DD_Frame,"Override function: " .. RahOverWoWFunc_LM_DD_Var)
	setRahOverScript_LM()
end
function RahLmOWF_DDFunc_STA()
	RahOverWoWFunc_LM_DD_Var = "STOPATTACK"
	UIDropDownMenu_SetText(RahOverWoWFunc_LM_DD_Frame,"Override function: " .. RahOverWoWFunc_LM_DD_Var)
	setRahOverScript_LM()
end
function RahLmOWF_DDFunc_PA()
	RahOverWoWFunc_LM_DD_Var = "PETATTACK"
	UIDropDownMenu_SetText(RahOverWoWFunc_LM_DD_Frame,"Override function: " .. RahOverWoWFunc_LM_DD_Var)
	setRahOverScript_LM()
end
function RahLmOWF_DDFunc_PAS()
	RahOverWoWFunc_LM_DD_Var = "PETASSIST"
	UIDropDownMenu_SetText(RahOverWoWFunc_LM_DD_Frame,"Override function: " .. RahOverWoWFunc_LM_DD_Var)
	setRahOverScript_LM()
end
--if the LMB override dropdown type is set to macro then this input box allows setting the macro
RahLmOverMacro_Frame = CreateFrame("EditBox", "RahLmOverMacro_Frame", RahPanel,"InputBoxTemplate")
RahLmOverMacro_Frame:SetSize(100, 20)
RahLmOverMacro_Frame:SetPoint("TOPLEFT", 105, RahSetRow(11))
RahLmOverMacro_Frame:SetFontObject("ChatFontNormal")
RahLmOverMacro_Frame:SetMaxLetters(16)
RahLmOverMacro_Frame:SetAutoFocus(false)
RahLmOverMacro_Frame:SetScript("OnEnterPressed", function()
	RahLmOverMacro_Val = RahLmOverMacro_Frame:GetText()
	print("Left mouse override macro '" ..RahLmOverMacro_Val.."' set." )
	setRahOverScript_LM()
end)
RahLmOverMacro_Frame:SetScript("OnShow", function()
	RahLmOverMacro_Frame:SetText(RahLmOverMacro_Val)
end)

--function to actually set the choices from the previous sections for the LMB override into a script that can be interpreted
function setRahOverScript_LM()
	if (InCombatLockdown() == false) then
		if(RahOverScript_LM == nil) then
			RahOverScript_LM = nil
		end
		if(RahOverrideEnable_LM_CB == false or RahOverrideType_LM_DD_Var == "none") then
			RahOverScript_LM = nil
		elseif(RahOverrideType_LM_DD_Var == "WoW function") then
			RahOverScript_LM = RahOverWoWFunc_LM_DD_Var
		elseif(RahOverrideType_LM_DD_Var == "MACRO") then
			RahOverScript_LM = "MACRO ".. RahLmOverMacro_Val
		end
		SetMouselookOverrideBinding("BUTTON1",RahOverScript_LM)
	else
		print("RAH: unable to set left mouse look override. Reload UI after combat ends.")
	end
end
--the next several sections control overriding the right mouse button when mouselook is engaged.
--a checkbox used to enable or disable left mouse button (RMB) override
RahOverrideEnable_RM_CBFrame = CreateFrame("CheckButton", "RahOverrideEnable_RM_CBFrame_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahOverrideEnable_RM_CBFrame:SetPoint("TOPLEFT", 10, RahSetRow(12))
RahOverrideEnable_RM_CBFrame_GlobalNameText:SetFormattedText("Right mouse override.")
RahOverrideEnable_RM_CBFrame.tooltip = "Set a right mouse button override while mouselooking."
RahOverrideEnable_RM_CBFrame:SetScript("OnClick", function()
	if(RahOverrideEnable_RM_CB == true) then
		RahOverrideEnable_RM_CB = false
	elseif(RahOverrideEnable_RM_CB == false) then
		RahOverrideEnable_RM_CB = true
	end
end)
--primary drop down used to set between RMB override type
RahOverrideType_RM_DD_Frame = CreateFrame("Frame",RahOverrideType_RM_DD,RahPanel,"UIDropDownMenuTemplate")
RahOverrideType_RM_DD_Frame:SetPoint("TOPLEFT",80,RahSetRow(13))
UIDropDownMenu_SetWidth(RahOverrideType_RM_DD_Frame,200)
UIDropDownMenu_Initialize(RahOverrideType_RM_DD_Frame,function (self,menuList)
	RahOTRMDDinfo = UIDropDownMenu_CreateInfo()
		RahOTRMDDinfo.text = "Make a choice from the selections below."
		UIDropDownMenu_AddButton(RahOTRMDDinfo)
	RahOTRMDDinfo.text = "none"
		RahOTRMDDinfo.func = RahOverRM_DDFunc_none
		UIDropDownMenu_AddButton(RahOTRMDDinfo)
	RahOTRMDDinfo.text = "WoW function"
		RahOTRMDDinfo.func = RahOverRM_DDFunc_WoWFunc
		UIDropDownMenu_AddButton(RahOTRMDDinfo)
	RahOTRMDDinfo.text = "MACRO"
		RahOTRMDDinfo.func = RahOverRM_DDFunc_MACRO
		UIDropDownMenu_AddButton(RahOTRMDDinfo)
end)
function RahOverRM_DDFunc_none()
	RahOverrideType_RM_DD_Var = "none"
	UIDropDownMenu_SetText(RahOverrideType_RM_DD_Frame,"Right Mouse Override type: " .. RahOverrideType_RM_DD_Var)
	RahOverWoWFunc_RM_DD_Frame:Hide()
	RahRmOverMacro_Frame:Hide()
	setRahOverScript_RM()
end
function RahOverRM_DDFunc_WoWFunc()
	RahOverrideType_RM_DD_Var = "WoW function"
	UIDropDownMenu_SetText(RahOverrideType_RM_DD_Frame,"Right Mouse Override type: " .. RahOverrideType_RM_DD_Var)
	RahOverWoWFunc_RM_DD_Frame:Show()
	RahRmOverMacro_Frame:Hide()
	setRahOverScript_RM()
end
function RahOverRM_DDFunc_MACRO()
	RahOverrideType_RM_DD_Var = "MACRO"
	UIDropDownMenu_SetText(RahOverrideType_RM_DD_Frame,"Right Mouse Override type: " .. RahOverrideType_RM_DD_Var)
	RahOverWoWFunc_RM_DD_Frame:Hide()
	RahRmOverMacro_Frame:Show()
	setRahOverScript_RM()
end
--if RMB override is set to function, this drop down is show allowing a choice of predefined functions.. more to come in the future
RahOverWoWFunc_RM_DD_Frame = CreateFrame("Frame",RahOverWoWFunc_RM_DD,RahPanel,"UIDropDownMenuTemplate")
RahOverWoWFunc_RM_DD_Frame:SetPoint("TOPLEFT",80,RahSetRow(14))
UIDropDownMenu_SetWidth(RahOverWoWFunc_RM_DD_Frame,200)
UIDropDownMenu_Initialize(RahOverWoWFunc_RM_DD_Frame,function (self,menuList)
	RahRmOWFinfo = UIDropDownMenu_CreateInfo()
		RahRmOWFinfo.text =	"Make a choice from the selections below."
		UIDropDownMenu_AddButton(RahRmOWFinfo)
	RahRmOWFinfo.text = "TOGGLEAUTORUN"
		RahRmOWFinfo.func = RahRmOWF_DDFunc_TAR
		UIDropDownMenu_AddButton(RahRmOWFinfo)
	RahRmOWFinfo.text = "SITORSTAND"
		RahRmOWFinfo.func = RahRmOWF_DDFunc_SoS
		UIDropDownMenu_AddButton(RahRmOWFinfo)
	RahRmOWFinfo.text = "TARGETLASTTARGET"
		RahRmOWFinfo.func = RahRmOWF_DDFunc_TLT
		UIDropDownMenu_AddButton(RahRmOWFinfo)
	RahRmOWFinfo.text = "STARTATTACK"
		RahRmOWFinfo.func = RahRmOWF_DDFunc_SA
		UIDropDownMenu_AddButton(RahRmOWFinfo)
	RahRmOWFinfo.text = "STOPATTACK"
		RahRmOWFinfo.func = RahRmOWF_DDFunc_STA
		UIDropDownMenu_AddButton(RahRmOWFinfo)
	RahRmOWFinfo.text = "PETATTACK"
		RahRmOWFinfo.func = RahRmOWF_DDFunc_PA
		UIDropDownMenu_AddButton(RahRmOWFinfo)
	RahRmOWFinfo.text = "PETASSIST"
		RahRmOWFinfo.func = RahRmOWF_DDFunc_PAS
		UIDropDownMenu_AddButton(RahRmOWFinfo)
end)
function RahRmOWF_DDFunc_TAR()
	RahOverWoWFunc_RM_DD_Var = "TOGGLEAUTORUN"
	UIDropDownMenu_SetText(RahOverWoWFunc_RM_DD_Frame,"Override function: " .. RahOverWoWFunc_RM_DD_Var)
	setRahOverScript_RM()
end
function RahRmOWF_DDFunc_SoS()
	RahOverWoWFunc_RM_DD_Var = "SITORSTAND"
	UIDropDownMenu_SetText(RahOverWoWFunc_RM_DD_Frame,"Override function: " .. RahOverWoWFunc_RM_DD_Var)
	setRahOverScript_RM()
end
function RahRmOWF_DDFunc_TLT()
	RahOverWoWFunc_RM_DD_Var = "TARGETLASTTARGET"
	UIDropDownMenu_SetText(RahOverWoWFunc_RM_DD_Frame,"Override function: " .. RahOverWoWFunc_RM_DD_Var)
	setRahOverScript_RM()
end
function RahRmOWF_DDFunc_SA()
	RahOverWoWFunc_RM_DD_Var = "STARTATTACK"
	UIDropDownMenu_SetText(RahOverWoWFunc_RM_DD_Frame,"Override function: " .. RahOverWoWFunc_RM_DD_Var)
	setRahOverScript_RM()
end
function RahRmOWF_DDFunc_STA()
	RahOverWoWFunc_RM_DD_Var = "STOPATTACK"
	UIDropDownMenu_SetText(RahOverWoWFunc_RM_DD_Frame,"Override function: " .. RahOverWoWFunc_RM_DD_Var)
	setRahOverScript_RM()
end
function RahRmOWF_DDFunc_PA()
	RahOverWoWFunc_RM_DD_Var = "PETATTACK"
	UIDropDownMenu_SetText(RahOverWoWFunc_RM_DD_Frame,"Override function: " .. RahOverWoWFunc_RM_DD_Var)
	setRahOverScript_RM()
end
function RahRmOWF_DDFunc_PAS()
	RahOverWoWFunc_RM_DD_Var = "PETASSIST"
	UIDropDownMenu_SetText(RahOverWoWFunc_RM_DD_Frame,"Override function: " .. RahOverWoWFunc_RM_DD_Var)
	setRahOverScript_RM()
end
--if the RMB override dropdown type is set to macro then this input box allows setting the macro
RahRmOverMacro_Frame = CreateFrame("EditBox", "RahRmOverMacro_Frame", RahPanel,"InputBoxTemplate")
RahRmOverMacro_Frame:SetSize(100, 20)
RahRmOverMacro_Frame:SetPoint("TOPLEFT", 105, RahSetRow(14))
RahRmOverMacro_Frame:SetFontObject("ChatFontNormal")
RahRmOverMacro_Frame:SetMaxLetters(16)
RahRmOverMacro_Frame:SetAutoFocus(false)
RahRmOverMacro_Frame:SetScript("OnEnterPressed", function()
	RahRmOverMacro_Val = RahRmOverMacro_Frame:GetText()
	print("Right mouse override macro '" ..RahRmOverMacro_Val.."' set." )
	setRahOverScript_RM()
end)
--function to actually set the choices from the previous sections for the RMB override into a script that can be interpreted
function setRahOverScript_RM()
	if (InCombatLockdown() == false) then
		if(RahOverScript_RM == nil) then
			RahOverScript_RM = nil
		end
		if(RahOverrideEnable_RM_CB == false or RahOverrideType_RM_DD_Var == "none") then
			RahOverScript_RM = nil
		elseif(RahOverrideType_RM_DD_Var == "WoW function") then
			RahOverScript_RM = RahOverWoWFunc_RM_DD_Var
		elseif(RahOverrideType_RM_DD_Var == "MACRO") then
			RahOverScript_RM = "MACRO ".. RahRmOverMacro_Val
		end
		SetMouselookOverrideBinding("BUTTON2",RahOverScript_RM)
	else
		print("RAH: unable to set right mouse look override. Reload UI after combat ends.")
	end
end
RahRmOverMacro_Frame:SetScript("OnShow", function()
	RahRmOverMacro_Frame:SetText(RahRmOverMacro_Val)
end)

--title:SetPoint("TOPLEFT",10,RahSetRow(15))
--title:SetText("RAH: Chat Box Messages")
local RahChatBoxMsgs = RahPanel:CreateFontString("RahKeyBindingReferenceText", "OVERLAY", "GameFontNormalLarge");
RahChatBoxMsgs:SetPoint("TOPLEFT",10,RahSetRow(16))
RahChatBoxMsgs:SetText("RAH: Chat Box Messages")

RahChatMessagesCB = CreateFrame("CheckButton", "RahChatMessagesCB_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahChatMessagesCB:SetPoint("TOPLEFT",  10, RahSetRow(17))
RahChatMessagesCB_GlobalNameText:SetText("Help messages upon detection.")
RahChatMessagesCB.tooltip = "Enable or disable RAH sending helpful chatbox messages when it detects frames it knows."
RahChatMessagesCB:SetScript("OnClick", function()
	if(RahChatMessages == true) then
		RahChatMessages = false
	else
		RahChatMessages = true
	end
end)

RahCFPrintsCB = CreateFrame("CheckButton", "RahCFPrints_GlobalName", RahPanel, "ChatConfigCheckButtonTemplate")
RahCFPrintsCB:SetPoint("TOPLEFT",10, RahSetRow(18))
RahCFPrints_GlobalNameText:SetText("Enable smart features chatbox notifications.")
RahCFPrintsCB.tooltip = "Enable or disable smart features telling you why they did it."
RahCFPrintsCB:SetScript("OnClick", function()
	if(RahCFPrints == true) then
		RahCFPrints = false
	elseif(RahCFPrints == false) then
		RahCFPrints = true
	end
end)
