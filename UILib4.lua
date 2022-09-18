local library = {}
local UILib = nil
local ClosingSection = false

function library.LoadLib()
	local ScreenGui = Instance.new("ScreenGui")
	local TextLabel = Instance.new("TextLabel")
	local frame = Instance.new("TextLabel")
	local TextLabel_2 = Instance.new("TextLabel")

	--Properties:

	ScreenGui.Parent = game.CoreGui
    syn.protect_gui(ScreenGui)

	TextLabel.Parent = ScreenGui
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.435424358, 0, 0.465397924, 0)
	TextLabel.Size = UDim2.new(0.128229007, 0, 0.0296426527, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = ""
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 16.000
	TextLabel.TextStrokeTransparency = 0.000
	TextLabel.TextTransparency = 0.090
	TextLabel.TextWrapped = true

	frame.Name = "frame"
	frame.Parent = ScreenGui
	frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	frame.BackgroundTransparency = 1.000
	frame.ClipsDescendants = true
	frame.Position = UDim2.new(0.414206654, 0, 0.494809687, 0)
	frame.Size = UDim2.new(0.17066443, 0, 0.0694350377, 0)
	frame.Font = Enum.Font.SourceSans
	frame.Text = ""
	frame.TextColor3 = Color3.fromRGB(255, 255, 255)
	frame.TextScaled = true
	frame.TextSize = 16.000
	frame.TextStrokeTransparency = 0.000
	frame.TextTransparency = 0.090
	frame.TextWrapped = true

	TextLabel_2.Parent = frame
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.Position = UDim2.new(0.123999998, 0, -0.400000006, 0)
	TextLabel_2.Size = UDim2.new(0.751351416, 0, 0.385100424, 0)
	TextLabel_2.Font = Enum.Font.SourceSans
	TextLabel_2.Text = "Loading UI..."
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 16.000
	TextLabel_2.TextStrokeTransparency = 0.000
	TextLabel_2.TextTransparency = 0.090
	TextLabel_2.TextWrapped = true


	wait(1)
	local m = "Haze's UI Library"
	for i = 1, #m do
		wait(.01)
		TextLabel.Text = string.sub(m,1,i)
	end
	wait(.5)
	game.TweenService:Create(TextLabel_2,TweenInfo.new(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Position = UDim2.new(0.124,0,0,0)}):Play()
	wait(3)
	ScreenGui:Destroy()
	local ScreenGui = Instance.new("ScreenGui")

    ScreenGui.Parent = game.CoreGui
    syn.protect_gui(ScreenGui)
	ScreenGui.DisplayOrder = 999999
	ScreenGui.Name = "Haze's UI Library"
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = false

	UILib = ScreenGui
end


function library.CreateTab(Parameters)
	local sw_TabName = Parameters["Tab Name"]
	local sw_TabColor = Parameters["Tab Color"]
	local sw_FontColor = Parameters["Font Color"]
	local sw_FontType = Parameters["Font"]

	local Window = Instance.new("Frame")
	local Frame = Instance.new("Frame")
	local Frame_2 = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	
	local UICorner2 = Instance.new("UICorner")
	
	local TextLabel = Instance.new("TextLabel")
	local TextLabel2 = Instance.new("TextLabel")
	local Container = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")

	--Properties:

	Window.Name = sw_TabName
	Window.Active = true
	Window.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Window.BackgroundTransparency = 1.000
	Window.BorderSizePixel = 0
	Window.Draggable = true
	Window.Position = UDim2.new(0, 20 + (#UILib:GetChildren() * 175), 0, 30)
	Window.Parent = UILib
	Window.Size = UDim2.new(0, 149, 0, 33)

	Frame.Parent = Window
	Frame.BackgroundColor3 = sw_TabColor
	Frame.BorderSizePixel = 0
	Frame.Size = UDim2.new(0, 150, 0, 35)

	Frame_2.Parent = Frame
	Frame_2.BackgroundColor3 = sw_TabColor
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0, 0, 0.600000024, 0)
	Frame_2.Size = UDim2.new(1, 0, 0.400000006, 0)
	Frame_2.ZIndex = 2

	UICorner.Parent = Frame
	

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0, 0, 0.200000003, 0)
	TextLabel.Size = UDim2.new(1, 0, 0.600000024, 0)
	TextLabel.ZIndex = 5
	TextLabel.Font = sw_FontType
	TextLabel.Text = sw_TabName
	TextLabel.TextColor3 = sw_FontColor
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	
		TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0, 0, 0.200000003, 0)
	TextLabel.Size = UDim2.new(1, 0, 0.600000024, 0)
	TextLabel.ZIndex = 5
	TextLabel.Font = sw_FontType
	TextLabel.Text = sw_TabName
	TextLabel.TextColor3 = sw_FontColor
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	Container.Name = "Container"
	Container.Parent = Frame
	Container.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Container.BorderSizePixel = 0
	Container.ClipsDescendants = true
	Container.Position = UDim2.new(0, 0, 1, 0)
	Container.Size = UDim2.new(1, 0, 0, 0)
	Container.ZIndex = 3
	
	UICorner2.Parent = Container
	UIListLayout.Parent = Container
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
end

