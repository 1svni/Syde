local cryable = loadstring(game:HttpGet("https://raw.githubusercontent.com/1svni/Cryable/refs/heads/main/Cryable.luau"))()

local window = cryable:Init({
    Title = "Cryable Example UI",
    Accent = Color3.fromRGB(255, 151, 227),
    HitBox = Color3.fromRGB(255, 151, 227)
})

local Tab = window:InitTab({
    Name = "Main Tab",
    Icon = "rbxassetid://10734898592" -- Use any appropriate rbxassetid
})

local Section = Tab:Section("Basic Elements")

Section:Button({
    Name = "Test Button",
    Callback = function()
        cryable:Notify({
            Title = "Notification",
            Content = "You clicked the button!",
            Duration = 3
        })
    end
})

Section:Toggle({
    Name = "Test Toggle",
    Default = false,
    Flag = "Toggle1",
    Callback = function(state)
        
    end
})

Section:Slider({
    Name = "Test Slider",
    Min = 0,
    Max = 100,
    Default = 50,
    Flag = "Slider1",
    Callback = function(value)
        
    end
})

Section:Dropdown({
    Name = "Test Dropdown",
    Options = {"Option 1", "Option 2", "Option 3"},
    Default = "Option 1",
    Flag = "Dropdown1",
    Callback = function(value)
        
    end
})

Section:ColorPicker({
    Name = "Test Color Picker",
    Default = Color3.fromRGB(255, 255, 255),
    Flag = "Color1",
    Callback = function(color)
        
    end
})

Section:Keybind({
    Name = "Test Keybind",
    Default = Enum.KeyCode.F,
    Flag = "Keybind1",
    Callback = function()
        cryable:Notify({
            Title = "Keybind",
            Content = "Keybind pressed!",
            Duration = 3
        })
    end
})

local Tab2 = window:InitTab({
    Name = "Settings",
    Icon = "rbxassetid://10734898592"
})

local SettingsSection = Tab2:Section("Configuration")

SettingsSection:Button({
    Name = "Save Config",
    Callback = function()
        cryable:SaveSettingsConfig()
    end
})

SettingsSection:Button({
    Name = "Load Config",
    Callback = function()
        cryable:LoadSettingsConfig()
    end
})
