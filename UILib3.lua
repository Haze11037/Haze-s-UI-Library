local library = {}

local UILib = nil


function library.RefreshContenerSize(tabName)
	UILib.Frame.Main.Containers[tabName].CanvasSize = UDim2.new(0,0,0,0)
	
	for _,v in pairs(UILib.Frame.Main.Containers[tabName]:GetChildren()) do
		if not v:IsA"UIListLayout" then
			UILib.Frame.Main.Containers[tabName].CanvasSize = UILib.Frame.Main.Containers[tabName].CanvasSize + UDim2.new(0,0,0,v.Size.Y.Offset)
		end
	end
end


function library.CreateWindow(name,keybind)
	
	local UIS = game:GetService("UserInputService")
	
  if game.CoreGui:FindFirstChild("HAZEUILIBRARY") then
    game.CoreGui:FindFirstChild("HAZEUILIBRARY"):Destroy()
  end
  
	local UILibrary3 = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local Main = Instance.new("Frame")
	local Tabs = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local Tabs_2 = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local TextLabel = Instance.new("TextLabel")
	local Containers = Instance.new("Frame")
	local ImageLabel = Instance.new("ImageLabel")


	UILibrary3.Name = "HAZEUILIBRARY"
  syn.protect_gui(UILibrary3)
	UILibrary3.Parent = game:GetService("CoreGui")

	Frame.Parent = UILibrary3
	Frame.Active = true
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.Draggable = true
	Frame.Position = UDim2.new(0.297773659, 0, 0.380622834, 0)
	Frame.Size = UDim2.new(0, 420, 0, 19)

	Main.Name = "Main"
	Main.Parent = Frame
	Main.Active = true
	Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.Size = UDim2.new(0, 418, 0, 245)

	Tabs.Name = "Tabs"
	Tabs.Parent = Main
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Tabs.BorderSizePixel = 0
	Tabs.Position = UDim2.new(-0.000439438532, 0, 0.0801073313, 0)
	Tabs.Size = UDim2.new(1.00043964, 0, 0.108163267, 0)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(113, 113, 113)), ColorSequenceKeypoint.new(0.08, Color3.fromRGB(52, 52, 52)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(52, 52, 52)), ColorSequenceKeypoint.new(0.91, Color3.fromRGB(52, 52, 52)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(113, 113, 113))}
	UIGradient.Rotation = 90
	UIGradient.Parent = Tabs

	Tabs_2.Name = "Tabs"
	Tabs_2.Parent = Tabs
	Tabs_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Tabs_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabs_2.BackgroundTransparency = 1.000
	Tabs_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Tabs_2.BorderSizePixel = 0
	Tabs_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Tabs_2.Size = UDim2.new(0.967999995, 0, 1, 0)

	UIListLayout.Parent = Tabs_2
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 5)

	TextLabel.Parent = Main
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.0143540669, 0, 0, 0)
	TextLabel.Size = UDim2.new(0, 412, 0, 19)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = name
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 16.000
	TextLabel.TextStrokeTransparency = 0.000
	TextLabel.TextTransparency = 0.090
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	Containers.Name = "Containers"
	Containers.Parent = Main
	Containers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Containers.BackgroundTransparency = 1.000
	Containers.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Containers.BorderSizePixel = 0
	Containers.ClipsDescendants = true
	Containers.Position = UDim2.new(-0.000439438532, 0, 0.188270599, 0)
	Containers.Size = UDim2.new(1.00043964, 0, 0.811729312, 0)

	ImageLabel.Parent = Main
	ImageLabel.Active = true
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.Position = UDim2.new(0.5, 0, 0.502040803, 0)
	ImageLabel.Size = UDim2.new(1.05199921, 48, 1.06925225, 48)
	ImageLabel.ZIndex = 0
	ImageLabel.Image = "rbxassetid://6049668989"
	ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.ScaleType = Enum.ScaleType.Slice
	ImageLabel.SliceCenter = Rect.new(128, 128, 128, 128)
	ImageLabel.SliceScale = 0.350
	
	UILib = UILibrary3
	
	UIS.InputBegan:Connect(function(key)
		if key.KeyCode == Enum.KeyCode[keybind] then
			UILibrary3.Enabled = not UILibrary3.Enabled
		end
	end)	
