--message("sanity check")
local DataGather_OpenLootingFrame = CreateFrame("Frame")
local DataGather_CloseLootingFrame = CreateFrame("Frame")
local LootingDone = false

DataGather_OpenLootingFrame:RegisterEvent("LOOT_READY")
DataGather_CloseLootingFrame:RegisterEvent("LOOT_CLOSED")

DataGather_OpenLootingFrame:SetScript("OnEvent",
	function(self, event, ...)
		items = GetLootInfo()
		if LootingDone == false then
			for _,itemTable in pairs(items) do
				print(itemTable["item"])
			end
		LootingDone = true
		end
	end)
	
DataGather_CloseLootingFrame:SetScript("OnEvent",
	function(self, event, ...)
		LootingDone = false
	end)