function library.CreateSection(Parameters)
	local sw_SectionName = Parameters["Section Name"]
	local sw_Tab = Parameters["Tab"]
	local sw_FontColor = Parameters["Font Color"]
	
	
	local UICorner = Instance.new("UICorner")
	local Section = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Pres = Instance.new("Frame")
	local Button = Instance.new("TextButton")
	local SectionInside = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local TextLabel = Instance.new("TextLabel")
	local TextLabel2 = Instance.new("TextLabel")

	--Properties:

	Section.Name = sw_SectionName
	Section.Parent = UILib[sw_Tab].Frame.Container
	Section.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Section.BorderSizePixel = 0
	Section.ClipsDescendants = true
	Section.Size = UDim2.new(1, 0, 0, 30)
	UILib[sw_Tab].Frame.Container.Size = UILib[sw_Tab].Frame.Container.Size + UDim2.new(0,0,0,30)
	Section.ZIndex = 3

	UIListLayout.Parent = Section
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	Pres.Name = "Pres"
	Pres.Parent = Section
	Pres.BackgroundColor3 = Color3.fromRGB(48, 51, 59)
	Pres.BorderSizePixel = 0
	Pres.Position = UDim2.new(0, 0, 1, 0)
	Pres.Size = UDim2.new(1, 0, 0, 30)
	Pres.ZIndex = 3

	Button.Name = "Button"
	Button.Parent = Pres
	Button.AnchorPoint = Vector2.new(0, 0.5)
	Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button.BackgroundTransparency = 1.000
	Button.Position = UDim2.new(0, 0, 0.5, 0)
	Button.Size = UDim2.new(1, 0, 0.600000024, 0)
	Button.ZIndex = 6
	Button.Font = Enum.Font.SourceSansBold
	Button.Text = sw_SectionName
	Button.TextColor3 = sw_FontColor
	Button.TextScaled = true
	Button.TextSize = 14.000
	Button.TextWrapped = true

	SectionInside.Name = "SectionInside"
	SectionInside.Parent = Pres
	SectionInside.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	SectionInside.BackgroundTransparency = 1.000
	SectionInside.BorderSizePixel = 0
	SectionInside.ClipsDescendants = true
	SectionInside.Position = UDim2.new(0, 0, 1, 0)
	SectionInside.Size = UDim2.new(1, 0, 0, 0)
	SectionInside.ZIndex = 3

	UIListLayout_2.Parent = SectionInside
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

	TextLabel.Parent = Pres
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.806666672, 0, 0.200000003, 0)
	TextLabel.Size = UDim2.new(0.193333328, 0, 0.600000024, 0)
	TextLabel.ZIndex = 5
	TextLabel.Font = Enum.Font.Unknown
	TextLabel.Text = "-"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	
	TextLabel2.Parent = Pres
	TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel2.BackgroundTransparency = 1.000
	TextLabel2.Position = UDim2.new(0.806666672, 0, 0.200000003, 0)
	TextLabel2.Size = UDim2.new(0.193333328, 0, 0.600000024, 0)
	TextLabel2.ZIndex = 5
	TextLabel2.Font = Enum.Font.Unknown
	TextLabel2.Text = "+"
	TextLabel2.TextTransparency = 1
	TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel2.TextScaled = true
	TextLabel2.TextSize = 14.000
	TextLabel2.TextWrapped = true
	
	
	UICorner.Parent = Section
	
	Button.MouseButton1Click:Connect(function()
		if ClosingSection == false then
			ClosingSection = true
			if TextLabel2.TextTransparency == 1 then
				--CLOSE
				
				
				game.TweenService:Create(TextLabel2,TweenInfo.new(0.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextTransparency = 0}):Play()
				game.TweenService:Create(TextLabel,TweenInfo.new(0.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextTransparency = 1}):Play()
				
				game.TweenService:Create(Section,TweenInfo.new(0.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UDim2.new(1,0,0,30)}):Play()
				
				game.TweenService:Create(UILib[sw_Tab].Frame.Container,TweenInfo.new(0.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UILib[sw_Tab].Frame.Container.Size - UDim2.new(0,0,0,0 + (30 * (#SectionInside:GetChildren() - 1)))}):Play()
			else
				--OPEN
				
				game.TweenService:Create(TextLabel2,TweenInfo.new(0.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextTransparency = 1}):Play()
				game.TweenService:Create(TextLabel,TweenInfo.new(0.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextTransparency = 0}):Play()

				game.TweenService:Create(Section,TweenInfo.new(0.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UDim2.new(1,0,0,30 + (30 * (#SectionInside:GetChildren() - 1)))}):Play()

				game.TweenService:Create(UILib[sw_Tab].Frame.Container,TweenInfo.new(0.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UILib[sw_Tab].Frame.Container.Size + UDim2.new(0,0,0,0 + (30 * (#SectionInside:GetChildren() - 1)))}):Play()
				
			end
			wait(0.41)
			ClosingSection = false
		end
	end)
end

function library.CreateLabel(Parameters)
	local sw_TextContent = Parameters["Text Content"]
	local sw_Tab = Parameters["Tab"]
	local sw_Section = Parameters["Section"]
	local sw_RichText = Parameters["Rich Text Enabled"]
	
	if sw_Section ~= nil then
		local Label = Instance.new("Frame")
		local Text = Instance.new("TextLabel")

		Label.Name = "Label"
		Label.Parent = UILib[sw_Tab].Frame.Container[sw_Section].Pres.SectionInside
		Label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Label.BorderSizePixel = 0
		Label.ClipsDescendants = true
		Label.Position = UDim2.new(0, 0, 1, 0)
		Label.Size = UDim2.new(1, 0, 0, 30)
		Label.ZIndex = 3
		
		UILib[sw_Tab].Frame.Container[sw_Section].Pres.SectionInside.Size = UILib[sw_Tab].Frame.Container[sw_Section].Pres.SectionInside.Size + UDim2.new(0,0,0,30)
		UILib[sw_Tab].Frame.Container[sw_Section].Size = UILib[sw_Tab].Frame.Container[sw_Section].Size + UDim2.new(0,0,0,30)
		UILib[sw_Tab].Frame.Container.Size = UILib[sw_Tab].Frame.Container.Size + UDim2.new(0,0,0,30)
		
		Text.Name = "Text"
		Text.Parent = Label
		Text.AnchorPoint = Vector2.new(0, 0.5)
		Text.BackgroundColor3 = Color3.fromRGB(48, 51, 59)
		Text.BackgroundTransparency = 1.000
		Text.Position = UDim2.new(0, 0, 0.5, 0)
		Text.Size = UDim2.new(1, 0, 0.600000024, 0)
		Text.ZIndex = 5
		Text.Font = Enum.Font.SourceSansBold
		Text.Text = sw_TextContent
		Text.RichText = sw_RichText
		Text.TextColor3 = Color3.fromRGB(255, 255, 255)
		Text.TextScaled = true
		Text.TextSize = 14.000
		Text.TextWrapped = true
	else
		local Label = Instance.new("Frame")
		local Text = Instance.new("TextLabel")

		Label.Name = "Label"
		Label.Parent = UILib[sw_Tab].Frame.Container
		Label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Label.BorderSizePixel = 0
		Label.ClipsDescendants = true
		Label.Position = UDim2.new(0, 0, 1, 0)
		Label.Size = UDim2.new(1, 0, 0, 30)
		Label.ZIndex = 3
		UILib[sw_Tab].Frame.Container.Size = UILib[sw_Tab].Frame.Container.Size + UDim2.new(0,0,0,30)

		Text.Name = "Text"
		Text.Parent = Label
		Text.AnchorPoint = Vector2.new(0, 0.5)
		Text.BackgroundColor3 = Color3.fromRGB(48, 51, 59)
		Text.BackgroundTransparency = 1.000
		Text.Position = UDim2.new(0, 0, 0.5, 0)
		Text.Size = UDim2.new(1, 0, 0.600000024, 0)
		Text.ZIndex = 5
		Text.Font = Enum.Font.SourceSansBold
		Text.Text = sw_TextContent
		Text.RichText = sw_RichText
		Text.TextColor3 = Color3.fromRGB(255, 255, 255)
		Text.TextScaled = true
		Text.TextSize = 14.000
		Text.TextWrapped = true
	end
end

function library.CreateButton(Properties)
	local sw_ButtonName = Properties["Button Name"]
	local sw_Tab = Properties["Tab"]
	local sw_Section = Properties["Section"]
	local sw_Color = Properties["Button Color"]
	
	if sw_Section ~= nil then
		local Button = Instance.new("Frame")
		local Text = Instance.new("TextLabel")
		local TextButton = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local UICorner_2 = Instance.new("UICorner")

		--Properties:

		Button.Name = "Button"
		Button.Parent = UILib[sw_Tab].Frame.Container[sw_Section].Pres.SectionInside
		UILib[sw_Tab].Frame.Container[sw_Section].Pres.SectionInside.Size = UILib[sw_Tab].Frame.Container[sw_Section].Pres.SectionInside.Size + UDim2.new(0,0,0,30)
		UILib[sw_Tab].Frame.Container[sw_Section].Size = UILib[sw_Tab].Frame.Container[sw_Section].Size + UDim2.new(0,0,0,30)
		UILib[sw_Tab].Frame.Container.Size = UILib[sw_Tab].Frame.Container.Size + UDim2.new(0,0,0,30)
		Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Button.BackgroundTransparency = 0
		Button.BorderSizePixel = 0
		Button.ClipsDescendants = true
		Button.Position = UDim2.new(0, 0, 1, 0)
		Button.Size = UDim2.new(1, 0, 0, 30)
		Button.ZIndex = 3

		Text.Name = "Text"
		Text.Parent = Button
		Text.AnchorPoint = Vector2.new(0, 0.5)
		Text.BackgroundColor3 = Color3.fromRGB(48, 51, 59)
		Text.BackgroundTransparency = 1.000
		Text.Position = UDim2.new(0, 0, 0.5, 0)
		Text.Size = UDim2.new(1, 0, 0.600000024, 0)
		Text.ZIndex = 6
		Text.Font = Enum.Font.SourceSansBold
		Text.Text = sw_ButtonName
		Text.TextColor3 = Color3.fromRGB(255, 255, 255)
		Text.TextScaled = true
		Text.TextSize = 14.000
		Text.TextWrapped = true

		TextButton.Parent = Button
		TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
		TextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
		TextButton.Size = UDim2.new(0.949999988, 0, 0.7, 0)
		TextButton.ZIndex = 5
		TextButton.AutoButtonColor = false
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = ""
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 14.000

		UICorner.CornerRadius = UDim.new(0, 9)
		UICorner.Parent = TextButton

		UICorner_2.Parent = Button
		
		TextButton.MouseButton1Click:Connect(function()
			Properties["Callback"]()
		end)
	else
		local Button = Instance.new("Frame")
		local Text = Instance.new("TextLabel")
		local TextButton = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local UICorner_2 = Instance.new("UICorner")

		--Properties:

		Button.Name = "Button"
		Button.Parent = UILib[sw_Tab].Frame.Container
		Button.BackgroundTransparency = 0
		UILib[sw_Tab].Frame.Container.Size = UILib[sw_Tab].Frame.Container.Size + UDim2.new(0,0,0,30)
		Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Button.BackgroundTransparency = 1.000
		Button.BorderSizePixel = 0
		Button.ClipsDescendants = true
		Button.Position = UDim2.new(0, 0, 1, 0)
		Button.Size = UDim2.new(1, 0, 0, 30)
		Button.ZIndex = 3

		Text.Name = "Text"
		Text.Parent = Button
		Text.AnchorPoint = Vector2.new(0, 0.5)
		Text.BackgroundColor3 = Color3.fromRGB(48, 51, 59)
		Text.BackgroundTransparency = 1.000
		Text.Position = UDim2.new(0, 0, 0.5, 0)
		Text.Size = UDim2.new(1, 0, 0.600000024, 0)
		Text.ZIndex = 6
		Text.Font = Enum.Font.SourceSansBold
		Text.Text = sw_ButtonName
		Text.TextColor3 = Color3.fromRGB(255, 255, 255)
		Text.TextScaled = true
		Text.TextSize = 14.000
		Text.TextWrapped = true

		TextButton.Parent = Button
		TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
		TextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
		TextButton.Size = UDim2.new(0.949999988, 0, 0.7, 0)
		TextButton.ZIndex = 5
		TextButton.AutoButtonColor = false
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = ""
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 14.000

		UICorner.CornerRadius = UDim.new(0, 9)
		UICorner.Parent = TextButton

		UICorner_2.Parent = Button

		TextButton.MouseButton1Click:Connect(function()
			Properties["Callback"]()
		end)
	end
end

function library.CreateToggle(Parameters)
	local sw_ToggleName = Parameters["Toggle Name"]
	local sw_Tab = Parameters["Tab"]
	local sw_Section = Parameters["Section"]
	
	if sw_Section ~= nil then

		local Toggle = Instance.new("Frame")
		local Text = Instance.new("TextLabel")
		local TextButton = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local ImageLabel = Instance.new("ImageLabel")
		local ImageLabel_2 = Instance.new("ImageLabel")

		--Properties:

		Toggle.Name = "Toggle"
		Toggle.Parent = UILib[sw_Tab].Frame.Container[sw_Section].Pres.SectionInside
		UILib[sw_Tab].Frame.Container[sw_Section].Pres.SectionInside.Size = UILib[sw_Tab].Frame.Container[sw_Section].Pres.SectionInside.Size + UDim2.new(0,0,0,30)
		UILib[sw_Tab].Frame.Container[sw_Section].Size = UILib[sw_Tab].Frame.Container[sw_Section].Size + UDim2.new(0,0,0,30)
		UILib[sw_Tab].Frame.Container.Size = UILib[sw_Tab].Frame.Container.Size + UDim2.new(0,0,0,30)
		Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Toggle.BorderSizePixel = 0
		Toggle.ClipsDescendants = true
		Toggle.Position = UDim2.new(0, 0, 1, 0)
		Toggle.Size = UDim2.new(1, 0, 0, 30)
		Toggle.ZIndex = 3

		Text.Name = "Text"
		Text.Parent = Toggle
		Text.AnchorPoint = Vector2.new(0, 0.5)
		Text.BackgroundColor3 = Color3.fromRGB(48, 51, 59)
		Text.BackgroundTransparency = 1.000
		Text.Position = UDim2.new(0.233000085, 0, 0.486666858, 0)
		Text.Size = UDim2.new(0.766666651, 0, 0.600000024, 0)
		Text.ZIndex = 6
		Text.Font = Enum.Font.SourceSansBold
		Text.Text = sw_ToggleName
		Text.TextColor3 = Color3.fromRGB(104, 104, 104)
		Text.TextScaled = true
		Text.TextSize = 14.000
		Text.TextWrapped = true
		Text.TextXAlignment = Enum.TextXAlignment.Left

		TextButton.Parent = Toggle
		TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
		TextButton.BackgroundTransparency = 1.000
		TextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
		TextButton.Size = UDim2.new(0.949999988, 0, 0.699999988, 0)
		TextButton.ZIndex = 5
		TextButton.AutoButtonColor = false
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = ""
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 14.000

		UICorner.Parent = Toggle

		ImageLabel.Parent = Toggle
		ImageLabel.AnchorPoint = Vector2.new(0, 0.5)
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.BackgroundTransparency = 1.000
		ImageLabel.BorderSizePixel = 0
		ImageLabel.Position = UDim2.new(0.0700000003, 0, 0.5, 0)
		ImageLabel.Size = UDim2.new(0.119999997, 0, 0.600000024, 0)
		ImageLabel.ZIndex = 9
		ImageLabel.Image = "rbxassetid://2763450503"
		ImageLabel.ImageColor3 = Color3.fromRGB(51, 56, 66)

		ImageLabel_2.Parent = Toggle
		ImageLabel_2.AnchorPoint = Vector2.new(0, 0.5)
		ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel_2.BackgroundTransparency = 1.000
		ImageLabel_2.BorderSizePixel = 0
		ImageLabel_2.Position = UDim2.new(0.0700000003, 0, 0.5, 0)
		ImageLabel_2.Size = UDim2.new(0.119999997, 0, 0.600000024, 0)
		ImageLabel_2.ZIndex = 9
		ImageLabel_2.Image = "rbxassetid://7442093008"
		ImageLabel_2.ImageColor3 = Color3.fromRGB(255, 170, 0)
		ImageLabel_2.ImageTransparency = 1.000
		
		TextButton.MouseButton1Click:Connect(function()
			if ImageLabel_2.ImageTransparency == 1 then
				game.TweenService:Create(ImageLabel,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(255, 170, 0)}):Play()
				game.TweenService:Create(ImageLabel_2,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
				game.TweenService:Create(Text,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				Parameters["Callback"](true)
			elseif ImageLabel_2.ImageTransparency == 0 then
				game.TweenService:Create(ImageLabel,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(51, 56, 66)}):Play()
				game.TweenService:Create(ImageLabel_2,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{ImageTransparency = 1}):Play()
				game.TweenService:Create(Text,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(104, 104, 104)}):Play()
				Parameters["Callback"](false)
			end
		end)
	else
		local Toggle = Instance.new("Frame")
		local Text = Instance.new("TextLabel")
		local TextButton = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local ImageLabel = Instance.new("ImageLabel")
		local ImageLabel_2 = Instance.new("ImageLabel")

		--Properties:

		Toggle.Name = "Toggle"
		Toggle.Parent = UILib[sw_Tab].Frame.Container
		UILib[sw_Tab].Frame.Container[sw_Section].Size = UILib[sw_Tab].Frame.Container[sw_Section].Size + UDim2.new(0,0,0,30)
		Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Toggle.BorderSizePixel = 0
		Toggle.ClipsDescendants = true
		Toggle.Position = UDim2.new(0, 0, 1, 0)
		Toggle.Size = UDim2.new(1, 0, 0, 30)
		Toggle.ZIndex = 3

		Text.Name = "Text"
		Text.Parent = Toggle
		Text.AnchorPoint = Vector2.new(0, 0.5)
		Text.BackgroundColor3 = Color3.fromRGB(48, 51, 59)
		Text.BackgroundTransparency = 1.000
		Text.Position = UDim2.new(0.233000085, 0, 0.486666858, 0)
		Text.Size = UDim2.new(0.766666651, 0, 0.600000024, 0)
		Text.ZIndex = 6
		Text.Font = Enum.Font.SourceSansBold
		Text.Text = sw_ToggleName
		Text.TextColor3 = Color3.fromRGB(104, 104, 104)
		Text.TextScaled = true
		Text.TextSize = 14.000
		Text.TextWrapped = true
		Text.TextXAlignment = Enum.TextXAlignment.Left

		TextButton.Parent = Toggle
		TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
		TextButton.BackgroundTransparency = 1.000
		TextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
		TextButton.Size = UDim2.new(0.949999988, 0, 0.699999988, 0)
		TextButton.ZIndex = 5
		TextButton.AutoButtonColor = false
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = ""
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 14.000

		UICorner.Parent = Toggle

		ImageLabel.Parent = Toggle
		ImageLabel.AnchorPoint = Vector2.new(0, 0.5)
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.BackgroundTransparency = 1.000
		ImageLabel.BorderSizePixel = 0
		ImageLabel.Position = UDim2.new(0.0700000003, 0, 0.5, 0)
		ImageLabel.Size = UDim2.new(0.119999997, 0, 0.600000024, 0)
		ImageLabel.ZIndex = 9
		ImageLabel.Image = "rbxassetid://2763450503"
		ImageLabel.ImageColor3 = Color3.fromRGB(51, 56, 66)

		ImageLabel_2.Parent = Toggle
		ImageLabel_2.AnchorPoint = Vector2.new(0, 0.5)
		ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel_2.BackgroundTransparency = 1.000
		ImageLabel_2.BorderSizePixel = 0
		ImageLabel_2.Position = UDim2.new(0.0700000003, 0, 0.5, 0)
		ImageLabel_2.Size = UDim2.new(0.119999997, 0, 0.600000024, 0)
		ImageLabel_2.ZIndex = 9
		ImageLabel_2.Image = "rbxassetid://7442093008"
		ImageLabel_2.ImageColor3 = Color3.fromRGB(255, 170, 0)
		ImageLabel_2.ImageTransparency = 1.000

		TextButton.MouseButton1Click:Connect(function()
			if ImageLabel_2.ImageTransparency == 1 then
				game.TweenService:Create(ImageLabel,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(255, 170, 0)}):Play()
				game.TweenService:Create(ImageLabel_2,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
				game.TweenService:Create(Text,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				Parameters["Callback"](true)
			elseif ImageLabel_2.ImageTransparency == 0 then
				game.TweenService:Create(ImageLabel,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(51, 56, 66)}):Play()
				game.TweenService:Create(ImageLabel_2,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{ImageTransparency = 1}):Play()
				game.TweenService:Create(Text,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(104, 104, 104)}):Play()
				Parameters["Callback"](false)
			end
		end)
	end
end

function library.CreateSlider(Parameters)
	
	local sw_Min = Parameters["Min"]
	local sw_Max = Parameters["Max"]
	local sw_Interval = Parameters["Interval"]
	local sw_Name = Parameters["Name"]
	local sw_Tab = Parameters["Tab"]
	local sw_Section = Parameters["Section"]
	
	if sw_Section ~= nil then
		local Slider = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Frame = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local Frame_2 = Instance.new("Frame")
		local UICorner_3 = Instance.new("UICorner")
		local Folder = Instance.new("Folder")
		local Text = Instance.new("TextLabel")
		local Frame_3 = Instance.new("Frame")
		local UICorner_4 = Instance.new("UICorner")

		--Properties:

		Slider.Name = "Slider"
		Slider.Parent = UILib[sw_Tab].Frame.Container[sw_Section].Pres.SectionInside
		UILib[sw_Tab].Frame.Container[sw_Section].Pres.SectionInside.Size = UILib[sw_Tab].Frame.Container[sw_Section].Pres.SectionInside.Size + UDim2.new(0,0,0,30)
		UILib[sw_Tab].Frame.Container[sw_Section].Size = UILib[sw_Tab].Frame.Container[sw_Section].Size + UDim2.new(0,0,0,30)
		UILib[sw_Tab].Frame.Container.Size = UILib[sw_Tab].Frame.Container.Size + UDim2.new(0,0,0,30)
		Slider.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Slider.BorderSizePixel = 0
		Slider.ClipsDescendants = true
		Slider.Position = UDim2.new(0, 0, 1, 0)
		Slider.Size = UDim2.new(1, 0, 0, 30)
		Slider.ZIndex = 3

		UICorner.Parent = Slider

		Frame.Parent = Slider
		Frame.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame.BackgroundColor3 = Color3.fromRGB(43, 47, 55)
		Frame.BorderSizePixel = 0
		Frame.Position = UDim2.new(0.5, 0, 0.300000012, 0)
		Frame.Size = UDim2.new(0.850000024, 0, 0.150000006, 0)
		Frame.ZIndex = 8

		UICorner_2.CornerRadius = UDim.new(5, 0)
		UICorner_2.Parent = Frame

		Frame_2.Parent = Frame
		Frame_2.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
		Frame_2.BorderSizePixel = 0
		Frame_2.Size = UDim2.new(0.5, 0, 1, 0)
		Frame_2.ZIndex = 8

		UICorner_3.CornerRadius = UDim.new(5, 0)
		UICorner_3.Parent = Frame_2

		Folder.Parent = Frame

		Text.Name = "Text"
		Text.Parent = Frame
		Text.AnchorPoint = Vector2.new(0, 0.5)
		Text.BackgroundColor3 = Color3.fromRGB(48, 51, 59)
		Text.BackgroundTransparency = 1.000
		Text.Position = UDim2.new(0.0250000004, 0, 2.96000004, 0)
		Text.Size = UDim2.new(0.949999988, 0, 2.80557156, 0)
		Text.ZIndex = 6
		Text.Font = Enum.Font.SourceSansBold
		Text.Text = "Slider: 0"
		Text.TextColor3 = Color3.fromRGB(255, 255, 255)
		Text.TextScaled = true
		Text.TextSize = 14.000
		Text.TextWrapped = true

		Frame_3.Parent = Frame
		Frame_3.AnchorPoint = Vector2.new(0, 0.5)
		Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame_3.BorderSizePixel = 0
		Frame_3.Position = UDim2.new(0.49000001, 0, 0.5, 0)
		Frame_3.Size = UDim2.new(0.0500000007, 0, 3, 0)
		Frame_3.ZIndex = 8

		UICorner_4.CornerRadius = UDim.new(5, 0)
		UICorner_4.Parent = Frame_3
		
		local function roundNumber(num, numDecimalPlaces)
			return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
		end
		
		for i = sw_Min,sw_Max,sw_Interval do
			local NewFrame = Instance.new("Frame")
			NewFrame.Parent = Folder
			NewFrame.Name = (i)
			NewFrame.AnchorPoint = Vector2.new(0,0.5)
			NewFrame.Position = UDim2.new(i / (sw_Max + 1),0,0.5,0)
			NewFrame.Size = UDim2.new(0.027,0,2,0)
			NewFrame.BackgroundTransparency = 1
			task.wait()
		end
		
		local NewFrame = Instance.new("Frame")
		NewFrame.Parent = Folder
		NewFrame.Name = sw_Max + 1
		NewFrame.AnchorPoint = Vector2.new(0,0.5)
		NewFrame.Position = UDim2.new(1,0,0.5,0)
		NewFrame.Size = UDim2.new(0.03,0,2,0)
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
					Text.Text = tostring(sw_Name..": "..roundNumber(v.Name,1))

					game.TweenService:Create(Frame_2,TweenInfo.new(0.1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UDim2.new(v.Position.X.Scale,0,1,0)}):Play()
					game.TweenService:Create(Frame_3,TweenInfo.new(0.1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Position = UDim2.new(v.Position.X.Scale - 0.01,0,0,0)}):Play()

					Parameters["Callback"](roundNumber(v.Name,1))
				end
			end)
		end
	else
		
	end
	
	
end

return library