end


function library.CreateTab(name)
	-- Create Tab
	local TextButton = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")
	local Frame = Instance.new("Frame")
	local UIGradient_2 = Instance.new("UIGradient")

	--Properties:

	TextButton.Parent = UILib.Frame.Main.Tabs.Tabs
	TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.BorderSizePixel = 0
	TextButton.Position = UDim2.new(0, 0, 0.179245278, 0)
	TextButton.Size = UDim2.new(0, 92, 0, 17)
	TextButton.ZIndex = 2
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = ""
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextSize = 14.000

	TextLabel.Parent = TextButton
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.ZIndex = 3
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = name
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 14.000
	TextLabel.TextStrokeTransparency = 0.410
	TextLabel.TextTransparency = 0.5

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(143, 87, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(65, 21, 158))}
	UIGradient.Rotation = 90
	UIGradient.Parent = TextButton
	UIGradient.Transparency = NumberSequence.new(0.5)

	Frame.Parent = TextButton
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.Position = UDim2.new(0, -1, 0, -1)
	Frame.Size = UDim2.new(1, 2, 1, 2)

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(143, 87, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(65, 21, 158))}
	UIGradient_2.Parent = Frame
	UIGradient_2.Transparency = NumberSequence.new(0.5)
	
	local Tab1 = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")

	--Properties:

	Tab1.Name = name
	Tab1.Parent = UILib.Frame.Main.Containers
	Tab1.Active = true
	Tab1.Visible = false
	Tab1.AnchorPoint = Vector2.new(0.5, 0)
	Tab1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tab1.BackgroundTransparency = 1.000
	Tab1.ClipsDescendants = false
	Tab1.Position = UDim2.new(0.5, 0, 0.0450000018, 0)
	Tab1.Size = UDim2.new(0.899999976, 0, 0.954999983, 0)
	Tab1.CanvasSize = UDim2.new(0, 0, 0, 0)
	Tab1.ScrollBarThickness = 5

	UIListLayout.Parent = Tab1
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	
	TextButton.MouseButton1Click:Connect(function()
		for _,v in pairs(UILib.Frame.Main.Containers:GetChildren()) do
			v.Visible = false
		end
		UILib.Frame.Main.Containers[name].Visible = true
		for _,v in pairs(UILib.Frame.Main.Tabs.Tabs:GetChildren()) do
			if v:IsA"TextButton" then
				v.UIGradient.Transparency = NumberSequence.new(0.5)
				v.Frame.UIGradient.Transparency = NumberSequence.new(0.5)
				v.TextLabel.TextTransparency = 0.5
			end
		end
		UIGradient.Transparency = NumberSequence.new(0)
		UIGradient_2.Transparency = NumberSequence.new(0)
		TextLabel.TextTransparency = 0
	end)
end

function library.CreateSection(name,tab)
	local Frame = Instance.new("Frame")
	local SectionName = Instance.new("TextLabel")
	local UIListLayout = Instance.new("UIListLayout")

	--Properties:

	Frame.Parent = UILib.Frame.Main.Containers[tab]
	Frame.Name = name
	Frame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.Size = UDim2.new(1, 0, 0, 20)

	SectionName.Name = "SectionName"
	SectionName.Parent = Frame
	SectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SectionName.BackgroundTransparency = 1.000
	SectionName.Position = UDim2.new(0.0259923153, 0, 0, 0)
	SectionName.Size = UDim2.new(0.970000029, 0, 0, 20)
	SectionName.Font = Enum.Font.SourceSans
	SectionName.Text = name
	SectionName.TextColor3 = Color3.fromRGB(255, 255, 255)
	SectionName.TextSize = 16.000
	SectionName.TextStrokeTransparency = 0.000
	SectionName.TextTransparency = 0.090
	SectionName.TextXAlignment = Enum.TextXAlignment.Left

	UIListLayout.Parent = Frame
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
end

