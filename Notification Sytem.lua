-- Notification UI (Notification System)
if game:GetService("CoreGui"):FindFirstChild("NotificationUI") then
game.CoreGui.NotificationUI:Destroy()
end
local NotificationUI = Instance.new("ScreenGui")
local Notifications = Instance.new("Folder")
local NotificationTemplate = Instance.new("ImageLabel")
local Header = Instance.new("ImageLabel")
local HeaderLabel = Instance.new("TextLabel")
local Text = Instance.new("TextLabel")
NotificationUI.Name = "NotificationUI"
NotificationUI.Parent = game.CoreGui
NotificationUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Notifications.Name = "Notifications"
Notifications.Parent = NotificationUI
NotificationTemplate.Name = "NotificationTemplate"
NotificationTemplate.Parent = NotificationUI
NotificationTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NotificationTemplate.BackgroundTransparency = 1.000
NotificationTemplate.Position = UDim2.new(1.5, 0, 0.850000024, 0)
NotificationTemplate.Size = UDim2.new(0, 137, 0, 71)
NotificationTemplate.Image = "rbxassetid://3570695787"
NotificationTemplate.ImageColor3 = Color3.fromRGB(40, 40, 40)
NotificationTemplate.ScaleType = Enum.ScaleType.Slice
NotificationTemplate.SliceCenter = Rect.new(100, 100, 100, 100)
NotificationTemplate.SliceScale = 0.120
Header.Name = "Header"
Header.Parent = NotificationTemplate
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.BackgroundTransparency = 1.000
Header.Position = UDim2.new(0.109999999, 0, -0.100000001, 0)
Header.Size = UDim2.new(0, 107, 0, 23)
Header.Image = "rbxassetid://3570695787"
Header.ImageColor3 = Color3.fromRGB(30, 30, 30)
Header.ScaleType = Enum.ScaleType.Slice
Header.SliceCenter = Rect.new(100, 100, 100, 100)
Header.SliceScale = 0.120
HeaderLabel.Name = "HeaderLabel"
HeaderLabel.Parent = Header
HeaderLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HeaderLabel.BorderSizePixel = 0
HeaderLabel.Position = UDim2.new(0.0799999982, 0, 0.0430000015, 0)
HeaderLabel.Size = UDim2.new(0, 90, 0, 21)
HeaderLabel.Font = Enum.Font.SourceSansSemibold
HeaderLabel.Text = "Welcome Weeb"
HeaderLabel.TextColor3 = Color3.fromRGB(255, 85, 0)
HeaderLabel.TextSize = 16.000
Text.Name = "Text"
Text.Parent = NotificationTemplate
Text.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.050999999, 0, 0.25, 0)
Text.Size = UDim2.new(0, 123, 0, 42)
Text.Font = Enum.Font.SourceSansSemibold
Text.Text = "Go Do Your Add Maths And Stop Playing This Game"
Text.TextColor3 = Color3.fromRGB(255, 85, 0)
Text.TextScaled = true
Text.TextSize = 18.000
Text.TextWrapped = true
-- Notification Function Script (Notification System)
local function HJDA_fake_script() 
	local script = Instance.new('LocalScript', NotificationUI)

	UI = game.CoreGui.NotificationUI
	MaxNotifications = 10
	NotificationDuration = 3
	
	function createNotification(HeaderText, NotificationText)
		local Notifications = UI.Notifications:GetChildren()
		if #Notifications >= MaxNotifications then
			Notifications[1]:TweenPosition(UDim2.new(1.5, 0, Notifications[1].Position.Y.Scale, 0),"InOut","Linear",0.2,true);wait(0.2)
			Notifications[1]:Destroy()
			for i,v in pairs(Notifications) do if v ~= nil then
					v:TweenPosition(UDim2.new(0.893, 0, v.Position.Y.Scale - 0.12, 0),"InOut","Linear",0.2,true)
				end
			end
			local NewNotification = UI.NotificationTemplate:Clone()
			NewNotification.Name = tostring(#Notifications+1)
			NewNotification.Parent = UI.Notifications
			NewNotification.Text.Text = NotificationText
			NewNotification.Header.HeaderLabel.Text = HeaderText
			NewNotification:TweenPosition(UDim2.new(0.893, 0, 0.890, 0),"InOut","Linear",0.2,true)
		else
			for i,v in pairs(Notifications) do
				v:TweenPosition(UDim2.new(0.893, 0, v.Position.Y.Scale - 0.12, 0),"InOut","Linear",0.2,true)
			end
			local NewNotification = UI.NotificationTemplate:Clone()
			NewNotification.Name = tostring(#Notifications+1)
			NewNotification.Parent = UI.Notifications
			NewNotification.Text.Text = NotificationText
			NewNotification.Header.HeaderLabel.Text = HeaderText
			NewNotification:TweenPosition(UDim2.new(0.893, 0, 0.890, 0),"InOut","Linear",0.2,true)
			delay(NotificationDuration,function()
				NewNotification:TweenPosition(UDim2.new(1.5, 0, NewNotification.Position.Y.Scale, 0),"InOut","Linear",0.2,true);wait(0.2)
				NewNotification:Destroy()
			end)
		end
	end
end
coroutine.wrap(HJDA_fake_script)()
-- Notification Color According To Theme (Notification System)
local HeaderMessage = game.CoreGui.NotificationUI.NotificationTemplate.Header.HeaderLabel
local NotificationMessage = game.CoreGui.NotificationUI.NotificationTemplate.Text
if _Theme == "Dark" then
HeaderMessage.TextColor3 = Color3.fromRGB(255, 255, 255)
NotificationMessage.TextColor3 = Color3.fromRGB(255, 255, 255)
end
if _Theme == "Purple" then
HeaderMessage.TextColor3 = Color3.fromRGB(153,50,204)
NotificationMessage.TextColor3 = Color3.fromRGB(153,50,204)
end
if _Theme == "Orange" then
HeaderMessage.TextColor3 = Color3.fromRGB(255,67,0)
NotificationMessage.TextColor3 = Color3.fromRGB(255,67,0)
end
if _Theme == "Red" then
HeaderMessage.TextColor3 = Color3.fromRGB(255,20,0)
NotificationMessage.TextColor3 = Color3.fromRGB(255,20,0)
end
if _Theme == "Green" then
HeaderMessage.TextColor3 = Color3.fromRGB(32,173,32)
NotificationMessage.TextColor3 = Color3.fromRGB(32,173,32)
end
if _Theme == "Blue" then
HeaderMessage.TextColor3 = Color3.fromRGB(30,105,255)
NotificationMessage.TextColor3 = Color3.fromRGB(30,105,255)
end
