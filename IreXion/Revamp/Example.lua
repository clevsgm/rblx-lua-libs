local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/IreXion-UI-Library/main/Revamp/IreXion%20UI%20Library"))()

local Gui = Library:AddGui({
    Title = {"IreXion", "UI Library"},
    ThemeColor = Color3.fromRGB(0, 255, 0),
    ToggleKey = Enum.KeyCode.RightShift,
})

local Tab = Gui:AddTab("IreXion Tab")

local Category = Tab:AddCategory("IreXion Category")

local Button = Category:AddButton("IreXion Button", function()
    print("Button pressed")
end)

Button:AddToolTip("This is a cool button.")

local Toggle = Category:AddToggle("IreXion Toggle", false, function(toggle)
    (toggle and print or warn)(toggle)
end)

Toggle:AddToolTip("This is a cool toggle.")

local Box = Category:AddBox("IreXion Box", function(text)
    print(text)
end)

Box:AddToolTip("This is a cool Box.")

Category:AddLabel("Label")

Category:AddDualLabel({"Label1", "Label2"})

local Slider = Category:AddSlider("IreXion Slider", 1, 100, 50, true, function(value)
    print("Slider value:", value)
end)

local ToggleSlider = Category:AddToggleSlider("IreXion ToggleSlider", 1, 100, 50, true, false, function(value)
    print("ToggleSlider value:", value)
end)

Slider:AddToolTip("This is a cool slider.")

local Dropdown = Category:AddDropdown("IreXion Dropdown", {
    "Item1",
    "Item2",
    "Item3",
    "Item4",
    "Item5",
}, function(name)
    print(name)
end)

Dropdown:AddToolTip("This is a cool dropdown.")

local Bind = Category:AddBind("IreXion Bind", Enum.KeyCode.RightShift, function()
    print("Bind activated.")
end)

Bind:AddToolTip("This is a cool bind.")

local ToggleBind = Category:AddToggleBind("IreXion ToggleBind", Enum.KeyCode.LeftShift, false, function()
    print("ToggleBind activated.")
end)

ToggleBind:AddToolTip("This is a cool togglebind.")

Library:Notify("IreXion Notification", function(yesno)
    print("User selected:", yesno)
end)

-- Rainbow Theme

game.RunService.Stepped:Connect(function()
    Gui:SetTheme(Color3.fromHSV(tick() % 5 / 5, 1, 1))
end)