function library.CreateLabel(text,richtextenabled,tab,section)
	if section ~= nil then
		local Label = Instance.new("TextLabel")

		--Properties:

		Label.Name = "Label"
		Label.Parent = UILib.Frame.Main.Containers[tab][section]
		Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Label.BackgroundTransparency = 1.000
		Label.Position = UDim2.new(0.0259923153, 0, 0, 0)
		Label.Size = UDim2.new(0.970000029, 0, 0, 20)
		Label.Font = Enum.Font.SourceSans
		Label.Text = text
		Label.TextColor3 = Color3.fromRGB(255, 255, 255)
		Label.TextSize = 16.000
		Label.TextStrokeTransparency = 0.000
		Label.TextTransparency = 0.090
		Label.TextXAlignment = Enum.TextXAlignment.Left
		Label.RichText = richtextenabled
		
		UILib.Frame.Main.Containers[tab][section].Size = UILib.Frame.Main.Containers[tab][section].Size + UDim2.new(0,0,0,20)
	else
		local Label = Instance.new("TextLabel")
		
		Label.Name = "Label"
		Label.Parent = UILib.Frame.Main.Containers[tab]
		Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Label.BackgroundTransparency = 1.000
		Label.Position = UDim2.new(0.0259923153, 0, 0, 0)
		Label.Size = UDim2.new(0.970000029, 0, 0, 20)
		Label.Font = Enum.Font.SourceSans
		Label.Text = text
		Label.TextColor3 = Color3.fromRGB(255, 255, 255)
		Label.TextSize = 16.000
		Label.TextStrokeTransparency = 0.000
		Label.TextTransparency = 0.090
		Label.TextXAlignment = Enum.TextXAlignment.Left
		Label.RichText = richtextenabled
	end
	
	library.RefreshContenerSize(tab)
end


function library.CreateButton(ReturnTable)
	local buttonnamme = ReturnTable[1]
	local wantedTab = ReturnTable[2]
	local wantedSection = ReturnTable[3]
	
	if wantedSection ~= nil then
		local Button = Instance.new("TextButton")
		local ButtonName = Instance.new("TextLabel")
		local Frame = Instance.new("Frame")
		local UIGradient = Instance.new("UIGradient")

		--Properties:

		Button.Name = buttonnamme
		Button.Parent = UILib.Frame.Main.Containers[wantedTab][wantedSection]
		Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button.BackgroundTransparency = 1.000
		Button.Size = UDim2.new(0.970000029, 0, 0, 20)
		Button.Font = Enum.Font.SourceSans
		Button.Text = ""
		Button.TextColor3 = Color3.fromRGB(0, 0, 0)
		Button.TextSize = 14.000

		ButtonName.Name = "ButtonName"
		ButtonName.Parent = Button
		ButtonName.AnchorPoint = Vector2.new(0.5, 0.5)
		ButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ButtonName.BackgroundTransparency = 1.000
		ButtonName.Position = UDim2.new(0.5, 0, 0.5, 0)
		ButtonName.Size = UDim2.new(0.949999988, 0, 0.600000024, 0)
		ButtonName.ZIndex = 2
		ButtonName.Font = Enum.Font.SourceSans
		ButtonName.Text = buttonnamme
		ButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)
		ButtonName.TextSize = 15.000
		ButtonName.TextStrokeTransparency = 0.000
		ButtonName.TextTransparency = 0.090

		Frame.Parent = Button
		Frame.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame.Size = UDim2.new(0.949999988, 0, 0.800000012, 0)

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 20, 20))}
		UIGradient.Rotation = 90
		UIGradient.Parent = Frame
		
		UILib.Frame.Main.Containers[wantedTab][wantedSection].Size = UILib.Frame.Main.Containers[wantedTab][wantedSection].Size + UDim2.new(0,0,0,20)
		
		Button.MouseButton1Click:Connect(function()
			ReturnTable["Callback"]()
		end)
	else
		local Button = Instance.new("TextButton")
		local ButtonName = Instance.new("TextLabel")
		local Frame = Instance.new("Frame")
		local UIGradient = Instance.new("UIGradient")

		--Properties:

		Button.Name = buttonnamme
		Button.Parent = UILib.Frame.Main.Containers[wantedTab]
		Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button.BackgroundTransparency = 1.000
		Button.Size = UDim2.new(0.970000029, 0, 0, 20)
		Button.Font = Enum.Font.SourceSans
		Button.Text = ""
		Button.TextColor3 = Color3.fromRGB(0, 0, 0)
		Button.TextSize = 14.000

		ButtonName.Name = "ButtonName"
		ButtonName.Parent = Button
		ButtonName.AnchorPoint = Vector2.new(0.5, 0.5)
		ButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ButtonName.BackgroundTransparency = 1.000
		ButtonName.Position = UDim2.new(0.5, 0, 0.5, 0)
		ButtonName.Size = UDim2.new(0.949999988, 0, 0.600000024, 0)
		ButtonName.ZIndex = 2
		ButtonName.Font = Enum.Font.SourceSans
		ButtonName.Text = buttonnamme
		ButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)
		ButtonName.TextSize = 15.000
		ButtonName.TextStrokeTransparency = 0.000
		ButtonName.TextTransparency = 0.090

		Frame.Parent = Button
		Frame.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame.Size = UDim2.new(0.949999988, 0, 0.800000012, 0)

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 20, 20))}
		UIGradient.Rotation = 90
		UIGradient.Parent = Frame
		
		Button.MouseButton1Click:Connect(function()
			ReturnTable["Callback"]()
		end)
	end
	
	
	library.RefreshContenerSize(wantedTab)
