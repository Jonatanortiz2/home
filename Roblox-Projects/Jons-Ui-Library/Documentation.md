# Jon's Ui Library Documentation

Take A Look At The [Library Source](Source.lua) Here

Take A Look At The [Library Rawed-Source](https://raw.githubusercontent.com/Jonatanortiz2/home/main/Roblox-Projects/Jons-Ui-Library/Source.lua) Here
## Getting My Library
```lua
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Jonatanortiz2/home/main/Roblox-Projects/Jons-Ui-Library/Source.lua'))();
```

## Creating Window

```lua
local Window = Library:CreateWindow('Hub Name', false)
```

| parameters   | Type              | Description |
|:-------------|:------------------|:---------------|
| 1            | `<String>`        | Name of the Ui |
| 2            | `<Bool>`          | if true, themes will be disabled, if false, themes will be enabled (this setting is to increase performance) |

```text
1.) <String> Name of the UI.
2.) <Bool> 
```

## Creating Tabs
```lua
local Tab = Window:CreateTab('Tab', true, 'rbxassetid://4483362458', Vector2.new(0, 0), Vector2.new(0, 0))
```
```text
1.) <String> Name of the tab.
2.) <Bool> Tab visibility.
    2).a When the GUI loads, just the enabled tab will be visible if all other tabs are disabled.
3.) <String> Tab Image URL.
4.) <Vector2> Tab Image RectOffset.
5.) <Vector2> Tab Image RectSize.
```

## Creating Sections
```lua
local Section = Tab:CreateSection('Section')
```
```text
1.) <String> Name of the section.
```

## Creating Labels
```lua
local Label = Section:CreateLabel('Label')
```
```text
1.) <String> Label text.
```
## Updating Labels
```lua
Label:UpdateLabel('New Text')
```
```text
1.) <String> New label text.
```

## Creating Paragraphs
```lua
local Paragraph = Section:CreateParagraph('Paragraph', 'Content')
```
```text
1.) <String> Title of the paragraph.
2.) <String> Content of the paragraph.
```
## Updating Paragraphs
```lua
Paragraph:UpdateParagraph('New Title', 'New Text')
```
```text
1.) <String> New title of the paragraph.
2.) <String> New content of the paragraph.
```

## Creating Buttons
```lua
Section:CreateButton('Button', function()
    print('Button Pressed')
end)
```
```text
1.) <String> Name of the button.
2.) <Function> Function / Callback of the button.
```

## Creating Sliders
```lua
local Slider = Section:CreateSlider('Slider', 1, 100, 50, false, Color3.fromRGB(0, 146, 214), function(Value)
    print(Value)
end)
```
```text
1.) <String> Name of the slider.
2.) <Number> Minimum value of the slider.
3.) <Number> Maximum value of the slider.
4.) <Number> Default value of the slider.
5.) <Bool> Precise Numbers
6.) <Color3> Color of the slider.
7.) <Function> Function / Callback of the slider.
```
## Updating Sliders
```lua
Slider:Set(Value)
```
```text
1.) <Number> Slider Will update To This Value.
```

## Creating Textboxes
```lua
Section:CreateTextbox('Textbox', 'TextGoesHere', function(Value)
    print(Value)
end)
```
```text
1.) <String> Name of the textbox.
2.) <String> placeholder of the textbox.
3.) <Function> Function / Callback of the textbox.
```

## Creating Keybinds
```lua
local Keybind = Section:CreateKeybind('Keybind', 'A', function()
    print('Key Pressed')
end)
```
```text
1.) <String> Name of the keybind.
2.) <String> Default KeyCode.
    1).a For Mouse Please use => "Left Mouse", "Right Mouse"
    2).a Find all KeyCodes here: https://developer.roblox.com/en-us/api-reference/enum/KeyCode
3.) <Function> Function / Callback of the keybind.
```
## Updating Keybinds
```lua
Keybind:Set(Keycode)
```
```text
1.) <String> KeyCode
    1).a Find all KeyCodes here: https://developer.roblox.com/en-us/api-reference/enum/KeyCode
```
## Reading Keybinds
```lua
Keybind:ReadKeybind()
```
```text
1.) <Output> KeyCode
    1).a They will appear as MouseButton1 or MouseButton2 for mouse outputs. The output for regular keycodes are "A, B, C, D."
```

## Creating Toggles
```lua
local Toggle = Section:CreateToggle('Toggle', true, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    print(Value)
end)
```
```text
1.) <String> Name of the toggle.
2.) <Bool> Default value of the toggle.
3.) <Color3> Color of the toggle.
4.) <Number> Debounce of the toggle.
5.) <Function> Function / Callback of the toggle.
```
## Updating Toggles
```lua
Toggle:Set(Value)
```
```text
1.) <Bool> toggle will update to on, off.
```

## Creating Dropdowns
```lua
Section:CreateDropdown('Dropdown', {'Bread', 'Kitten', 'ROBLOX', 'JohnDoe', '5'}, 'Kitten', false, 0.25, function(Value)
    print(Value)
end)
```
```
1.) <String> Name of the dropdown.
2.) <Table> Dropdown options.
3.) <Any> Put nil for none in the dropdown's default option. If it is not zero, it must be of the same type as the table's item; for instance, the drop-down menu is {'Kitten'}, so the Default should be 'Kitten', both strings.
4.) <Bool> Enable Search Tool;
5.) <Number> Debounce of the dropdown opening and closing.
6.) <Function> Function / Callback of the dropdown.
```

## Updating Dropdowns
```lua
Dropdown:UpdateDropdown({'Filter', 'Spoon', 'Fork'})
```
```text
1.) <Table> New list of dropdown options.
```

## Creating Colorpickers
```lua
Colorpicker = Section:CreateColorpicker('Colorpicker', Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    print(Value)
end)
```
```text
1.) <String> Name of the colorpicker.
2.) <Color3> Default color of the colorpicker.
3.) <Number> Debounce of the colorpicker opening and closing.
4.) <Function> Function / Callback of the colorpicker.
```
## Updating Colorpicker
```lua
Colorpicker:Set(Color3)
```
```text
1.) <Color> Color3.fromRGB(255,255,255)
```

## Creating Images
```lua
local Image = Section:CreateImage('Name', 'rbxassetid://11912754017', UDim2.new(0, 250, 0, 250))
```
```text
Show an image.
1.) <String> Name of the Image.
2.) <String> Asset ID.
3.) <UDim2> The size that the image should be.
```

## Updating Images
```lua
Image:UpdateImage('rbxassetid://11912754017', UDim2.new(0, 200, 0, 200))
```
```text
1.) <String> New Asset ID.
2.) <UDim2> The size that the image should be changed to.
```

## Creating Notifications
creates a variety of Notifications on the side of the screen.
```lua
Library:CreateNotification('Notification Title', 'Notification Text', 5)
```
```text
1.) <String> Title of the notification.
2.) <String> The text of the notification.
3.) <Number> The time the notification is on-screen for.
```

## Creating Prompts
creates a Notification with several types inside the UI.

# Just Text
```lua
Library:CreatePrompt('Text', 'Prompt Title', 'Prompt Text', 'Okay')
```
```text
1.) <String> The type of prompt, 'Text'. Nothing Special
2.) <String> The title of the prompt.
3.) <String> The text of the prompt.
4.) <String> The name of the prompt button, button has no callback.
```

# One Button
```lua
Library:CreatePrompt('OneButton', 'Prompt Title', 'Prompt Text', {
    'Okay',
    function()
        print('Prompt Button Pressed')
    end
})
```
```text
1.) <String> The type of prompt => 'OneButton'. Button's text and callback.
2.) <String> The title of the prompt.
3.) <String> The text of the prompt.
4.) <Table> {
    1.) <String> The name of the button.
    2.) <Function> The callback of the button.
}
```

# Two Buttons
```lua
UIFunctions:CreateButton('Create Two Button Prompt', function()
    Library:CreatePrompt('TwoButton', 'Prompt Title', 'Prompt Text', {
        'Button 1',
        function()
            print('Button 1')
        end,
        'Button 2',
        function()
            print('Button 2')
        end
    })
end)
```
```text
1.) <String> The type of prompt, 'TwoButton', for text and two buttons with different callbacks.
2.) <String> The title of the prompt.
3.) <String> The text of the prompt.
4.) <Table> {
    1.) <String> The name of the first button.
    2.) <Function> The callback of the first button.
    3.) <String> The name of the second button.
    4.) <Function> The callback of the second button.
}
```

## Toggle Ui
```lua
Library:ToggleUI()
```
```text
1.) <Optional> Can be Set through a Dropdown, Buttton, Keybind, And Or Slider ? xd.
```

## Update UI Transparency
```lua
Library:SetTransparency(0.5, true)
```
```text
1.) <Number> The new background transparency of the UI.
2.) <Bool> If true, alerts' background transparency will change; if false, it won't.
```
## Creating / Saving Configs
```lua
Library:SaveConfig('Config')
```
```text
1.) <String> The name of the configuration; if it doesn't exist, it will create one; otherwise, it will overwrite it.
```

## Getting All Configs
```lua
Library:GetConfigs()
```

## Deleting Configs
```lua
Library:DeleteConfig('Config')
```
```text
1.) <String> The name of the config to delete.
```

## Loading Configs
```lua
Library:LoadConfig('Config')
```
```text
1.) <String> The name of the config to load.
```

## Themes

## Changing Themes
```lua
Library:ChangeTheme('Default')
```
```text
1.) <String or Table> a custom theme or the name of the theme you want to switch to.
```

## Getting All Themes
```lua
Library:GetThemes()
```

## Changing Theme Colors
Add this code to your UI in a section if you want to create a custom theme from within the user interface.
```lua
for Index, CurrentColor in next, Library:ReturnTheme() do
    ThemesSection:CreateColorpicker(Index, CurrentColor, 0.25, function(color)
        Library:ChangeColor(Index, color)
    end, {true});
end  
```

# Example Script

```lua
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Jonatanortiz2/home/main/Roblox-Projects/Jons-Ui-Library/Source.lua'))();

local Window = Library:CreateWindow('Hub Name', false)

local Tab = Window:CreateTab('Tab', true, 'rbxassetid://4483362458', Vector2.new(0, 0), Vector2.new(0, 0))
local Updates = Window:CreateTab('Updates', true, 'rbxassetid://4483362458', Vector2.new(0, 0), Vector2.new(0, 0))

local Section = Tab:CreateSection('Section')
local UpdatesSection = Updates:CreateSection('Updates')

local Label = Section:CreateLabel('Label')
local Paragraph = Section:CreateParagraph('Paragraph', 'Content')

local Drop = UpdatesSection:CreateDropdown('Dropdown', {'PlayerUndefined1', 'PlayerUndefined2', 'PlayerUndefined3', 'PlayerUndefined4', 'PlayerUndefined5'}, 'PlayerUndefined1', true, 0.25, function(Value)
    print(Value)
end)
UpdatesSection:CreateButton('Update Players', function()
    spawn(function()
        local InsertTable={};
        for i,v in next, game.Players:GetPlayers() do
            table.insert(InsertTable,v.Name)
        end
        Drop:UpdateDropdown(InsertTable)
    end)
end)

Section:CreateButton('Button', function()
    print('Button Pressed')
end)
Section:CreateSlider('Slider', 1, 100, 50, false, Color3.fromRGB(0, 146, 214), function(Value)
    print(Value)
end)
Section:CreateSlider('Precise Slider', 1, 100, 50, true, Color3.fromRGB(0, 146, 214), function(Value)
    print(Value)
end)
Section:CreateTextbox('Textbox', 'TextGoesHere', function(Value)
    print(Value)
end)
Section:CreateKeybind('Keybind', 'A', function()
    print('Key Pressed')
end)
Section:CreateToggle('Toggle', true, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    print(Value)
end)
Section:CreateDropdown('Dropdown', {'Bread', 'Kitten', 'ROBLOX', 'JohnDoe', '5'}, 'Kitten', false, 0.25, function(Value)
    print(Value)
end)
Colorpicker = Section:CreateColorpicker('Colorpicker', Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    print(Value)
end)

local Image = Section:CreateImage('Name', 'rbxassetid://11912754017', UDim2.new(0, 250, 0, 250))

Library:CreatePrompt('OneButton', 'Prompt Title', 'Prompt Text', {
    'Okay',
    function()
        print('Prompt Button Pressed')
    end
})
Section:CreateButton('Create Two Button Prompt', function()
    Library:CreatePrompt('TwoButton', 'Prompt Title', 'Prompt Text', {
        'Button 1',
        function()
            print('Button 1')
        end,
        'Button 2',
        function()
            print('Button 2')
        end
    })
end)
```
