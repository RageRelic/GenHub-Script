--GENHUB DOOMSPIRE

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local GenHub = library.new("Doomspire Brickbattle - GenHub - By AryanAgain#5617", GenHub)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- Tab Main
local Main = GenHub:addPage("Main", 5012544693)
local Useful = Main:addSection("Useful")

Useful:addButton("Infinite Jump", function()
    print("Clicked")
	loadstring(game:HttpGet("https://pastebin.com/raw/wbar4sYr"))()
end)

Useful:addButton("Infinite Yield", function()
	print("Clicked")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

Useful:addButton("Ctrl Click Tp", function()
	print("Clicked")
	loadstring(game:HttpGet("https://pastebin.com/raw/m6wLUgqv"))()
end)

Useful:addButton("E To Noclip", function()
	print("Clicked")
	loadstring(game:HttpGet("https://pastebin.pl/view/raw/f2ed48df"))()
end)

Useful:addButton("Freecam (Shift + P)", function()
	print("Clicked")
	loadstring(game:HttpGet("https://pastebin.pl/view/raw/e397e743"))()
end)

--Teleports
local teleports = GenHub:addPage("Teleports", 5012544693)
local Red = teleports:addSection("Red Team Teleports")
local Blue = teleports:addSection("Blue Team Teleports")
local Yellow = teleports:addSection("Yellow Team Teleports")
local Green = teleports:addSection("Green Team Teleports")

Red:addButton("Red Top", function()
    print("Clicked")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-92,131,-1.1)
end)
Red:addButton("Red Bottom", function()
    print("Clicked")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131,25,-1.5)
end)
Blue:addButton("Blue Top", function()
    print("Clicked")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.3,131,91)
end)
Blue:addButton("Blue Bottom", function()
    print("Clicked")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.4,25,131)
end)
Yellow:addButton("Yellow Top", function()
    print("Clicked")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86,131,1)
end)
Yellow:addButton("Yellow Bottom", function()
    print("Clicked")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131,25,-1.5 )
end)
Green:addButton("Green Top", function()
    print("Clicked")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.4,131,-81)
end)
Green:addButton("Green Bottom", function()
    print("Clicked")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.4,25,-131)
end)

--LocalPlayer
local LocalUser = GenHub:addPage("LocalPlayer", 5012544693)
local WalkSpeedAndJumpPower = LocalUser:addSection("WalkSpeed And JumpPower")

WalkSpeedAndJumpPower:addSlider("WalkSpeed", 16, 1, 500, function(s1)
    print("Clicked")
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s1
end)

WalkSpeedAndJumpPower:addSlider("JumpPower", 50, 1, 500, function(s2)
    print("Clicked")
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s2
end)

WalkSpeedAndJumpPower:addButton("Default WalkSpeed", function()
	print("Clicked")
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

WalkSpeedAndJumpPower:addButton("Default JumpPower", function()
	print("Clicked")
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

--Settings
local themeandsettings = GenHub:addPage("Settings", 5012544693)
local gui = themeandsettings:addSection("Gui")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
gui:addColorPicker(theme, color, function(color3)
GenHub:setTheme(theme, color3)
end)
end

gui:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
print("Activated Keybind")
GenHub:toggle()
end, function()
print("Changed Keybind")
end)



-- load
GenHub:SelectPage(GenHub.pages[1], true)
