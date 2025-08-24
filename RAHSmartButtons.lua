function RahSBBase(RahSBBtnNumb)
	if (UnitAffectingCombat("player") == false) then
		local RahNumLootItems = GetNumLootItems()
		if (StaticPopup1Button1:IsVisible()) then
			if C_PartyInfo.IsDelveInProgress() then
				if (RahSBBtnNumb == "cf") then
					print("RAH SmartButton detects: Exit Delve.")
					print("SB1: Click \"Yes\"")
					print("SB2: Click \"No\"")
					print("Esc: \"No\"")
				end
				if (RahSBBtnNumb == 1 and UnitAffectingCombat("player") == false) then
					C_PartyInfo.DelveTeleportOut()
				end
			else
				if (RahSBBtnNumb == 1) then
					StaticPopup1Button1:Click()
				elseif (RahSBBtnNumb == 2) then
					StaticPopup1Button2:Click()
				elseif (RahSBBtnNumb == "cf") then
					print("RAH SmartButton detects: StaticPop.")
					print("SB1: Click \"Yes\"")
					print("SB2: Click \"No\"")
					print("Esc: \"No\"")
				end
			end
		elseif (QuestFrame:IsVisible()) then
			if(QuestFrameAcceptButton:IsVisible()) then
				if (RahSBBtnNumb == 1) then
					AcceptQuest();
				elseif (RahSBBtnNumb == 2) then
					QuestFrameDeclineButton:Click()
				elseif (RahSBBtnNumb == "cf") then
					print("RAH SmartButton detects: Quest Accept")
					print("  SB1: Accept Quest")
					print("  SB2: Decline Quest")
					print("  Esc: Decline Quest")
				end
			end
			if(QuestFrameCompleteQuestButton:IsVisible()) then
				if ((RahSBBtnNumb == 1) or (RahSBBtnNumb == 2) or (RahSBBtnNumb == 3) or (RahSBBtnNumb == 4)) then
					QuestFrameCompleteQuestButton:Click()
				elseif (RahSBBtnNumb == "cf") then
					print("RAH SmartButton detects: Complete Quest")
					print("  Any SmartButton: Complete Quest")
					print("  Esc: Close Frame")
				end
			end
			if(QuestInfoRewardsFrameQuestInfoItem1:IsVisible()) then
				if (RahSBBtnNumb) == 1 then
		  		GetQuestReward(RahSBBtnNumb)
				end
			end
			if(QuestFrameCompleteButton:IsVisible()) then
				if (RahSBBtnNumb == "cf") then
					print("RAH SmartButton detects: Complete Quest")
					print("  Any SmartButton: Complete Quest")
					print("  Esc: Close Frame")
				elseif ((RahSBBtnNumb == 1) or (RahSBBtnNumb == 2) or (RahSBBtnNumb == 3) or (RahSBBtnNumb == 4)) then
					CompleteQuest();
				end
			end
			if QuestFrameGreetingPanel:IsVisible() then
				local RahQacN = GetNumActiveQuests()
				if (RahSBBtnNumb == "cf") then
					print("RAH SmartButton detects: Quest NPC")
					print("  Any SmartButton: Accept a quest.")
					print("  Esc: Close Frame")
				end
				if RahQacN > 0 and RahSBBtnNumb <= RahQacN then
					SelectActiveQuest(RahSBBtnNumb)
				else
					SelectAvailableQuest(RahSBBtnNumb-RahQacN)
				end
			end
		elseif (GossipFrame:IsVisible()) then
			local getGossAvailQuestsNumb = C_GossipInfo.GetNumAvailableQuests()
			local getGossActiveNumb = C_GossipInfo.GetNumActiveQuests()
			local getGossAvailNumb = table.getn(C_GossipInfo.GetOptions())
			local gossScroll = 0
			local RahNoLower = 0
			if (RahSBBtnNumb == "cf") then
				print("RAH SmartButton detects: Gossip Frame")
				print("  SmartButtons attempt to click them in the order they appear.")
				print("Priority:")
				print("  Select Quest")
				print("  Select an already accepted quest. \(For turn in or re-read quest text\).")
				print("  Select gossip option")
			else
				if ((getGossAvailQuestsNumb > 0) and (RahSBBtnNumb <= getGossAvailQuestsNumb)) then
					local AvailableOptions = C_GossipInfo.GetAvailableQuests()
					C_GossipInfo.SelectAvailableQuest(AvailableOptions[RahSBBtnNumb].questID)
					RahNoLower = 1
				end
				gossScroll = gossScroll + getGossAvailQuestsNumb
				if ((getGossActiveNumb > 0) and (RahSBBtnNumb <= getGossActiveNumb+gossScroll) and (RahNoLower == 0)) then
					local ActiveOptions = C_GossipInfo.GetActiveQuests()
					C_GossipInfo.SelectActiveQuest(ActiveOptions[RahSBBtnNumb-gossScroll].questID)
					RahNoLower = 1
				end
				gossScroll = gossScroll + getGossActiveNumb
				if ((getGossAvailNumb > 0) and (RahNoLower == 0)) then
					SelectGossipOption(RahSBBtnNumb-gossScroll)
				end
			end
		elseif (MailFrame:IsVisible()) then
			if (RahSBBtnNumb == "cf") then
				print("RAH SmartButton detects: Mailbox")
				print("  SB1: Open All Mail")
				print("  Any other SmartButton: Loot the top item in the mailbox.")
			elseif (RahSBBtnNumb == 1) then
				OpenAllMail:Click()
			elseif ((RahSBBtnNumb == 2) or (RahSBBtnNumb == 3) or (RahSBBtnNumb == 4)) then
				local inbox_items1, inbox_items2 = GetInboxNumItems();
				for inbox_item_index = 1, inbox_items2,1 do
					AutoLootMailItem(inbox_item_index);
				end
			end
		elseif (MerchantFrame:IsVisible()) then
			if(RahSBBtnNumb == 1) then
				MerchantRepairItemButton:Click()
			elseif (RahSBBtnNumb == 2) then
				MerchantRepairAllButton:Click()
			elseif (RahSBBtnNumb == 3) then
				MerchantGuildBankRepairButton:Click()
			elseif (RahSBBtnNumb == 4) then
				MerchantSellAllJunkButton:Click()
			elseif (RahSBBtnNumb == "cf") then
				print("RAH SmartButton detects: Merchant")
				print("  SB1: Repair an item.")
				print("  SB2: Repair all items.")
				print("  SB3: Repair all items, take from Guild Bank first.")
				print("  SB4: Sell All Junk Items.")
			end
		elseif (LFGDungeonReadyDialogEnterDungeonButton:IsVisible()) then
			if(RahSBBtnNumb == 1) then
				LFGDungeonReadyDialogEnterDungeonButton:Click()
			elseif(RahSBBtnNumb == "cf") then
				print("RAH SmartButton detects: Enter Dungeon Pop-up")
				print("  SB1: Enter dungeon.")
			end
		elseif (QuestMapFrame.DetailsFrame:IsVisible()) then
			if (RahSBBtnNumb == 1) then
				QuestMapFrame.DetailsFrame.AbandonButton:Click()
			elseif (RahSBBtnNumb == 2) then
				QuestMapFrame.DetailsFrame.ShareButton:Click()
			elseif (RahSBBtnNumb == 3) then
				QuestMapFrame.DetailsFrame.TrackButton:Click()
			end
		elseif (LFDRoleCheckPopup:IsVisible()) then
			if (RahSBBtnNumb == 1) then
				LFDRoleCheckPopupAcceptButton:Click()
			end
		elseif (GroupLootHistoryFrame.ClosePanelButton:IsVisible()) then
			if (RahSBBtnNumb == 4) then
				GroupLootHistoryFrame.ClosePanelButton:Click()
			end
		elseif (ReadyCheckFrameYesButton:IsVisible()) then
			if (RahSBBtnNumb == 1) then
				ReadyCheckFrameYesButton:Click()
			elseif (RahSBBtnNumb == 2) then
				ReadyCheckFrameNoButton:Click()
			end
		elseif (LFGListApplicationDialog.SignUpButton:IsVisible()) then
			if (RahSBBtnNumb == 1) then
				LFGListApplicationDialog.SignUpButton:Click()
			elseif (RahSBBtnNumb == 2) then
				LFGListApplicationDialog.CancelUpButton:Click()
			end
		elseif RahNumLootItems > 0 then
			for i = 1,RahNumLootItems, 1 do
				print("looting slot ".. i)
				LootSlot(i)
			end
		elseif (TradeFrameTradeButton:IsVisible()) then
			if (RahSBBtnNumb == 1) then
				TradeFrameTradeButton:Click()
			end
		elseif (LFGListInviteDialog.AcknowledgeButton:IsVisible()) then
			LFGListInviteDialog.AcknowledgeButton:Click()
		elseif (GroupLootHistoryFrame.ClosePanelButton:IsVisible()) then
			GroupLootHistoryFrame.ClosePanelButton:Click()
		else
			if DelvesDifficultyPickerFrame ~= nil then
				if DelvesDifficultyPickerFrame:IsVisible() == true then
					if (RahSBBtnNumb == "cf") then
						print("  SB1: Enter delve with default selection.")
					end
					if DelvesDifficultyPickerFrame.EnterDelveButton:IsVisible() then
						if (RahSBBtnNumb == 1) then
							DelvesDifficultyPickerFrame.EnterDelveButton:Click()
						end
					end
				end
			elseif AdventureMapQuestChoiceDialog ~= nil then
				if (AdventureMapQuestChoiceDialog:IsVisible() == true) then
					AdventureMapQuestChoiceDialog.AcceptButton:Click()
				end
			elseif (PlayerChoiceFrame ~= nil and UnitAffectingCombat("player") == false) then
				local children = {PlayerChoiceFrame:GetChildren()}
				for i, child in ipairs(children) do
					if i > 7 then
						local RahPCFChilren = {child:GetChildren()}
						for i2, child2 in ipairs(RahPCFChilren) do
							if i2 == 2 then
								local rahPCFButtonTab = {child2:GetChildren()}
								for i3, child3 in ipairs(rahPCFButtonTab) do
									local rahPCFButtonSubTab = {child3:GetChildren()}
									for i4, child4 in ipairs(rahPCFButtonSubTab) do
										if (RahSBBtnNumb == 1) then
											if i == 8 then child4:Click()	end
										elseif (RahSBBtnNumb == 2) then
											if i == 9 then child4:Click() end
										elseif (RahSBBtnNumb == 3) then
											if i == 10 then child4:Click() end
										elseif (RahSBBtnNumb == 4) then
											if i == 11 then child4:Click() end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	else
		print("RAH SmartButtons are disabled during combat.")
	end
end

function RahSB1()
	RahSBBase(1)
end

function RahSB2()
	RahSBBase(2)
end

function RahSB3()
	RahSBBase(3)
end

function RahSB4()
	RahSBBase(4)
end
