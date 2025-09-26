local TTDraggingPosition = CreateFrame('Button', 'TTDraggingPosition', UIParent)
local TTDraggingPositionIcon = TTDraggingPosition:CreateTexture(nil, 'ARTWORK')
local TTDraggingPositionBorder = CreateFrame('Frame', nil, TTDraggingPosition)
local ttairtotemtime = 0
local ttearthtotemtime = 0
local ttwatertotemtime = 0
local ttfiretotemtime = 0


TTDraggingPosition:SetWidth(130)
TTDraggingPosition:SetHeight(50)
TTDraggingPosition:SetPoint('TOP', UIParent)

TTDraggingPositionBorder:SetPoint('TOPLEFT', TTDraggingPosition, 'TOPLEFT')
TTDraggingPositionBorder:SetPoint('BOTTOMRIGHT', TTDraggingPosition, 'BOTTOMRIGHT')
TTDraggingPositionBorder:SetBackdrop({
    bgFile = 'Interface\\Tooltips\\UI-Tooltip-Background',
    edgeFile = 'Interface\\Tooltips\\UI-Tooltip-Border',
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 }
})
TTDraggingPositionBorder:SetBackdropColor(0, 0, 0, 0.75)

TTDraggingPositionIcon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
TTDraggingPositionIcon:SetPoint('TOPLEFT', TTDraggingPosition, 'TOPLEFT', 4, -4)
TTDraggingPositionIcon:SetPoint('BOTTOMRIGHT', TTDraggingPosition, 'BOTTOMRIGHT', -4, 4)

TTDraggingPosition:Hide()

local locked = false
TTDraggingPosition:SetMovable(true)
TTDraggingPosition:RegisterForDrag('LeftButton')
TTDraggingPosition:SetScript('OnDragStart', function()
    if locked then
        return
    end
    TTDraggingPosition:StartMoving()
end)
TTDraggingPosition:SetScript('OnDragStop', function()
    TTDraggingPosition:StopMovingOrSizing()
end)

--------------------------------------------------------------------------------

local ttairbutton = CreateFrame('Button', nil, UIParent)
local ttairicon = ttairbutton:CreateTexture(nil, 'ARTWORK')
local ttairborder = CreateFrame('Frame', nil, ttairbutton)
local ttairbuttontext = ttairbutton:CreateFontString(nil, 'OVERLAY', 'GameFontHighlightSmall')

ttairbutton.ttairicon = ttairicon
ttairbutton.ttairborder = ttairborder
ttairbutton.ttairbuttontext = ttairbuttontext

ttairbutton:SetWidth(35)
ttairbutton:SetHeight(35)
ttairbutton:SetPoint('CENTER', TTDraggingPosition, 'LEFT', 20, 0)

ttairborder:SetPoint('TOPLEFT', ttairbutton, 'TOPLEFT')
ttairborder:SetPoint('BOTTOMRIGHT', ttairbutton, 'BOTTOMRIGHT')
ttairborder:SetBackdrop({
	bgFile = 'Interface\\Tooltips\\UI-Tooltip-Background',
	edgeFile = 'Interface\\Tooltips\\UI-Tooltip-Border',
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
})
ttairborder:SetBackdropColor(0, 0, 0, 0.75)

ttairicon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
ttairicon:SetPoint('TOPLEFT', ttairbutton, 'TOPLEFT', 4, -4)
ttairicon:SetPoint('BOTTOMRIGHT', ttairbutton, 'BOTTOMRIGHT', -4, 4)

ttairbuttontext:SetPoint('BOTTOM', ttairbutton, 'CENTER', 0, -5)
ttairbuttontext:SetFont("Fonts\\FRIZQT__.TTF", 12)

ttairicon:SetTexture('Interface\\Icons\\Spell_Totem_WardOfDraining')

--------------------------------------------------------------------------------

local ttearthbutton = CreateFrame('Button', nil, UIParent)
local ttearthicon = ttearthbutton:CreateTexture(nil, 'ARTWORK')
local ttearthborder = CreateFrame('Frame', nil, ttearthbutton)
local ttearthbuttontext = ttearthbutton:CreateFontString(nil, 'OVERLAY', 'GameFontHighlightSmall')

