local http = game:GetService("HttpService")
local discText = ""
local warnText = ""
local frequencyToSend = 15
local sendPacketsSet = false
local edsToggleSet = 2

local edsToggle = 2
local sendPackets = false
-- prestart
if isfile("talkingLogger.json") then
	local fileContent = readfile("talkingLogger.json")
	
	local fileText = http:JSONDecode(fileContent)
	
	if fileText[1] then
		discText = fileText[1]
	end
	if fileText[2] then
		warnText = fileText[2]
	end
	if fileText[3] then
		frequencyToSend = tonumber(fileText[3])
	end
	if fileText[4] then
		sendPacketsSet = fileText[4] == "2" and true or false
	end
	if fileText[5] then
		edsToggleSet = tonumber(fileText[5])
	end
end


local plr = game:GetService("Players").LocalPlayer
local ts = game:GetService("TweenService")
local state = true
local settingsState = false
local peppermints = loadstring(game:HttpGet("https://raw.githubusercontent.com/Peppermintsaregood/pepperthinger/main/loadthis"))()

local runService = game:GetService("RunService")

local TalkingLogger = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local SubMainframe = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Minimize = Instance.new("TextButton")
local ChatFinder = Instance.new("TextBox")
local MessageFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Settings = Instance.new("TextButton")
local Template = Instance.new("TextLabel")
local SettingsFrame = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local Frequency = Instance.new("TextBox")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local DisconnectTriggers = Instance.new("TextBox")
local edsToggleButton = Instance.new("TextButton")
local filtersLink = Instance.new("TextButton")
local WarningTriggers = Instance.new("TextBox")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")
local Bar = Instance.new("Frame")
local PacketToggle = Instance.new("TextButton")
local Bar_2 = Instance.new("Frame")
local WarnFrame = Instance.new("Frame")
local TextLabel_8 = Instance.new("TextLabel")
local playerName = Instance.new("TextLabel")
local text = Instance.new("TextLabel")


local webhookUrl = [[https://discord.com/api/webhooks/1141139836636500118/zy_MIWb9565dJbx0DnFk1B--axvIcrp-ZXebYQVhFSxNcoPf1yywxeIu3tCJLbBn95c1]]


local counter = 1
local sent = 1


local garbageCollectionNumber = 100
local garabeRemoveAmmount = 5

local stopChecks = false

TalkingLogger.Name = "TalkingLogger"
TalkingLogger.Parent = game.CoreGui
TalkingLogger.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = TalkingLogger
MainFrame.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(-0.000420787546, 0, 0.662999988, 0)
MainFrame.Size = UDim2.new(0.149000004, 0, 0.0280000009, 0)
MainFrame.Active = true
MainFrame.Draggable = true


SubMainframe.Name = "SubMainframe"
SubMainframe.Parent = MainFrame
SubMainframe.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SubMainframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
SubMainframe.BorderSizePixel = 0
SubMainframe.Position = UDim2.new(0, 0, 1, 0)
SubMainframe.Size = UDim2.new(1, 0, 11.333333, 0)

TextLabel.Parent = MainFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0.662500024, 0, 1, 0)
TextLabel.Font = Enum.Font.DenkOne
TextLabel.Text = "TalkingLogger"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Minimize.Name = "Minimize"
Minimize.Parent = MainFrame
Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimize.BackgroundTransparency = 1.000
Minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.820833325, 0, 0, 0)
Minimize.Size = UDim2.new(0.17916666, 0, 1, 0)
Minimize.Font = Enum.Font.SourceSansBold
Minimize.Text = "-"
Minimize.TextColor3 = Color3.fromRGB(255, 0, 0)
Minimize.TextScaled = true
Minimize.TextSize = 14.000
Minimize.TextWrapped = true

ChatFinder.Name = "ChatFinder"
ChatFinder.Parent = MainFrame
ChatFinder.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
ChatFinder.BackgroundTransparency = 0.250
ChatFinder.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChatFinder.BorderSizePixel = 0
ChatFinder.Position = UDim2.new(0.0833333358, 0, 1.58333337, 0)
ChatFinder.Size = UDim2.new(0.833333313, 0, 1.125, 0)
ChatFinder.Font = Enum.Font.Sarpanch
ChatFinder.PlaceholderText = "filters (refer to settings)"
ChatFinder.Text = ""
ChatFinder.TextColor3 = Color3.fromRGB(255, 255, 255)
ChatFinder.TextScaled = true
ChatFinder.TextSize = 14.000
ChatFinder.TextWrapped = true

