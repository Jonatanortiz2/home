local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Jonatanortiz2/home/main/Roblox-Projects/Jons-Ui-Library/Source.lua'))();
--[[
  Library Cached.
]]
local Window = Library:CreateWindow('Ai Assist V2.0',false);
--[[
_______    _         
|__   __|  | |        
  | | __ _| |__  ___ 
  | |/ _` | '_ \/ __|
  | | (_| | |_) \__ \
  |_|\__,_|_.__/|___/
]]
local TeamCheckTab = Window:CreateTab("TeamCheck", false, 'rbxassetid://11924548499', Vector2.new(0, 0), Vector2.new(0, 0));
local AimbotTab = Window:CreateTab('Aim Assist', false, 'rbxassetid://11924663253', Vector2.new(0, 0), Vector2.new(0, 0));
local HbeTab = Window:CreateTab('Hbe Settings', false, 'rbxassetid://4483362458', Vector2.new(0, 0), Vector2.new(0, 0));
local DiscretSilentAimTab = Window:CreateTab('Silent Aim', false, 'rbxassetid://4483362458', Vector2.new(0, 0), Vector2.new(0, 0));
local ThrowAssistanceTab = Window:CreateTab('Throw Assistance', false, 'rbxassetid://11924663253', Vector2.new(0, 0), Vector2.new(0, 0));
local StabAissistanceTab = Window:CreateTab('Stab Assistance', false, 'rbxassetid://11924663253', Vector2.new(0, 0), Vector2.new(0, 0));
local GameBoosterTab = Window:CreateTab('Game Booster', false, 'rbxassetid://4483362458', Vector2.new(0, 0), Vector2.new(0, 0));
local ShowClanPointsTab = Window:CreateTab('Clan Points ui', false, 'rbxassetid://4483362458', Vector2.new(0, 0), Vector2.new(0, 0));
local VisualsTab = Window:CreateTab('Visuals', false, 'rbxassetid://11924540913', Vector2.new(0, 0), Vector2.new(0, 0));
local Configs = Window:CreateTab('Configs', false, 'rbxassetid://11924544850', Vector2.new(0, 0), Vector2.new(0, 0));
local LibraryFunctions = Window:CreateTab('Settings', false, 'rbxassetid://11924543588', Vector2.new(0, 0), Vector2.new(0, 0));
local Uithemes = Window:CreateTab('Ui', false, 'rbxassetid://11924549578', Vector2.new(0, 0), Vector2.new(0, 0));
local Discord = Window:CreateTab('Discord', true, 'rbxassetid://11529076255', Vector2.new(0, 0), Vector2.new(0, 0));

--[[
 _____           _   _                 
/ ____|         | | (_)                
| (___   ___  ___| |_ _  ___  _ __  ___ 
\___ \ / _ \/ __| __| |/ _ \| '_ \/ __|
____) |  __/ (__| |_| | (_) | | | \__ \
|_____/ \___|\___|\__|_|\___/|_| |_|___/                             
]]
local TeamCheckSection = TeamCheckTab:CreateSection('Team Check')
local AimbotSection = AimbotTab:CreateSection('Aim Assist')
local HbeSection = HbeTab:CreateSection('Hbe Settings')
local DiscretSilentAimSection = DiscretSilentAimTab:CreateSection('Silent Aim')
local ThrowAssistanceSection = ThrowAssistanceTab:CreateSection('Throw Assistance')
local StabAssistanceSection = StabAissistanceTab:CreateSection('Stab Assistance')
local GameBoosterSection = GameBoosterTab:CreateSection('Game Booster')
local ShowClanPointsSection = ShowClanPointsTab:CreateSection('Clan Points ui')
local VisualsSection = VisualsTab:CreateSection('Visuals')
local ConfigsSection = Configs:CreateSection('Configs')
local UIFunctions = LibraryFunctions:CreateSection('Settings')
local UithemesSection = Uithemes:CreateSection('Ui')
local DiscordSection = Discord:CreateSection('Discord')

-- // Team Check

TeamCheckSection:CreateToggle("Team Check", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    return
end)
TeamCheckSection:CreateLabel('Aimbot & Esp')
TeamCheckSection:CreateToggle("visibility check", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    return
end)
TeamCheckSection:CreateToggle("Distance Check", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    return
end)
TeamCheckSection:CreateToggle("Infinity Distance", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    return
end)
TeamCheckSection:CreateSlider("Distance", 0, 1500, 1000, false, Color3.fromRGB(0, 146, 214), function(Value)
    return
end)
TeamCheckSection:CreateLabel('Esp')
TeamCheckSection:CreateToggle("Show Distance", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    return
end)

-- // Assistance Settings

AimbotSection:CreateKeybind('Aim Assist', 'E', function(Value)
    return
end)
AimbotSection:CreateDropdown('Aim Method',{'FirstPerson', 'ThirdPerson', 'ClosestPlayerToMouse'}, 'ClosestPlayerToMouse', false, 0.25, function(Value)
    return
end)
AimbotSection:CreateKeybind('Trigger keybind', 'Right Mouse', function(Value)
    return
end)
AimbotSection:CreateLabel('Circle FOV Settings')
AimbotSection:CreateToggle("Show FOV", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    return
end)
AimbotSection:CreateSlider("FOV Size", 0, 1000, 250, false, Color3.fromRGB(0, 146, 214), function(Value)
    return
end)
AimbotSection:CreateColorpicker('FOV Color', Color3.fromRGB(220, 53, 53), 0.25, function(Value)
    return
end)
AimbotSection:CreateLabel('Aimbot Settings')
AimbotSection:CreateSlider("X Offset", 0, 400, 200, false, Color3.fromRGB(0, 146, 214), function(Value)
    return
end)
AimbotSection:CreateSlider("Y Offset", 0, 400, 200, false, Color3.fromRGB(0, 146, 214), function(Value)
    return
end) 

-- // Hitbox Extender
local HitboxEnabled = false;
local HitboxToggle = HbeSection:CreateToggle("Hitbox Extender", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    HitboxEnabled = Value;
end)
HbeSection:CreateKeybind('Hitbox Extender', 'Nine', function(Value)
    HitboxEnabled = not HitboxEnabled
    HitboxToggle:Set(HitboxEnabled)
end)
HbeSection:CreateSlider("X Size",2,100, 9, false, Color3.fromRGB(0, 146, 214), function(Value)
    return
end)
HbeSection:CreateSlider("Y Size",2,100, 9, false, Color3.fromRGB(0, 146, 214), function(Value)
    return
end)
HbeSection:CreateSlider("Z Size",1,100, 9, false, Color3.fromRGB(0, 146, 214), function(Value)
    return
end)
HbeSection:CreateButton("Bypass", function()
    return
end)

-- // Descret Silent Aim

DiscretSilentAimSection:CreateKeybind("Silent Aim", 'R', function(Value)
    return
end)
DiscretSilentAimSection:CreateKeybind("Spamable Silent Aim", 'F', function(Value)
    return
end)

-- // Throw Assistance

ThrowAssistanceSection:CreateKeybind("Fast Throw", 'G', function(Value)
    return
end)

-- // Stab Assistance

StabAssistanceSection:CreateToggle("Stab Assistance", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    return
end)

-- // Game Booster

GameBoosterSection:CreateButton('Boost Fps', function()
    Library:CreatePrompt('TwoButton', '!⚠️Warning⚠️!', 'Please Choose Between Soft Boost And Hard Boost; Soft Boost won\'t significantly harm your game.', {
        'Soft Boost',
        function()
            return
        end,
        'Hard Boost',
        function()
            return
        end
    })
end)

-- // Clan Points

ShowClanPointsSection:CreateToggle("Show Clan Points", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    return
end)
ShowClanPointsSection:CreateLabel('Time Played');
ShowClanPointsSection:CreateToggle("Show Hours Played", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    return
end)
ShowClanPointsSection:CreateToggle("Show Minutes Played", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    return
end)
ShowClanPointsSection:CreateToggle("Show Seconds Played", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    return
end)
ShowClanPointsSection:CreateLabel('Points');
ShowClanPointsSection:CreateDropdown('Clan Points Multiplier', {"1X","2X","3X","4X","5X"}, '1X', false, 0.25, function(Value)
    return
end)
ShowClanPointsSection:CreateLabel('5X It\'s Bannable (Tried it myself)');
ShowClanPointsSection:CreateToggle("Points Glitch", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    return
end)
-- // Visuals

VisualsSection:CreateToggle("Esp", false, Color3.fromRGB(0, 146, 214), 0.25, function(bap)
    return
end)
VisualsSection:CreateToggle("TeamColor", false, Color3.fromRGB(0, 146, 214), 0.25, function(balp)
    return
end)
VisualsSection:CreateColorpicker('ESP Color', Color3.fromRGB(0,216,111), 0.25, function(color)
    return
end)
VisualsSection:CreateLabel('Tracers')
VisualsSection:CreateToggle("Tracers", false, Color3.fromRGB(0, 146, 214), 0.25, function(bap)
    return
end)
VisualsSection:CreateDropdown('Tracers Origin', {"Top","Middle","Bottom","Mouse"}, 'Top', false, 0.25, function(okk)
    return
end)
VisualsSection:CreateLabel('Boxes ESP')
VisualsSection:CreateToggle("Boxes", false, Color3.fromRGB(0, 146, 214), 0.25, function(bap)
    return
end)
VisualsSection:CreateLabel('Name ESP')
VisualsSection:CreateToggle("Names", false, Color3.fromRGB(0, 146, 214), 0.25, function(bap)
    return
end)
VisualsSection:CreateSlider('Text Size', 1, 50, 20, false, Color3.fromRGB(0, 146, 214), function(slided)
    return
end)
VisualsSection:CreateToggle("Text Outline", false, Color3.fromRGB(0, 146, 214), 0.25, function(toggled)
    return
end)
VisualsSection:CreateDropdown("Text Font", {"UI", "System", "Plex", "Monospace"}, 'UI', false, 0.25, function(okk)
    return
end)
VisualsSection:CreateColorpicker('Text Outline', Color3.fromRGB(0, 0,0), 0.25, function(color)
    return
end)
VisualsSection:CreateLabel('Executable ESP')
VisualsSection:CreateButton("Tracers", function()
    return
end)
VisualsSection:CreateButton("Boxes", function()
    return
end)
VisualsSection:CreateButton('Names', function()
    return
end)
VisualsSection:CreateButton("ALL", function()
    return
end)

-- // Gui Options

UIFunctions:CreateButton('Destroy UI', function()
    Library:DestroyUI()
end)
UIFunctions:CreateKeybind('Toggle UI', 'RightControl', function()
    Library:ToggleUI()
end)
UIFunctions:CreateSlider('Ui Transparency', 0, 100, 0, true, Color3.fromRGB(0, 146, 214), function(Value)
    Library:SetTransparency(Value / 100, true)
end)

-- // Configs

ConfigsSection:CreateTextbox('Config Name', 'NAME_HERE', function(Value)
    ConfigNameString = Value
end)
ConfigsSection:CreateButton('Save Config', function()
    Library:SaveConfig(ConfigNameString)
end)
ConfigsDropdown = ConfigsSection:CreateDropdown('Configs', Library:GetConfigs(), nil, false, 0.25, function(Value)
    SelectedConfig = Value
end)
ConfigsSection:CreateButton('Refresh Configs', function()
    ConfigsDropdown:UpdateDropdown(Library:GetConfigs())
end)
ConfigsSection:CreateButton('Delete Config', function()
    Library:DeleteConfig(SelectedConfig)
end)
ConfigsSection:CreateButton('Load Config', function()
    Library:LoadConfig(SelectedConfig)
end)

-- Ui Themes

UithemesSection:CreateDropdown('Themes', Library:GetThemes(), nil, false, 0.25, function(Value)
    Library:ChangeTheme(Value)
end)
for Index, CurrentColor in next, Library:ReturnTheme() do
    UithemesSection:CreateColorpicker(Index, CurrentColor, 0.25, function(color)
        Library:ChangeColor(Index, color)
    end, {true});
end    

-- // Discord

local DiscordLabel = DiscordSection:CreateLabel('Please Join Our Discord At: https://discord.gg/VHyGNV72ey')
DiscordSection:CreateButton('Copy To Clipboard', function()
    setclipboard('https://discord.gg/VHyGNV72ey')
    Library:CreatePrompt('OneButton', '[!] Done', 'The Discord Link has been copied to your Clipboard!', {
        'Done',
        function()
            return
        end
    })
end)
DiscordSection:CreateButton('Launch Discord', function()
    Library:CreatePrompt('TwoButton', 'Are You Sure?', 'This Action Will Open Discord', {
        'Yes',
        function()
            Library:CreatePrompt('OneButton', ('Thank You'..Services.Players.LocalPlayer.Name..' 😁'), 'Thanks For Opening Discord, Launching In 1!', {
                'Done',
                function()
                    return
                end
            })
            spawn(function()
            wait(2)
            syn.request({Url="http://127.0.0.1:6463/rpc?v=1",Method="POST",Headers={["Content-Type"]="application/json",["Origin"]="https://discord.com"},Body=game:GetService("HttpService"):JSONEncode({cmd="INVITE_BROWSER",args={code="VHyGNV72ey"},nonce=game:GetService("HttpService"):GenerateGUID(false)})})
            end)
        end,
        'No',
        function()
        end
    })
end) -- // End