ttearthbutton.ttearthicon = ttearthicon
ttearthbutton.ttearthborder = ttearthborder
ttearthbutton.ttearthbuttontext = ttearthbuttontext

ttearthbutton:SetWidth(35)
ttearthbutton:SetHeight(35)
ttearthbutton:SetPoint('CENTER', TTDraggingPosition, 'LEFT', 50, 0)

ttearthborder:SetPoint('TOPLEFT', ttearthbutton, 'TOPLEFT')
ttearthborder:SetPoint('BOTTOMRIGHT', ttearthbutton, 'BOTTOMRIGHT')
ttearthborder:SetBackdrop({
	bgFile = 'Interface\\Tooltips\\UI-Tooltip-Background',
	edgeFile = 'Interface\\Tooltips\\UI-Tooltip-Border',
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
})
ttearthborder:SetBackdropColor(0, 0, 0, 0.75)

ttearthicon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
ttearthicon:SetPoint('TOPLEFT', ttearthbutton, 'TOPLEFT', 4, -4)
ttearthicon:SetPoint('BOTTOMRIGHT', ttearthbutton, 'BOTTOMRIGHT', -4, 4)

ttearthbuttontext:SetPoint('BOTTOM', ttearthbutton, 'CENTER', 0, -5)
ttearthbuttontext:SetFont("Fonts\\FRIZQT__.TTF", 12)

ttearthicon:SetTexture('Interface\\Icons\\Spell_Totem_WardOfDraining')


--------------------------------------------------------------------------------

local ttwaterbutton = CreateFrame('Button', nil, UIParent)
local ttwatericon = ttwaterbutton:CreateTexture(nil, 'ARTWORK')
local ttwaterborder = CreateFrame('Frame', nil, ttwaterbutton)
local ttwaterbuttontext = ttwaterbutton:CreateFontString(nil, 'OVERLAY', 'GameFontHighlightSmall')

ttwaterbutton.ttwatericon = ttwatericon
ttwaterbutton.ttwaterborder = ttwaterborder
ttwaterbutton.ttwaterbuttontext = ttwaterbuttontext

ttwaterbutton:SetWidth(35)
ttwaterbutton:SetHeight(35)
ttwaterbutton:SetPoint('CENTER', TTDraggingPosition, 'LEFT', 80, 0)

ttwaterborder:SetPoint('TOPLEFT', ttwaterbutton, 'TOPLEFT')
ttwaterborder:SetPoint('BOTTOMRIGHT', ttwaterbutton, 'BOTTOMRIGHT')
ttwaterborder:SetBackdrop({
	bgFile = 'Interface\\Tooltips\\UI-Tooltip-Background',
	edgeFile = 'Interface\\Tooltips\\UI-Tooltip-Border',
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
})
ttwaterborder:SetBackdropColor(0, 0, 0, 0.75)

ttwatericon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
ttwatericon:SetPoint('TOPLEFT', ttwaterbutton, 'TOPLEFT', 4, -4)
ttwatericon:SetPoint('BOTTOMRIGHT', ttwaterbutton, 'BOTTOMRIGHT', -4, 4)

ttwaterbuttontext:SetPoint('BOTTOM', ttwaterbutton, 'CENTER', 0, -5)
ttwaterbuttontext:SetFont("Fonts\\FRIZQT__.TTF", 12)

ttwatericon:SetTexture('Interface\\Icons\\Spell_Totem_WardOfDraining')

--------------------------------------------------------------------------------

local ttfirebutton = CreateFrame('Button', nil, UIParent)
local ttfireicon = ttfirebutton:CreateTexture(nil, 'ARTWORK')
local ttfireborder = CreateFrame('Frame', nil, ttfirebutton)
local ttfirebuttontext = ttfirebutton:CreateFontString(nil, 'OVERLAY', 'GameFontHighlightSmall')

ttfirebutton.ttfireicon = ttfireicon
ttfirebutton.ttfireborder = ttfireborder
ttfirebutton.ttfirebuttontext = ttfirebuttontext

ttfirebutton:SetWidth(35)
ttfirebutton:SetHeight(35)
ttfirebutton:SetPoint('CENTER', TTDraggingPosition, 'LEFT', 110, 0)