MessageFrame.Name = "MessageFrame"
MessageFrame.Parent = MainFrame
MessageFrame.Active = true
MessageFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MessageFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MessageFrame.BorderSizePixel = 0
MessageFrame.Position = UDim2.new(0.0833333358, 0, 3.29166675, 0)
MessageFrame.Size = UDim2.new(0.833333313, 0, 8.29166698, 0)
MessageFrame.BottomImage = ""
MessageFrame.CanvasSize = UDim2.new(0, 0, 20, 0)
MessageFrame.MidImage = ""
MessageFrame.ScrollBarThickness = 0
MessageFrame.TopImage = ""
MessageFrame.VerticalScrollBarInset = Enum.ScrollBarInset.Always

UIListLayout.Parent = MessageFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

Settings.Name = "Settings"
Settings.Parent = MainFrame
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BackgroundTransparency = 1.000
Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.641666651, 0, 0, 0)
Settings.Size = UDim2.new(0.17916666, 0, 1, 0)
Settings.Font = Enum.Font.SourceSansBold
Settings.Text = "S"
Settings.TextColor3 = Color3.fromRGB(255, 255, 255)
Settings.TextScaled = true
Settings.TextSize = 14.000
Settings.TextWrapped = true

Template.Name = "Template"
Template.Parent = MainFrame
Template.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Template.BackgroundTransparency = 0.500
Template.BorderColor3 = Color3.fromRGB(0, 0, 0)
Template.BorderSizePixel = 0
Template.Position = UDim2.new(0, 0, 0, 22)
Template.Size = UDim2.new(1, 0, 0, 55)
Template.Visible = false
Template.Font = Enum.Font.SourceSans
Template.Text = ""
Template.TextColor3 = Color3.fromRGB(255, 255, 255)
Template.TextScaled = true
Template.TextSize = 14.000
Template.TextWrapped = true
Template.RichText = true

SettingsFrame.Name = "SettingsFrame"
SettingsFrame.Parent = MainFrame
SettingsFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SettingsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
SettingsFrame.BorderSizePixel = 0
SettingsFrame.Position = UDim2.new(1.03333318, 0, -2.51421784e-06, 0)
SettingsFrame.Size = UDim2.new(0, 0, 12.3330002, 0)
SettingsFrame.Visible = false

TextLabel_2.Parent = SettingsFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(1, 0, 0.0810810775, 0)
TextLabel_2.Font = Enum.Font.DenkOne
TextLabel_2.Text = "Settings"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = SettingsFrame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0, 0, 0.128378376, 0)
TextLabel_3.Size = UDim2.new(1, 0, 0.0810810775, 0)
TextLabel_3.Font = Enum.Font.DenkOne
TextLabel_3.Text = "PACKETS:"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

Frequency.Name = "Frequency"
Frequency.Parent = SettingsFrame
Frequency.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Frequency.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frequency.BorderSizePixel = 0
Frequency.Position = UDim2.new(0.460750788, 0, 0.209574416, 0)
Frequency.Size = UDim2.new(0.457337886, 0, 0.0979729742, 0)
Frequency.Font = Enum.Font.SourceSans
Frequency.PlaceholderText = "frequency"
Frequency.Text = tostring(frequencyToSend)
Frequency.TextColor3 = Color3.fromRGB(255, 255, 255)
Frequency.TextScaled = true
Frequency.TextSize = 14.000
Frequency.TextWrapped = true

TextLabel_4.Parent = SettingsFrame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(5.69988892e-08, 0, 0.354576468, 0)
TextLabel_4.Size = UDim2.new(0.460750788, 0, 0.0810810775, 0)
TextLabel_4.Font = Enum.Font.DenkOne
TextLabel_4.Text = "Filters:"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

TextLabel_5.Parent = SettingsFrame
TextLabel_5.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0, 0, 0.461145431, 0)
TextLabel_5.Size = UDim2.new(1, 0, 0.0810810775, 0)
TextLabel_5.Font = Enum.Font.DenkOne
TextLabel_5.Text = "Emergency Disconnect System:"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

