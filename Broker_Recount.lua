local dataobj = LibStub:GetLibrary("LibDataBroker-1.1"):NewDataObject("Recount", {
	type = "launcher",
	icon = "Interface\\AddOns\\Broker_Recount\\Images\\icon",
	label = "Recount",
	text = "Recount",
	name = "Recount",
	OnClick = function(_, button)
		if button=="LeftButton" then
			if Recount.MainWindow:IsVisible() then
				Recount.MainWindow:Hide()
			else
				Recount.MainWindow:Show()
				Recount:RefreshMainWindow()
			end
		elseif button=="RightButton" then
			if not Recount.ConfigWindow or not Recount.ConfigWindow:IsVisible() then
				Recount:ShowConfig()
			else
				Recount.ConfigWindow:Hide()
			end
		end
	end
})

function dataobj:OnTooltipShow()
	self:AddLine("|cffffffff" .. "Recount|r")
	self:AddLine("|cffffff00" .. "Left-Click|r to toggle the Recount window")
	self:AddLine("|cffffff00" .. "Right-click|r to open the options menu")
end