end

function library.CreateToggle(ReturnTable)
	local togglename = ReturnTable[1]
	local wantedTab = ReturnTable[2]
	local wantedSection = ReturnTable[3]
	local default = ReturnTable[4]
	if wantedSection ~= nil then
		local Toggle = Instance.new("TextButton")
		local ButtonName = Instance.new("TextLabel")
		local Frame = Instance.new("Frame")
		local UIGradient = Instance.new("UIGradient")

		--Properties:

		Toggle.Name = togglename
		Toggle.Parent = UILib.Frame.Main.Containers[wantedTab][wantedSection]
		Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Toggle.BackgroundTransparency = 1.000
		Toggle.Size = UDim2.new(0.970000029, 0, 0, 20)
		Toggle.Font = Enum.Font.SourceSans
		Toggle.Text = ""
		Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
		Toggle.TextSize = 14.000

		ButtonName.Name = "ButtonName"
		ButtonName.Parent = Toggle
		ButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ButtonName.BackgroundTransparency = 1.000
		ButtonName.Position = UDim2.new(0.0500000007, 0, 0, 0)
		ButtonName.Size = UDim2.new(0.949999988, 0, 1, 0)
		ButtonName.Font = Enum.Font.SourceSans
		ButtonName.Text = togglename
		ButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)
		ButtonName.TextSize = 16.000
		ButtonName.TextStrokeTransparency = 0.000
		ButtonName.TextTransparency = 0.5
		ButtonName.TextXAlignment = Enum.TextXAlignment.Left

		Frame.Parent = Toggle
		Frame.AnchorPoint = Vector2.new(0, 0.5)
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BackgroundTransparency = 0.5
		Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame.Position = UDim2.new(0, 0, 0.5, 0)
		Frame.Size = UDim2.new(0.0299999993, 0, 0.550000012, 0)

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(143, 87, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(65, 21, 158))}
		UIGradient.Rotation = 90
		UIGradient.Parent = Frame
		
		if default == true then
			Frame.BackgroundTransparency = 0
			ButtonName.TextTransparency = 0.09
		end
		UILib.Frame.Main.Containers[wantedTab][wantedSection].Size = UILib.Frame.Main.Containers[wantedTab][wantedSection].Size + UDim2.new(0,0,0,20)
		Toggle.MouseButton1Click:Connect(function()
			if Frame.BackgroundTransparency == 0.5 then
				game.TweenService:Create(Frame,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{BackgroundTransparency = 0}):Play()
				game.TweenService:Create(ButtonName,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextTransparency = 0.09}):Play()
				ReturnTable["Callback"](true)
			elseif Frame.BackgroundTransparency == 0 then
				game.TweenService:Create(Frame,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{BackgroundTransparency = 0.5}):Play()
				game.TweenService:Create(ButtonName,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextTransparency = 0.5}):Play()
				ReturnTable["Callback"](false)
			end
		end)
	else
		local Toggle = Instance.new("TextButton")
		local ButtonName = Instance.new("TextLabel")
		local Frame = Instance.new("Frame")
		local UIGradient = Instance.new("UIGradient")

		--Properties:

		Toggle.Name = togglename
		Toggle.Parent = UILib.Frame.Main.Containers[wantedTab]
		Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Toggle.BackgroundTransparency = 1.000
		Toggle.Size = UDim2.new(0.970000029, 0, 0, 20)
		Toggle.Font = Enum.Font.SourceSans
		Toggle.Text = ""
		Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
		Toggle.TextSize = 14.000

		ButtonName.Name = "ButtonName"
		ButtonName.Parent = Toggle
		ButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ButtonName.BackgroundTransparency = 1.000
		ButtonName.Position = UDim2.new(0.0500000007, 0, 0, 0)
		ButtonName.Size = UDim2.new(0.949999988, 0, 1, 0)
		ButtonName.Font = Enum.Font.SourceSans
		ButtonName.Text = togglename
		ButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)
		ButtonName.TextSize = 16.000
		ButtonName.TextStrokeTransparency = 0.000
		ButtonName.TextTransparency = 0.5
		ButtonName.TextXAlignment = Enum.TextXAlignment.Left

		Frame.Parent = Toggle
		Frame.AnchorPoint = Vector2.new(0, 0.5)
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BackgroundTransparency = 0.5
		Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame.Position = UDim2.new(0, 0, 0.5, 0)
		Frame.Size = UDim2.new(0.0299999993, 0, 0.550000012, 0)

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(143, 87, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(65, 21, 158))}
		UIGradient.Rotation = 90
		UIGradient.Parent = Frame

		if default == true then
			Frame.BackgroundTransparency = 0
			ButtonName.TextTransparency = 0.09
		end

		Toggle.MouseButton1Click:Connect(function()
			if Frame.BackgroundTransparency == 0.5 then
				game.TweenService:Create(Frame,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{BackgroundTransparency = 0}):Play()
				game.TweenService:Create(ButtonName,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextTransparency = 0.09}):Play()
				ReturnTable["Callback"](true)
			elseif Frame.BackgroundTransparency == 0 then
				game.TweenService:Create(Frame,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{BackgroundTransparency = 0.5}):Play()
				game.TweenService:Create(ButtonName,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextTransparency = 0.5}):Play()
				ReturnTable["Callback"](false)
			end
		end)
	end
	library.RefreshContenerSize(wantedTab)