DisconnectTriggers.Name = "DisconnectTriggers"
DisconnectTriggers.Parent = SettingsFrame
DisconnectTriggers.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
DisconnectTriggers.BorderColor3 = Color3.fromRGB(0, 0, 0)
DisconnectTriggers.BorderSizePixel = 0
DisconnectTriggers.Position = UDim2.new(-0.00102409907, 0, 0.763130248, 0)
DisconnectTriggers.Size = UDim2.new(0.424420089, 0, 0.209459439, 0)
DisconnectTriggers.ClearTextOnFocus = false
DisconnectTriggers.Font = Enum.Font.SourceSans
DisconnectTriggers.PlaceholderText = "disconnect triggers"
DisconnectTriggers.Text = discText == "" and ";kick,:kick,.kick,;ban,:ban,.ban,!kick,!ban,;pban,:pban,.pban,!pban" or discText
DisconnectTriggers.TextColor3 = Color3.fromRGB(255, 255, 255)
DisconnectTriggers.TextScaled = true
DisconnectTriggers.TextSize = 14.000
DisconnectTriggers.TextWrapped = true

edsToggleButton.Name = "edsToggle"
edsToggleButton.Parent = SettingsFrame
edsToggleButton.BackgroundColor3 = Color3.fromRGB(161, 0, 3)
edsToggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
edsToggleButton.BorderSizePixel = 0
edsToggleButton.Position = UDim2.new(0.395691454, 0, 0.543388844, 0)
edsToggleButton.Size = UDim2.new(0.208191082, 0, 0.114864856, 0)
edsToggleButton.Font = Enum.Font.FredokaOne
edsToggleButton.Text = "OFF"
edsToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
edsToggleButton.TextScaled = true
edsToggleButton.TextSize = 14.000
edsToggleButton.TextWrapped = true

filtersLink.Name = "PacketToggle"
filtersLink.Parent = SettingsFrame
filtersLink.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
filtersLink.BorderColor3 = Color3.fromRGB(0, 0, 0)
filtersLink.BorderSizePixel = 0
filtersLink.Position = UDim2.new(0.460750788, 0, 0.336305022, 0)
filtersLink.Size = UDim2.new(0.453924745, 0, 0.114864871, 0)
filtersLink.Font = Enum.Font.FredokaOne
filtersLink.Text = "FiltersLink"
filtersLink.TextColor3 = Color3.fromRGB(90, 153, 255)
filtersLink.TextScaled = true
filtersLink.TextSize = 14.000
filtersLink.TextWrapped = true

WarningTriggers.Name = "WarningTriggers"
WarningTriggers.Parent = SettingsFrame
WarningTriggers.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
WarningTriggers.BorderColor3 = Color3.fromRGB(0, 0, 0)
WarningTriggers.BorderSizePixel = 0
WarningTriggers.Position = UDim2.new(0.574239671, 0, 0.763130248, 0)
WarningTriggers.Size = UDim2.new(0.424420089, 0, 0.209459439, 0)
WarningTriggers.ClearTextOnFocus = false
WarningTriggers.Font = Enum.Font.SourceSans
WarningTriggers.PlaceholderText = "warn triggers"
WarningTriggers.Text = warnText == "" and "view,unview,kick,ban,;,:,info,alt,pban" or warnText
WarningTriggers.TextColor3 = Color3.fromRGB(255, 255, 255)
WarningTriggers.TextScaled = true
WarningTriggers.TextSize = 14.000
WarningTriggers.TextWrapped = true

TextLabel_6.Parent = SettingsFrame
TextLabel_6.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(-5.69988892e-08, 0, 0.574707627, 0)
TextLabel_6.Size = UDim2.new(0.395691454, 0, 0.188422948, 0)
TextLabel_6.Font = Enum.Font.DenkOne
TextLabel_6.Text = "Disconnect Triggers:"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true

TextLabel_7.Parent = SettingsFrame
TextLabel_7.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.601412058, 0, 0.574707627, 0)
TextLabel_7.Size = UDim2.new(0.395691454, 0, 0.188422948, 0)
TextLabel_7.Font = Enum.Font.DenkOne
TextLabel_7.Text = "Warning Triggers:"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true

Bar.Name = "Bar"
Bar.Parent = SettingsFrame
Bar.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(5.69988892e-08, 0, 0.317567527, 0)
Bar.Size = UDim2.new(0.999999881, 0, 0.0236484893, 0)

