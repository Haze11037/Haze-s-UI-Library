Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Haze11037/Haze-s-UI-Library/main/UILib4.lua"))()

Library.CreateTab({
	["Tab Name"] = "Tab";
	["Tab Color"] = Color3.fromRGB(255, 170, 0);
	["Font"] = Enum.Font.SourceSansBold;
	["Font Color"] = Color3.fromRGB(255, 255, 255);
})

Library.CreateSection({
	["Section Name"] = "Test Section";
	["Tab"] = "Tab";
	["Font Color"] = Color3.fromRGB(255, 255, 255);
})

Library.CreateButton({
	["Button Name"] = "plz click me";
	["Tab"] = "Tab";
	["Section"] = "Test Section";
	["Button Color"] = Color3.fromRGB(255, 170, 0);
	["Callback"] = function()
		print("Clicked!")
	end;
})

Library.CreateToggle({
	["Toggle Name"] = "Toggle!";
	["Tab"] = "Tab";
	["Section"] = "Test Section";
	["Callback"] = function(Value)
		print(Value)
	end;
})

Library.CreateSlider({
	["Min"] = 1;
	["Max"] = 100;
	["Interval"] = 1;
	["Name"] = "Speed";
	["Tab"] = "Tab";
	["Section"] = "Test Section";
	["Callback"] = function(Value)
		print(Value)
	end,
})

Library.CreateLabel({
	["Text Content"] = [[UI Library by Haze]];
	["Tab"] = "Tab";
	["Section"] = "Test Section";
	["Rich Text Enabled"] = false
})