ttfireborder:SetPoint('TOPLEFT', ttfirebutton, 'TOPLEFT')
ttfireborder:SetPoint('BOTTOMRIGHT', ttfirebutton, 'BOTTOMRIGHT')
ttfireborder:SetBackdrop({
	bgFile = 'Interface\\Tooltips\\UI-Tooltip-Background',
	edgeFile = 'Interface\\Tooltips\\UI-Tooltip-Border',
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
})
ttfireborder:SetBackdropColor(0, 0, 0, 0.75)

ttfireicon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
ttfireicon:SetPoint('TOPLEFT', ttfirebutton, 'TOPLEFT', 4, -4)
ttfireicon:SetPoint('BOTTOMRIGHT', ttfirebutton, 'BOTTOMRIGHT', -4, 4)

ttfirebuttontext:SetPoint('BOTTOM', ttfirebutton, 'CENTER', 0, -5)
ttfirebuttontext:SetFont("Fonts\\FRIZQT__.TTF", 12)

ttfireicon:SetTexture('Interface\\Icons\\Spell_Totem_WardOfDraining')

--------------------------------------------------------------------------------

ttairbutton:RegisterEvent('CHAT_MSG_SPELL_SELF_BUFF')

ttairbutton:SetScript('OnEvent', function()
	local ttplayername = UnitName("player")

	if string.find(arg1, 'from Totemic Recall') then
		ttairicon:SetTexture('Interface\\Icons\\Spell_Totem_WardOfDraining')
		ttairbuttontext:SetText('')
		ttairtotemtime = 0
		ttairborder:SetBackdropColor(0, 0, 0, 0.75)
		ttearthicon:SetTexture('Interface\\Icons\\Spell_Totem_WardOfDraining')
		ttearthbuttontext:SetText('')
		ttearthtotemtime = 0
		ttearthborder:SetBackdropColor(0, 0, 0, 0.75)
		ttwatericon:SetTexture('Interface\\Icons\\Spell_Totem_WardOfDraining')
		ttwaterbuttontext:SetText('')
		ttwatertotemtime = 0
		ttwaterborder:SetBackdropColor(0, 0, 0, 0.75)
		ttfireicon:SetTexture('Interface\\Icons\\Spell_Totem_WardOfDraining')
		ttfirebuttontext:SetText('')
		ttfiretotemtime = 0
		ttfireborder:SetBackdropColor(0, 0, 0, 0.75)
-------------------- AIR TOTEMS ----------------------------------------
	elseif arg1 == 'You cast Windfury Totem.' then
		ttairicon:SetTexture('Interface\\Icons\\Spell_Nature_Windfury')
		ttairtotemplacementtime = GetTime()
		ttairtotemtime = 120
		ttairbuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Grace of Air Totem.' then
		ttairicon:SetTexture('Interface\\Icons\\Spell_Nature_InvisibilityTotem')
		ttairtotemplacementtime = GetTime()
		ttairtotemtime = 120
		ttairbuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Tranquil Air Totem.' then
		ttairicon:SetTexture('Interface\\Icons\\Spell_Nature_Brilliance')
		ttairtotemplacementtime = GetTime()
		ttairtotemtime = 120
		ttairbuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Nature Resistance Totem.' then
		ttairicon:SetTexture('Interface\\Icons\\Spell_Nature_NatureResistanceTotem')
		ttairtotemplacementtime = GetTime()
		ttairtotemtime = 120
		ttairbuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Grounding Totem.' then
		ttairicon:SetTexture('Interface\\Icons\\Spell_Nature_GroundingTotem')
		ttairtotemplacementtime = GetTime()
		ttairtotemtime = 45
		ttairbuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Windwall Totem.' then
		ttairicon:SetTexture('Interface\\Icons\\Spell_Nature_EarthBind')
		ttairtotemplacementtime = GetTime()
		ttairtotemtime = 120
		ttairbuttontext:SetTextColor(1.0, 1.0, 1.0)
-------------------- EARTH TOTEMS ----------------------------------------
	elseif arg1 == 'You cast Strength of Earth Totem.' then
		ttearthicon:SetTexture('Interface\\Icons\\Spell_Nature_EarthBindTotem')
		ttearthtotemplacementtime = GetTime()
		ttearthtotemtime = 120
		ttearthbuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Tremor Totem.' then
		ttearthicon:SetTexture('Interface\\Icons\\Spell_Nature_TremorTotem')
		ttearthtotemplacementtime = GetTime()
		ttearthtotemtime = 120
		ttearthbuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Earthbind Totem.' then
		ttearthicon:SetTexture('Interface\\Icons\\Spell_Nature_StrengthOfEarthTotem02')
		ttearthtotemplacementtime = GetTime()
		ttearthtotemtime = 45
		ttearthbuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Stoneskin Totem.' then
		ttearthicon:SetTexture('Interface\\Icons\\Spell_Nature_EarthBindTotem')
		ttearthtotemplacementtime = GetTime()
		ttearthtotemtime = 120
		ttearthbuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Stoneclaw Totem.' then
		ttearthicon:SetTexture('Interface\\Icons\\Spell_Nature_StoneClawTotem')
		ttearthtotemplacementtime = GetTime()
		ttearthtotemtime = 15
		ttearthbuttontext:SetTextColor(1.0, 1.0, 1.0)
-------------------- WATER TOTEMS ----------------------------------------
	elseif arg1 == 'You cast Mana Spring Totem.' then
		ttwatericon:SetTexture('Interface\\Icons\\Spell_Nature_ManaRegenTotem')
		ttwatertotemplacementtime = GetTime()
		ttwatertotemtime = 60
		ttwaterbuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Fire Resistance Totem.' then
		ttwatericon:SetTexture('Interface\\Icons\\Spell_FireResistanceTotem_01')
		ttwatertotemplacementtime = GetTime()
		ttwatertotemtime = 120
		ttwaterbuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Poison Cleansing Totem.' then
		ttwatericon:SetTexture('Interface\\Icons\\Spell_Nature_PoisonCleansingTotem')
		ttwatertotemplacementtime = GetTime()
		ttwatertotemtime = 120
		ttwaterbuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Disease Cleansing Totem.' then
		ttwatericon:SetTexture('Interface\\Icons\\Spell_Nature_DiseaseCleansingTotem')
		ttwatertotemplacementtime = GetTime()
		ttwatertotemtime = 120
		ttwaterbuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Healing Stream Totem.' then
		ttwatericon:SetTexture('Interface\\Icons\\INV_Spear_04')
		ttwatertotemplacementtime = GetTime()
		ttwatertotemtime = 60
		ttwaterbuttontext:SetTextColor(1.0, 1.0, 1.0)
-------------------- FIRE TOTEMS ----------------------------------------
	elseif arg1 == 'You cast Flametongue Totem.' then
		ttfireicon:SetTexture('Interface\\Icons\\Spell_Nature_GuardianWard')
		ttfiretotemplacementtime = GetTime()
		ttfiretotemtime = 120
		ttfirebuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Frost Resistance Totem.' then
		ttfireicon:SetTexture('Interface\\Icons\\Spell_FrostResistanceTotem_01')
		ttfiretotemplacementtime = GetTime()
		ttfiretotemtime = 120
		ttfirebuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Magma Totem.' then
		ttfireicon:SetTexture('Interface\\Icons\\Spell_Fire_SelfDestruct')
		ttfiretotemplacementtime = GetTime()
		ttfiretotemtime = 20
		ttfirebuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'You cast Searing Totem.' then
		ttfireicon:SetTexture('Interface\\Icons\\Spell_Fire_SearingTotem')
		ttfiretotemplacementtime = GetTime()
		ttfiretotemtime = 55
		ttfirebuttontext:SetTextColor(1.0, 1.0, 1.0)
	elseif arg1 == 'Windfury Totem ('.. ttplayername .. ') was destroyed.' then
		ttairicon:SetTexture('Interface\\Icons\\Spell_Totem_WardOfDraining')
		ttairbuttontext:SetText('')
		ttairtotemtime = 0
		ttfirebuttontext:SetTextColor(1.0, 1.0, 1.0)
	end
end)

