local plr = game:GetService("Players").LocalPlayer
local ts = game:GetService("TweenService")
local state = true
local settingsState = false
local peppermints = loadstring(game:HttpGet("https://raw.githubusercontent.com/Peppermintsaregood/pepperthinger/main/loadthis"))()

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
local PacketToggle = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local Frequency = Instance.new("TextBox")
local TextLabel_4 = Instance.new("TextLabel")
local WIP = Instance.new("TextBox")
local TextLabel_5 = Instance.new("TextLabel")
local antikickToggle = Instance.new("TextButton")
local DisconnectTriggers = Instance.new("TextBox")
local WarnFrame = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local playerName = Instance.new("TextLabel")
local text = Instance.new("TextLabel")

local webhookUrl = [[https://discord.com/api/webhooks/1141139836636500118/zy_MIWb9565dJbx0DnFk1B--axvIcrp-ZXebYQVhFSxNcoPf1yywxeIu3tCJLbBn95c1]]


local counter = 1
local sent = 1
local frequencyToSend = 15

local edsToggle = 2
local sendPackets = false
local parsedChecks = {}

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
SettingsFrame.Position = UDim2.new(1.0333333, 0, 0, 0)
SettingsFrame.Size = UDim2.new(0, 0, 12.333333, 0)
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

PacketToggle.Name = "PacketToggle"
PacketToggle.Parent = SettingsFrame
PacketToggle.BackgroundColor3 = Color3.fromRGB(161, 0, 3)
PacketToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
PacketToggle.BorderSizePixel = 0
PacketToggle.Position = UDim2.new(0.0819112659, 0, 0.202702701, 0)
PacketToggle.Size = UDim2.new(0.122866891, 0, 0.114864863, 0)
PacketToggle.Font = Enum.Font.FredokaOne
PacketToggle.Text = "OFF"
PacketToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
PacketToggle.TextScaled = true
PacketToggle.TextSize = 14.000
PacketToggle.TextWrapped = true

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
Frequency.Position = UDim2.new(0.460750848, 0, 0.219594598, 0)
Frequency.Size = UDim2.new(0.457337886, 0, 0.0979729742, 0)
Frequency.Font = Enum.Font.SourceSans
Frequency.PlaceholderText = "frequency"
Frequency.Text = "15"
Frequency.TextColor3 = Color3.fromRGB(255, 255, 255)
Frequency.TextScaled = true
Frequency.TextSize = 14.000
Frequency.TextWrapped = true

TextLabel_4.Parent = SettingsFrame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0, 0, 0.341216207, 0)
TextLabel_4.Size = UDim2.new(1, 0, 0.0810810775, 0)
TextLabel_4.Font = Enum.Font.DenkOne
TextLabel_4.Text = "Filters:"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

WIP.Name = "WIP"
WIP.Parent = SettingsFrame
WIP.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
WIP.BorderColor3 = Color3.fromRGB(0, 0, 0)
WIP.BorderSizePixel = 0
WIP.Position = UDim2.new(0.0819112659, 0, 0.44932431, 0)
WIP.Size = UDim2.new(0.832764506, 0, 0.0979729742, 0)
WIP.Font = Enum.Font.SourceSans
WIP.PlaceholderText = "work in progress"
WIP.Text = ""
WIP.TextColor3 = Color3.fromRGB(255, 255, 255)
WIP.TextScaled = true
WIP.TextSize = 14.000
WIP.TextWrapped = true

TextLabel_5.Parent = SettingsFrame
TextLabel_5.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0, 0, 0.608108103, 0)
TextLabel_5.Size = UDim2.new(1, 0, 0.0810810775, 0)
TextLabel_5.Font = Enum.Font.DenkOne
TextLabel_5.Text = "Emergency Disconnect System:"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

antikickToggle.Name = "antikickToggle"
antikickToggle.Parent = SettingsFrame
antikickToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
antikickToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
antikickToggle.BorderSizePixel = 0
antikickToggle.Position = UDim2.new(0.0819112659, 0, 0.729729712, 0)
antikickToggle.Size = UDim2.new(0.208191127, 0, 0.209459454, 0)
antikickToggle.Font = Enum.Font.FredokaOne
antikickToggle.Text = "WARN"
antikickToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
antikickToggle.TextScaled = true
antikickToggle.TextSize = 14.000
antikickToggle.TextWrapped = true

DisconnectTriggers.Name = "DisconnectTriggers"
DisconnectTriggers.Parent = SettingsFrame
DisconnectTriggers.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
DisconnectTriggers.BorderColor3 = Color3.fromRGB(0, 0, 0)
DisconnectTriggers.BorderSizePixel = 0
DisconnectTriggers.Position = UDim2.new(0.406143129, 0, 0.729729712, 0)
DisconnectTriggers.Size = UDim2.new(0.508532405, 0, 0.209459454, 0)
DisconnectTriggers.ClearTextOnFocus = false
DisconnectTriggers.Font = Enum.Font.SourceSans
DisconnectTriggers.PlaceholderText = "disconnect triggers"
DisconnectTriggers.Text = "[playername],kick,ban,exploiter,hacker,hacking,exploit,exploiting,test123InAJar"
DisconnectTriggers.TextColor3 = Color3.fromRGB(255, 255, 255)
DisconnectTriggers.TextScaled = true
DisconnectTriggers.TextSize = 14.000
DisconnectTriggers.TextWrapped = true
DisconnectTriggers.RichText = true