end

function library.CreateBlank(tab)
	local Label = Instance.new("TextLabel")
	Label.Name = "Label"
	Label.Parent = UILib.Frame.Main.Containers[tab]
	Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Label.BackgroundTransparency = 1.000
	Label.Position = UDim2.new(0.0259923153, 0, 0, 0)
	Label.Size = UDim2.new(0.970000029, 0, 0, 5)
	Label.Font = Enum.Font.SourceSans
	Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Label.TextSize = 16.000
	Label.TextStrokeTransparency = 0.000
	Label.TextTransparency = 1
	Label.TextXAlignment = Enum.TextXAlignment.Left
	
	library.RefreshContenerSize(tab)
end

function library.CreateSlider(ActualTable)
	
	local SlidersName = ActualTable[1]
	local Tab = ActualTable[2]
	local Section = ActualTable[3]
	local ValueName = ActualTable[4]
	local Min = ActualTable[5]
	local Max = ActualTable[6] - 1
	local Increment = ActualTable[7]
	
	
	if Section ~= nil then
		local Frame = Instance.new("Frame")
		local Frame_2 = Instance.new("Frame")
		local UIGradient = Instance.new("UIGradient")
		local Frame_3 = Instance.new("Frame")
		local UIGradient_2 = Instance.new("UIGradient")
		local SliderName = Instance.new("TextLabel")
		local Number = Instance.new("TextLabel")
		local Folder = Instance.new("Folder")

		--Properties:

		Frame.Parent = UILib.Frame.Main.Containers[Tab][Section]
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BackgroundTransparency = 1.000
		Frame.Size = UDim2.new(1, 0, 0, 20)

		Frame_2.Parent = Frame
		Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame_2.Size = UDim2.new(0.949999988, 0, 0.699999988, 0)

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(40, 40, 40)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(13, 13, 13))}
		UIGradient.Rotation = 90
		UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.20), NumberSequenceKeypoint.new(1.00, 0.20)}
		UIGradient.Parent = Frame_2

		Frame_3.Parent = Frame_2
		Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame_3.Size = UDim2.new(0.5, 0, 1, 0)

		UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(143, 87, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(65, 21, 158))}
		UIGradient_2.Rotation = 90
		UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.20), NumberSequenceKeypoint.new(1.00, 0.20)}
		UIGradient_2.Parent = Frame_3

		SliderName.Name = "SliderName"
		SliderName.Parent = Frame_2
		SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SliderName.BackgroundTransparency = 1.000
		SliderName.Position = UDim2.new(0.0199999996, 0, 0, 0)
		SliderName.Size = UDim2.new(0.949999988, 0, 1, 0)
		SliderName.Font = Enum.Font.SourceSans
		SliderName.Text = SlidersName
		SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)
		SliderName.TextSize = 16.000
		SliderName.TextStrokeTransparency = 0.000
		SliderName.TextXAlignment = Enum.TextXAlignment.Left

		Number.Name = "Number"
		Number.Parent = Frame_2
		Number.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Number.BackgroundTransparency = 1.000
		Number.Position = UDim2.new(0.0199999996, 0, 0, 0)
		Number.Size = UDim2.new(0.949999988, 0, 1, 0)
		Number.Font = Enum.Font.SourceSans
		Number.Text = Min.." ".. ValueName
		Number.TextColor3 = Color3.fromRGB(255, 255, 255)
		Number.TextSize = 16.000
		Number.TextStrokeTransparency = 0.000
		Number.TextTransparency = 0.350
		Number.TextXAlignment = Enum.TextXAlignment.Right

		Folder.Parent = Frame_2
		
		local function roundNumber(num, numDecimalPlaces)
			return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
		end
		
		for i = Min,Max,Increment do
			local NewFrame = Instance.new("Frame")
			NewFrame.Parent = Folder
			NewFrame.Name = (i)
			NewFrame.AnchorPoint = Vector2.new(0,0.5)
			NewFrame.Position = UDim2.new(i / (Max + 1),0,0.5,0)
			NewFrame.Size = UDim2.new(0.027,0,1,0)
			NewFrame.BackgroundTransparency = 1
			task.wait()
		end
		
		local NewFrame = Instance.new("Frame")
		NewFrame.Parent = Folder
		NewFrame.Name = Max + 1
		NewFrame.AnchorPoint = Vector2.new(0,0.5)
		NewFrame.Position = UDim2.new(1,0,0.5,0)
		NewFrame.Size = UDim2.new(0.03,0,1,0)
		NewFrame.BackgroundTransparency = 1
		local UIS = game:GetService("UserInputService")
		for _,v in pairs(Folder:GetChildren()) do
			v.MouseEnter:Connect(function()
				local t = UIS:GetMouseButtonsPressed()


				local sex = false
				for _,p in pairs(t) do
					if p.UserInputType.Name == "MouseButton1" then
						sex = true
					end
				end
				if sex == true then
					Number.Text = tostring(roundNumber(v.Name,1).." "..ValueName)
					
					game.TweenService:Create(Frame_3,TweenInfo.new(0.1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UDim2.new(v.Position.X.Scale,0,1,0)}):Play()
					
					ActualTable["Callback"](roundNumber(v.Name,1))
				end
			end)
		end
		UILib.Frame.Main.Containers[Tab][Section].Size = UILib.Frame.Main.Containers[Tab][Section].Size + UDim2.new(0,0,0,20)
	else
		
	end
	library.RefreshContenerSize(Tab)