ttairbutton:SetScript('OnUpdate', function(self, elapsed)
	local ttcurrenttime = GetTime()

	if ttairtotemtime > 0 then
		local airtimeLeft = ttairtotemtime - (ttcurrenttime - ttairtotemplacementtime)
		ttairbuttontext:SetText(math.ceil(airtimeLeft))
		ttairborder:SetBackdropColor(0, 0, 0, 0)
			if airtimeLeft <= 0 then
				ttairtotemtime = 0
				ttairbuttontext:SetText('')
				ttairicon:SetTexture('Interface\\Icons\\Spell_Totem_WardOfDraining')
				ttairborder:SetBackdropColor(0, 0, 0, 0.75)
				ttairbuttontext:SetTextColor(1.0, 1.0, 1.0)
			elseif airtimeLeft < 10 then
				ttairbuttontext:SetTextColor(1.0, 0.0, 0.0)
			end
	end
end)

ttearthbutton:SetScript('OnUpdate', function(self, elapsed)
	local ttcurrenttime = GetTime()

	if ttearthtotemtime > 0 then
		local earthtimeLeft = ttearthtotemtime - (ttcurrenttime - ttearthtotemplacementtime)
		ttearthbuttontext:SetText(math.ceil(earthtimeLeft))
		ttearthborder:SetBackdropColor(0, 0, 0, 0)
			if earthtimeLeft <= 0 then
				ttearthtotemtime = 0
				ttearthbuttontext:SetText('')
				ttearthicon:SetTexture('Interface\\Icons\\Spell_Totem_WardOfDraining')
				ttearthborder:SetBackdropColor(0, 0, 0, 0.75)
				ttearthbuttontext:SetTextColor(1.0, 1.0, 1.0)
			elseif earthtimeLeft < 10 then
				ttearthbuttontext:SetTextColor(1.0, 0.0, 0.0)
			end
	end
end)

