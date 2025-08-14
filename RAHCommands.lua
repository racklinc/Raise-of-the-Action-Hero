local function RahCommands(msg, editbox)
	if msg == 'start' then
		MouselookStart()
	elseif msg == 'stop' then
		MouselookStop()
	elseif msg == 'cf' then
		RahSBBase("cf")
	elseif msg == '?' then
		RahSBBase("cf")
	elseif msg == "options" then
		Settings.OpenToCategory("Raise of the Action Hero")
	elseif msg == 'doubletap on' then
		RahDoubleTapDefault = true
		RahDoubleTapDefaultCB:SetChecked(true)
		print("RAH: Enabled doubletapping the temp toggle keybind to toggle mouselook.")
	elseif msg == 'doubletap off' then
		RahDoubleTapDefault = false
		RahDoubleTapDefaultCB:SetChecked(false)
		print("RAH: Disabled doubletapping the temp toggle keybind to toggle mouselook.")
	elseif msg == 'smart on' then
		RahSmartEnableFunc()
		RahSmartEnableCB:SetChecked(true)
	elseif msg == 'smart off' then
		RahSmartDisableFunc()
		RahSmartEnableCB:SetChecked(false)
	elseif msg == "combat on" then
		RahCombatDefaultCBVal = true
		RahCombatDefaultCB:SetChecked(true)
		print("RAH: Enabled automatic locking of mouselook when entering combat.")
	elseif msg == "combat off" then
		RahCombatDefaultCBVal = false
		RahCombatDefaultCB:SetChecked(false)
		print("RAH: Disabled automatic locking of mouselook when entering combat.")
	elseif msg == "moving on" then
		RahMLMovingDefault = true
		RahMLMovingDefaultCB:SetChecked(true)
		print("RAH: Enabled automatic locking of mouselook when moving.")
	elseif msg == "moving off" then
		RahMLMovingDefault = false
		RahMLMovingDefaultCB:SetChecked(false)
		print("RAH: Disabled automatic locking of mouselook when moving.")
	elseif msg == "print on" then
		RahCFPrints = true
		RahCFPrintsCB:SetChecked(true)
	elseif msg == "print off" then
		RahCFPrints = false
		RahCFPrintsCB:SetChecked(false)
	elseif msg == "map on" then
		RahMapUnlock = true
		RahMapUnlockCB:SetChecked(true)
	elseif msg == "map off" then
		RahMapUnlock = false
		RahMapUnlockCB:SetChecked(false)
	end

end

SLASH_RAH1 = '/RAH'
SlashCmdList['RAH'] = RahCommands

local commandName = "RELOADUI_ALIAS"
SLASH_RELOADUI_ALIAS1 = "/reloadui"
SlashCmdList[commandName] = function(msg)
	    C_UI.Reload()
end