end

function library.CreateDropdown(ActualTable)
	local DropdownName = ActualTable[1]
	local TabName = ActualTable[2]
	local SSection = ActualTable[3]
	local Default = ActualTable[4]
	local Choices = ActualTable[5]
	local Callback = ActualTable[6]
	if SSection ~= nil then
		local Dropdown = Instance.new("TextButton")
		local DropdownName = Instance.new("TextLabel")
		local Frame = Instance.new("Frame")
		local UIGradient = Instance.new("UIGradient")
		local SelectedObject = Instance.new("TextLabel")
		local UselessArrows = Instance.new("TextLabel")
		local Section = Instance.new("TextButton")
		local Frame_2 = Instance.new("Frame")
		local UIGradient_2 = Instance.new("UIGradient")
		local ScrollingFrame = Instance.new("ScrollingFrame")
		local UIGradient_3 = Instance.new("UIGradient")
		local UIListLayout = Instance.new("UIListLayout")

		--Properties:

		Dropdown.Name = "Dropdown"
		Dropdown.Parent = UILib.Frame.Main.Containers[TabName][SSection]
		Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Dropdown.BackgroundTransparency = 1.000
		Dropdown.Size = UDim2.new(0.970000029, 0, 0, 20)
		Dropdown.Font = Enum.Font.SourceSans
		Dropdown.Text = ""
		Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
		Dropdown.TextSize = 14.000

		DropdownName.Name = "DropdownName"
		DropdownName.Parent = Dropdown
		DropdownName.AnchorPoint = Vector2.new(0.5, 0.5)
		DropdownName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropdownName.BackgroundTransparency = 1.000
		DropdownName.Position = UDim2.new(0.5, 0, 0.5, 0)
		DropdownName.Size = UDim2.new(0.949999988, 0, 0.600000024, 0)
		DropdownName.ZIndex = 2
		DropdownName.Font = Enum.Font.SourceSans
		DropdownName.Text = "Dropdown"
		DropdownName.TextColor3 = Color3.fromRGB(255, 255, 255)
		DropdownName.TextSize = 15.000
		DropdownName.TextStrokeTransparency = 0.000
		DropdownName.TextTransparency = 0.090

		Frame.Parent = Dropdown
		Frame.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame.Size = UDim2.new(0.949999988, 0, 0.800000012, 0)

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 20, 20))}
		UIGradient.Rotation = 90
		UIGradient.Parent = Frame

		SelectedObject.Name = "SelectedObject"
		SelectedObject.Parent = Dropdown
		SelectedObject.AnchorPoint = Vector2.new(0.5, 0.5)
		SelectedObject.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SelectedObject.BackgroundTransparency = 1.000
		SelectedObject.Position = UDim2.new(0.492654711, 0, 0.5, 0)
		SelectedObject.Size = UDim2.new(0.93530941, 0, 0.600000024, 0)
		SelectedObject.ZIndex = 2
		SelectedObject.Font = Enum.Font.SourceSans
		
		if Default == nil then
			SelectedObject.Text = "nil"
		else
			SelectedObject.Text = Default
		end
		

		SelectedObject.TextColor3 = Color3.fromRGB(255, 255, 255)
		SelectedObject.TextSize = 15.000
		SelectedObject.TextStrokeTransparency = 0.000
		SelectedObject.TextTransparency = 0.090
		SelectedObject.TextXAlignment = Enum.TextXAlignment.Right

		UselessArrows.Name = "Useless Arrows"
		UselessArrows.Parent = Dropdown
		UselessArrows.AnchorPoint = Vector2.new(0.5, 0.5)
		UselessArrows.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		UselessArrows.BackgroundTransparency = 1.000
		UselessArrows.Position = UDim2.new(0.505154669, 0, 0.5, 0)
		UselessArrows.Size = UDim2.new(0.910000026, 0, 0.300000012, 0)
		UselessArrows.ZIndex = 2
		UselessArrows.Font = Enum.Font.SourceSans
		UselessArrows.Text = "V"
		UselessArrows.TextColor3 = Color3.fromRGB(255, 255, 255)
		UselessArrows.TextSize = 15.000
		UselessArrows.TextStrokeTransparency = 0.000
		UselessArrows.TextTransparency = 0.090
		UselessArrows.TextXAlignment = Enum.TextXAlignment.Left

		Section.Name = "Section"
		Section.Parent = Dropdown
		Section.AnchorPoint = Vector2.new(0.5, 0)
		Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Section.BackgroundTransparency = 1.000
		Section.ClipsDescendants = true
		Section.Position = UDim2.new(0.5, 0, 1, 0)
		Section.Size = UDim2.new(0.970000029, 0, 0, 60)
		Section.Visible = false
		Section.Font = Enum.Font.SourceSans
		Section.Text = ""
		Section.TextColor3 = Color3.fromRGB(0, 0, 0)
		Section.TextSize = 14.000

		Frame_2.Parent = Section
		Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame_2.ClipsDescendants = true
		Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame_2.Size = UDim2.new(0.949999988, 0, 0.800000012, 0)

		UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 20, 20))}
		UIGradient_2.Rotation = 90
		UIGradient_2.Parent = Frame_2

		ScrollingFrame.Parent = Frame_2
		ScrollingFrame.Active = true
		ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingFrame.BackgroundTransparency = 1.000
		ScrollingFrame.BorderSizePixel = 0
		ScrollingFrame.ClipsDescendants = false
		ScrollingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
		ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
		ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

		UIListLayout.Parent = ScrollingFrame
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 4)
		
		
		UILib.Frame.Main.Containers[TabName][SSection].Size = UILib.Frame.Main.Containers[TabName][SSection].Size + UDim2.new(0,0,0,20)
		library.RefreshContenerSize(TabName)
		for _,p in pairs(Choices) do
			local TextButton = Instance.new("TextButton")
			local UIGradient_3 = Instance.new("UIGradient")
			local ButtonName = Instance.new("TextLabel")
			
			TextButton.Parent = ScrollingFrame
			TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.Size = UDim2.new(1, 0, 0, 15)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Text = ""
			TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.TextSize = 14.000
			
			UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 20, 20))}
			UIGradient_3.Rotation = 90
			UIGradient_3.Parent = TextButton

			ButtonName.Name = p
			ButtonName.Parent = TextButton
			ButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonName.BackgroundTransparency = 1.000
			ButtonName.Size = UDim2.new(1, 0, 1, 0)
			ButtonName.Font = Enum.Font.SourceSans
			ButtonName.Text = p
			ButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)
			ButtonName.TextSize = 16.000
			ButtonName.TextStrokeTransparency = 0.000
			ButtonName.TextTransparency = 0.090
			
			ScrollingFrame.CanvasSize = ScrollingFrame.CanvasSize + UDim2.new(0,0,0,19)
		end
		Dropdown.MouseButton1Click:Connect(function()
			if Section.Visible == false then
				Section.Visible = true
				UILib.Frame.Main.Containers[TabName][SSection].Size = UILib.Frame.Main.Containers[TabName][SSection].Size + UDim2.new(0,0,0,60)
				library.RefreshContenerSize(TabName)
			else
				Section.Visible = false
				UILib.Frame.Main.Containers[TabName][SSection].Size = UILib.Frame.Main.Containers[TabName][SSection].Size - UDim2.new(0,0,0,60)
				library.RefreshContenerSize(TabName)
			end
		end)
		for _,v in pairs(ScrollingFrame:GetChildren()) do
			if v:IsA("TextButton") then
				v.MouseButton1Click:Connect(function()
					SelectedObject.Text = v:FindFirstChildOfClass("TextLabel").Text
					ActualTable["Callback"](v:FindFirstChildOfClass("TextLabel").Text)
				end)
			end
		end
	else
		
	end
end

return library