ttwaterbutton:SetScript('OnUpdate', function(self, elapsed)
	local ttcurrenttime = GetTime()

	if ttwatertotemtime > 0 then
		local watertimeLeft = ttwatertotemtime - (ttcurrenttime - ttwatertotemplacementtime)
		ttwaterbuttontext:SetText(math.ceil(watertimeLeft))
		ttwaterborder:SetBackdropColor(0, 0, 0, 0)
			if watertimeLeft <= 0 then
				ttwatertotemtime = 0
				ttwaterbuttontext:SetText('')
				ttwatericon:SetTexture('Interface\\Icons\\Spell_Totem_WardOfDraining')
				ttwaterborder:SetBackdropColor(0, 0, 0, 0.75)
				ttwaterbuttontext:SetTextColor(1.0, 1.0, 1.0)
			elseif watertimeLeft < 10 then
				ttwaterbuttontext:SetTextColor(1.0, 0.0, 0.0)
			end
	end
end)

ttfirebutton:SetScript('OnUpdate', function(self, elapsed)
	local ttcurrenttime = GetTime()

	if ttfiretotemtime > 0 then
		local firetimeLeft = ttfiretotemtime - (ttcurrenttime - ttfiretotemplacementtime)
		ttfirebuttontext:SetText(math.ceil(firetimeLeft))
		ttfireborder:SetBackdropColor(0, 0, 0, 0)
			if firetimeLeft <= 0 then
				ttfiretotemtime = 0
				ttfirebuttontext:SetText('')
				ttfireicon:SetTexture('Interface\\Icons\\Spell_Totem_WardOfDraining')
				ttfireborder:SetBackdropColor(0, 0, 0, 0.75)
				ttfirebuttontext:SetTextColor(1.0, 1.0, 1.0)
			elseif firetimeLeft < 10 then
				ttfirebuttontext:SetTextColor(1.0, 0.0, 0.0)
			end
	end
end)




SLASH_TotemTimers1 = "/tt"
function SlashCmdList.TotemTimers(msg)
		if msg == 'lock' then
		TTDraggingPosition:Hide()
		elseif msg == 'unlock' then
		TTDraggingPosition:Show()
		elseif msg == 'show' then
		ttairbutton:Show()
		ttearthbutton:Show()
		ttwaterbutton:Show()
		ttfirebutton:Show()
		elseif msg == 'hide' then
		ttairbutton:Hide()
		ttearthbutton:Hide()
		ttwaterbutton:Hide()
		ttfirebutton:Hide()
		end
end