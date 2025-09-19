local totemSpells = {
    ["Air"] = {"Windfury Totem", "Grace of Air Totem", "Tranquil Air Totem", "Nature Resistance Totem", "Grounding Totem", "Windwall Totem"},
    ["Earth"] = {"Strength of Earth Totem", "Tremor Totem", "Earthbind Totem", "Stoneskin Totem", "Stoneclaw Totem"},
    ["Water"] = {"Mana Spring Totem", "Fire Resistance Totem", "Poison Cleansing Totem", "Disease Cleansing Totem", "Healing Stream Totem"},
    ["Fire"] = {"Flametongue Totem", "Frost Resistance Totem", "Magma Totem", "Searing Totem"}
}

local function print(msg)
    DEFAULT_CHAT_FRAME:AddMessage(msg)
end


function ToggleTotemSelection(element, totem)
    print('toggling ' .. element .. ' ' .. totem)
    if SavedTotemSetup[element] == totem then
        SavedTotemSetup[element] = nil
    else
        SavedTotemSetup[element] = totem
    end
end

SLASH_MYTOTEMS1 = "/mytotems"
SlashCmdList["MYTOTEMS"] = function()
    if MyTotemsOptionsFrame then
        if MyTotemsOptionsFrame:IsVisible() then
            MyTotemsOptionsFrame:Hide()
        else
            MyTotemsOptionsFrame:Show()
        end
    else
        print("MyTotemsOptionsFrame does not exist!")
    end
end

SLASH_MYTOTEMSCAST1 = "/mytotemscast"
SlashCmdList["MYTOTEMSCAST"] = function()
    for _, spell in pairs(SavedTotemSetup) do
        if spell then
            CastSpellByName(spell)
        end
    end
end


-- Create the frame programmatically
local MyTotemsOptionsFrame = CreateFrame("Frame", "MyTotemsOptionsFrame", UIParent)
MyTotemsOptionsFrame:Hide()
MyTotemsOptionsFrame:SetWidth(470)
MyTotemsOptionsFrame:SetHeight(420)
MyTotemsOptionsFrame:SetPoint("CENTER", UIParent, "CENTER")
MyTotemsOptionsFrame:SetBackdrop({
    bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
    tile = true, tileSize = 32, edgeSize = 32,
    insets = { left = 11, right = 12, top = 12, bottom = 11 }
})
MyTotemsOptionsFrame:SetBackdropColor(0, 0, 0, 1)

MyTotemsOptionsFrame.title = MyTotemsOptionsFrame:CreateFontString(nil, "OVERLAY")
MyTotemsOptionsFrame.title:SetFont("Fonts\\FRIZQT__.TTF", 14, "THICKOUTLINE")
MyTotemsOptionsFrame.title:SetPoint("TOP", MyTotemsOptionsFrame, "TOP", 0, -10)
MyTotemsOptionsFrame.title:SetText("MyTotems v2.01 by Celebrindal & Ennea")
MyTotemsOptionsFrame:SetMovable(true)
MyTotemsOptionsFrame:EnableMouse(true)
MyTotemsOptionsFrame:RegisterForDrag("LeftButton")
MyTotemsOptionsFrame:SetScript("OnMouseDown", function()
	if arg1 == "LeftButton" and not this.isMoving then
		this:StartMoving();
		this.isMoving = true;
	end
end)
MyTotemsOptionsFrame:SetScript("OnMouseUp", function()
	if arg1 == "LeftButton" and this.isMoving then
		this:StopMovingOrSizing();
		this.isMoving = false;
	end
end)

MyTotemsOptionsFrame:RegisterEvent('PLAYER_LOGIN')
MyTotemsOptionsFrame:SetScript('OnEvent', function()
    if event == 'PLAYER_LOGIN' then
        SavedTotemSetup = SavedTotemSetup or {
            ["Air"] = nil,
            ["Earth"] = nil,
            ["Water"] = nil,
            ["Fire"] = nil
        }
		local yOffset = -40
		local xOffset = 30


		local section = 0
		for element, totems in pairs(totemSpells) do
			section = section + 1

			if section == 3 then
				yOffset = -40
				xOffset = 240
			end

			local label = MyTotemsOptionsFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
			label:SetPoint("TOPLEFT", xOffset, yOffset)
			label:SetText(element .. " Totems")

			yOffset = yOffset - 20

			for _, totem in ipairs(totems) do
				local checkButton = CreateFrame("CheckButton", nil, MyTotemsOptionsFrame, "UICheckButtonTemplate")
				checkButton:SetWidth(24)
				checkButton:SetHeight(24)
				checkButton:SetPoint("TOPLEFT", xOffset, yOffset)

				local checkButtonText = MyTotemsOptionsFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
				checkButtonText:SetPoint("LEFT", checkButton, "RIGHT", 5, 0)
				checkButtonText:SetText(totem)

				checkButton.element = element
				checkButton.totem = totem
				checkButton:SetScript("OnClick", function()
					ToggleTotemSelection(this.element, this.totem)
					-- Ensure only one checkbox is selected per element
					for _, btn in ipairs(MyTotemsOptionsFrame[this.element .. "Buttons"]) do
						if btn ~= this then
							btn:SetChecked(false)
						end
					end
				end)
				if SavedTotemSetup[element] == totem then
					checkButton:SetChecked(true)
				end

				MyTotemsOptionsFrame[element .. "Buttons"] = MyTotemsOptionsFrame[element .. "Buttons"] or {}
				table.insert(MyTotemsOptionsFrame[element .. "Buttons"], checkButton)

				yOffset = yOffset - 30
			end

			yOffset = yOffset - 10
		end
    end
end)


-- Add Close Button
local closeButton = CreateFrame("Button", nil, MyTotemsOptionsFrame)
closeButton:SetWidth(32)
closeButton:SetHeight(32)
closeButton:SetPoint("TOPRIGHT", MyTotemsOptionsFrame, "TOPRIGHT", -5, -5)
closeButton:SetNormalTexture("Interface/Buttons/UI-Panel-MinimizeButton-Up")
closeButton:SetPushedTexture("Interface/Buttons/UI-Panel-MinimizeButton-Down")
closeButton:SetHighlightTexture("Interface/Buttons/UI-Panel-MinimizeButton-Highlight")
closeButton:SetScript("OnClick", function() MyTotemsOptionsFrame:Hide() end)

-- Create checkboxes for each element