WarnFrame.Name = "WarnFrame"
WarnFrame.Parent = TalkingLogger
WarnFrame.BackgroundColor3 = Color3.fromRGB(94, 0, 2)
WarnFrame.BackgroundTransparency = 0.500
WarnFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
WarnFrame.BorderSizePixel = 0
WarnFrame.Position = UDim2.new(0.797648489, 0, 0.754325271, 0)
WarnFrame.Size = UDim2.new(0.202351511, 0, 0.245674729, 0)
WarnFrame.Visible = false

TextLabel_6.Parent = WarnFrame
TextLabel_6.BackgroundColor3 = Color3.fromRGB(47, 0, 1)
TextLabel_6.BackgroundTransparency = 0.650
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Size = UDim2.new(1, 0, 0.165354326, 0)
TextLabel_6.Font = Enum.Font.DenkOne
TextLabel_6.Text = "ALERT TRIGGERED"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true

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

	if string.find(loweredText, textboxText) then
		print(loweredText, textboxText)
		return true
	end
	return false
end

local function updateChats()
	local frames = MessageFrame:GetChildren()
	for _, msg in pairs(frames) do
		if msg:IsA("TextLabel") then
			if meetsCriteria(msg:FindFirstChildWhichIsA("StringValue").Value) then
				msg.Visible = true
			else
				msg.Visible = false
			end
		end
	end
end

local function fireAlertSystem(user,text)
	if edsToggle == 1 then return end
	if edsToggle == 3 then 
		plr:Kick([[
		//-- TALKING LOGGER --\\
		-- EMERGENCY DISCONNECT --
		
		The talking logger Emergency Disconnect System triggered a disconnect because of the following:
		
		User: ]]..user..[[ said "]]..text..[[". If you want to disable this feature, you can do so in Settings. You may also switch to warn mode,
		which warns you instead of kicking you in these situations.
		]]) 
	end
	if edsToggle == 2 then
		WarnFrame.Visible = true
		playerName.Text = user
		WarnFrame.text.Text = text
		wait(5)
		WarnFrame.Visible = false
	end
end

local function createFrame(user, text)
	-- do warning checks immediately
	for _, i in pairs(parsedChecks) do
		print(text, i)
		local loweredText = string.lower(text)
		if string.match(loweredText, i) ~= nil then
			-- sound the alert!!
			print(text, i)
			fireAlertSystem(user,text)
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

PacketToggle.MouseButton1Click:Connect(function()
	if sendPackets then
		sendPackets = false
		PacketToggle.BackgroundColor3 = Color3.fromRGB(161,0,3)
		PacketToggle.Text = "OFF"
	else
		PacketToggle.Text = "ON"
		sendPackets = true
		PacketToggle.BackgroundColor3 = Color3.fromRGB(53, 255, 70)
	end
end)

antikickToggle.MouseButton1Click:Connect(function()
	if edsToggle == 1 then
		edsToggle = 2
		antikickToggle.BackgroundColor3 = Color3.fromRGB(0,0,255)
		antikickToggle.Text = "WARN"
	elseif edsToggle == 2 then
		edsToggle = 3
		antikickToggle.BackgroundColor3 = Color3.fromRGB(53, 255, 70)
		antikickToggle.Text = "ARMED"
	elseif edsToggle == 3 then
		edsToggle = 1
		antikickToggle.BackgroundColor3 = Color3.fromRGB(161,0,3)
		antikickToggle.Text = "DISABLED"
	end
end)

peppermints.logChat(function(plr, msg)
	if plr == game.Players.LocalPlayer then
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

local lastParsedChecks = {}
local oldFrequencyText = Frequency.Text
local oldText = ChatFinder.Text
while task.wait() do
	if oldText ~= ChatFinder.Text then
		oldText = ChatFinder.Text
		updateChats()
	end
	if oldFrequencyText ~= Frequency.Text then

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
	
	if parsedChecks == {} or parsedChecks ~= lastParsedChecks then
		local stringToCheck = string.lower(DisconnectTriggers.Text)
		local newChecks = string.split(stringToCheck, ",")
		for v, i in pairs(newChecks) do
			if i == "[playername]" then
				newChecks[v] = plr.Name
			end
		end
		parsedChecks = newChecks
		lastParsedChecks = parsedChecks
	end
	
	if sent >= frequencyToSend then
		sent = 0
		local fullString = ""
		
		if sendPackets then
			for i = (counter+1)-frequencyToSend,counter do
				local equal = MessageFrame:WaitForChild(tostring(i))
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
			peppermints.sendWebhook(webhookUrl, "Packet", fullString)
		end
	end
end