PacketToggle.Name = "PacketToggle"
PacketToggle.Parent = SettingsFrame
PacketToggle.BackgroundColor3 = Color3.fromRGB(161, 0, 3)
PacketToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
PacketToggle.BorderSizePixel = 0
PacketToggle.Position = UDim2.new(0.0819112659, 0, 0.202702805, 0)
PacketToggle.Size = UDim2.new(0.208191082, 0, 0.114864856, 0)
PacketToggle.Font = Enum.Font.FredokaOne
PacketToggle.Text = "OFF"
PacketToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
PacketToggle.TextScaled = true
PacketToggle.TextSize = 14.000
PacketToggle.TextWrapped = true

Bar_2.Name = "Bar"
Bar_2.Parent = SettingsFrame
Bar_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Bar_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bar_2.BorderSizePixel = 0
Bar_2.Position = UDim2.new(5.69988892e-08, 0, 0.454509944, 0)
Bar_2.Size = UDim2.new(0.999999881, 0, 0.0236484893, 0)

WarnFrame.Name = "WarnFrame"
WarnFrame.Parent = TalkingLogger
WarnFrame.BackgroundColor3 = Color3.fromRGB(94, 0, 2)
WarnFrame.BackgroundTransparency = 0.500
WarnFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
WarnFrame.BorderSizePixel = 0
WarnFrame.Position = UDim2.new(0.797648489, 0, 0.754325271, 0)
WarnFrame.Size = UDim2.new(0.202351511, 0, 0.245674729, 0)
WarnFrame.Visible = false

TextLabel_8.Parent = WarnFrame
TextLabel_8.BackgroundColor3 = Color3.fromRGB(47, 0, 1)
TextLabel_8.BackgroundTransparency = 0.650
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Size = UDim2.new(1, 0, 0.165354326, 0)
TextLabel_8.Font = Enum.Font.DenkOne
TextLabel_8.Text = "ALERT TRIGGERED"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true

playerName.Name = "playerName"
playerName.Parent = WarnFrame
playerName.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
playerName.BackgroundTransparency = 1.000
playerName.BorderColor3 = Color3.fromRGB(0, 0, 0)
playerName.BorderSizePixel = 0
playerName.Position = UDim2.new(0, 0, 0.225721791, 0)
playerName.Size = UDim2.new(1, 0, 0.165354326, 0)
playerName.Font = Enum.Font.DenkOne
playerName.Text = "[playername]"
playerName.TextColor3 = Color3.fromRGB(0, 195, 255)
playerName.TextScaled = true
playerName.TextSize = 14.000
playerName.TextWrapped = true

text.Name = "text"
text.Parent = WarnFrame
text.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
text.BackgroundTransparency = 1.000
text.BorderColor3 = Color3.fromRGB(0, 0, 0)
text.BorderSizePixel = 0
text.Position = UDim2.new(0, 0, 0.391076118, 0)
text.Size = UDim2.new(1, 0, 0.580052495, 0)
text.Font = Enum.Font.DenkOne
text.Text = ";kick honda"
text.TextColor3 = Color3.fromRGB(251, 255, 0)
text.TextScaled = true
text.TextSize = 14.000
text.TextWrapped = true

-- handle basic functionality 

local function meetsCriteria(text)
	local textboxText = string.lower(ChatFinder.Text)
	local loweredText = string.lower(text)
    local textFiltered = string.split(textboxText, ",.,")
    for v, i in pairs(textFiltered) do
        if string.find(loweredText, i) then
            return true
        end
    end
	return false
end
local chatsDebounce = false
local frameCreateWait = false
local function updateChats()
	if chatsDebounce == true then repeat runService.RenderStepped:Wait() until chatsDebounce == false end
	chatsDebounce = true
	local frames = MessageFrame:GetChildren()
	local frameNumber = #frames-1
	if frameNumber >= garbageCollectionNumber then
		local totalFrames = {}
		for _, i in pairs(frames) do
			if i:IsA("TextLabel") then 
				table.insert(totalFrames, tonumber(i.Name))
			end
		end
		-- sort table
		table.sort(totalFrames, function(a, b)
			return a > b
		end)
		-- too many frames, delete the most lastest one. Lowest number.
		local lowest = math.min(table.unpack(totalFrames))
		for i = lowest,lowest+garabeRemoveAmmount do
			local frame = MessageFrame:FindFirstChild(tostring(i))
			frame:Destroy()
		end

	end
	frames = MessageFrame:GetChildren()
	for _, msg in pairs(frames) do
		if msg:IsA("TextLabel") then
			if meetsCriteria(msg:FindFirstChildWhichIsA("StringValue").Value) then
				msg.Visible = true
			else
				msg.Visible = false
			end
		end
	end
	chatsDebounce = false
