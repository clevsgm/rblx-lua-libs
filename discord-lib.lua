--// main //--
local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
-- library^
local win = lib:Window("Discord")
-- i dunno // dont move this // just creates a window^

local mainSv = win:Server("server", "")
-- varServer = win:Server("Name")^

local mainCh = mainSv:Channel("main")
-- varName = server:Channel("Name")^

-------------------------------------
--// funcs // --

--button//
mainCh:Button("Get max level", function()
DiscordLib:Notification("Notification", "Max level!", "Okay!")
end)

-- toggle//
mainCh:Toggle("Auto-Farm",false, function(bool)
    print(bool)
end)

-- slider//
local sldr = mainCh:Slider("Slide me!", 0, 1000, 400, function(t)
    print(t)
end)
mainCh:Button("Change to 50", function()
    sldr:Change(50)
end)

-- dropdown//
local drop = mainCh:Dropdown("Pick me!",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(bool)
    print(bool)
end)
mainCh:Button("Clear", function()
    drop:Clear()
end)

-- colors picker//
mainCh:Colorpicker("ESP Color", Color3.fromRGB(255,1,1), function(t)
    print(t)
end)

-- text box//
mainCh:Textbox("Gun power", "Type here!", true, function(t)
    print(t)
end)

-- label//
mainCh:Label("This is just a label.")

-- bind//
mainCh:Bind("Kill bind", Enum.KeyCode.RightShift, function()
    print("Killed everyone!")
end)