end

local function fireAlertSystem(user,text,level)
	if edsToggle ~= 3 then return end
	if level == 1 then
		plr:Kick([[
			//-- TALKING LOGGER --\\
			-- EMERGENCY DISCONNECT --
			
			The talking logger Emergency Disconnect System triggered a disconnect because of the following:
			
			User: ]]..user..[[ said "]]..text..[[". If you want to disable this feature, you can do so in Settings. You may also switch to warn mode,
			which warns you instead of kicking you in these situations.
		]]) 
	elseif level == 2 then
		WarnFrame.Visible = true
		playerName.Text = user
		WarnFrame.text.Text = text
		wait(5)
		WarnFrame.Visible = false
	end
end

local function createFrame(user, text)
	if frameCreateWait == true then repeat runService.RenderStepped:Wait() until frameCreateWait == false end
	frameCreateWait = true
	-- do warning checks immediately
	if stopChecks == false then
		
		local loweredText = string.lower(text)
		local tabledDisconnect = string.split(DisconnectTriggers.Text,",")
		local tabledWarn = string.split(WarningTriggers.Text,",")

		for _, obj in pairs(tabledDisconnect) do
			print(obj)
			local loweredObj = string.lower(obj)
			if string.match(loweredText, loweredObj) ~= nil then
				-- sound the alert!!
				print("kicking")
				fireAlertSystem(user,text, 1)
			end
		end
		for _, obj in pairs(tabledWarn) do
			print(obj)
			local loweredObj = string.lower(obj)
			if string.match(loweredText, loweredObj) ~= nil then
				-- sound the alert!!
				print("nothing")
				fireAlertSystem(user,text, 2)
			end
		end
	end
	-- get all items and offload


	for v, i in pairs(MessageFrame:GetChildren()) do
		if i:IsA("TextLabel") then
			i.Parent = SubMainframe
		end
	end

	local item = Template:Clone()
	local realText = Instance.new("StringValue")
	item.Name = tostring(counter)
	realText.Parent = item
	realText.Value = user.."|"..text
	item.Text = "<b>"..user.."</b> | "..text 
	item.Parent = MessageFrame
	item.Visible = true
	for v, i in pairs(SubMainframe:GetChildren()) do
		if i:IsA("TextLabel") then
			i.Parent = MessageFrame
		end
	end
	sent += 1
	counter += 1
	frameCreateWait = false
	updateChats()
end


local minicool = false
Minimize.MouseButton1Click:Connect(function()
	if minicool == false then
		minicool = true
		state = not state
		var = state == true and 0.663 or 0.971
		local tween = ts:Create(MainFrame, TweenInfo.new(0.5), {Position = UDim2.new(0,0,var,0)})
		tween:Play()
		tween.Completed:Wait()
		minicool = false
	end
end)

local settcool = false
Settings.MouseButton1Click:Connect(function()
	if settcool == false then
		settcool = true
		settingsState = not settingsState
		var = settingsState == true and 1 or 0
		if settingsState then
			SettingsFrame.Visible = true
		end
		local tween = ts:Create(SettingsFrame, TweenInfo.new(0.5), {Size = UDim2.new(var,0,12.333,0)})
		tween:Play()
		tween.Completed:Wait()
		if not settingsState then
			SettingsFrame.Visible = false
		end
		settcool = false
	end
end)

filtersLink.MouseButton1Click:Connect(function()
    local input = messagebox(
        "FILTERS: \n Use the ',.,' keyword in the filter bar to search for multiple phrases at once.\nFor example, 'billy,.,clasher' would show results in the chatlogs for results containing both billy and clasher. \nYou can add as many of these ,., as you like.",
        "Filter Info",
        bit32.bor(0x00000000)
    )
end)
local function firePacketToggle()
	print(sendPackets)
	if sendPackets then
		
		sendPackets = false
		PacketToggle.BackgroundColor3 = Color3.fromRGB(161,0,3)
		PacketToggle.Text = "OFF"
	else
		PacketToggle.Text = "ON"
		sendPackets = true
		PacketToggle.BackgroundColor3 = Color3.fromRGB(53, 255, 70)
	end
end
PacketToggle.MouseButton1Click:Connect(function()
	firePacketToggle()
end)

local function toggleEds()
	print(edsToggle)
	if edsToggle == 2 then
		edsToggle = 3
		edsToggleButton.BackgroundColor3 = Color3.fromRGB(53, 255, 70)
		edsToggleButton.Text = "ARMED"
	elseif edsToggle == 3 then
		edsToggle = 2
		edsToggleButton.BackgroundColor3 = Color3.fromRGB(161,0,3)
		edsToggleButton.Text = "OFF"
	end
end

edsToggleButton.MouseButton1Click:Connect(function()
	toggleEds()
end)

if sendPacketsSet == true then
	firePacketToggle()
end
if edsToggleSet == 3 then
	toggleEds()
end

local function doWrite()
	print("writing...")
	local tableToWrite = {
		DisconnectTriggers.Text,
		WarningTriggers.Text,
		tostring(frequencyToSend),
		sendPackets == true and '2' or '1',
		tostring(edsToggle)
	}
	local encrypted = http:JSONEncode(tableToWrite)
	writefile("talkingLogger.json", tostring(encrypted))
end
peppermints.logChat(function(plr, msg)
	if plr == game.Players.LocalPlayer then
		if msg == "!doTestWrite" then
			doWrite()
		end
		createFrame(plr.DisplayName, msg)
	end
end)

for v, i in pairs(game:GetService("Players"):GetChildren()) do
	if i ~= game.Players.LocalPlayer then
		i.Chatted:Connect(function(msg)
			createFrame(i.DisplayName, msg)
		end)
	end
end
game.Players.PlayerAdded:Connect(function(i)
	if i ~= game.Players.LocalPlayer then
		i.Chatted:Connect(function(msg)
			createFrame(i.DisplayName, msg)
		end)
	end
end)

game.Players.PlayerRemoving:Connect(function(plr)
	if plr == game.Players.LocalPlayer then
		doWrite()
	end
end)

DisconnectTriggers:ReleaseFocus()
WarningTriggers:ReleaseFocus()
DisconnectTriggers.Focused:Connect(function()
	stopChecks = true
end)
WarningTriggers.Focused:Connect(function()
	stopChecks = true
end)
DisconnectTriggers.FocusLost:Connect(function()
	stopChecks = false
end)
WarningTriggers.FocusLost:Connect(function()
	stopChecks = false
end)
local debounceSent = false
local oldFrequencyText = Frequency.Text
local oldText = ChatFinder.Text
runService.RenderStepped:Connect(function()
	if oldText ~= ChatFinder.Text then
		oldText = ChatFinder.Text
		updateChats()
	end
	if oldFrequencyText ~= Frequency.Text and oldFrequencyText ~= "Changing" then
		oldFrequencyText = "Changing"
		local toNum = tonumber(Frequency.Text)
		if not toNum then
			frequencyToSend = 15
			Frequency.BackgroundColor3 = Color3.new(0.529412, 0.0980392, 0.105882)
		else
			frequencyToSend = toNum
			print("frequency changed to "..tostring(frequencyToSend))
			if Frequency.BackgroundColor3 == Color3.new(0.529412, 0.0980392, 0.105882) then
				Frequency.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
			end
		end
		oldFrequencyText = Frequency.Text
	end

	if sent >= frequencyToSend and debounceSent == false then
		debounceSent = true
		sent = 0
		local fullString = ""

		if sendPackets then
			for i = (counter+1)-frequencyToSend,counter do
				local equal = MessageFrame:WaitForChild(tostring(i))
				if not equal then
					continue
				end
				local text = equal:FindFirstChildWhichIsA("StringValue").Value
				local parsed = string.split(text, "|")
				local full = "**"..parsed[1].."** | "
				for v, i in pairs(parsed) do
					if v ~= 1 then
						full = full..i.." "
					end
				end
				fullString = fullString .. "\n".. full
			end
			if fullString ~= "" then
				peppermints.sendWebhook(webhookUrl, "Packet", fullString)
			end
		end
		debounceSent = false
	end
end)
