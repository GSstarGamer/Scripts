repeat task.wait() until game:IsLoaded()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local Convertables = require(game:GetService("ReplicatedStorage").PlayerData.InitialPlayerData)
local Player = game.Players.LocalPlayer

local GUI = Library:Create{
    Name = "FallAngel Hub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Library.Themes.Dark,
    Link = "https://discord.gg/tbENWKpgku"
}

GUI:Credit{
	Name = "GS_StarGamer",
	Description = "He is op",
	V3rm = "https://v3rmillion.net/member.php?action=profile&uid=2560793",
	Discord = "discord.gg/tbENWKpgku"
}

GUI:Credit{
	Name = "x3Fall3nAngel",
	Description = "He is op'er",
	V3rm = "https://v3rmillion.net/member.php?action=profile&uid=2270329",
	Discord = "discord.gg/tbENWKpgku"
}

GUI:Notification{
	Title = "Hey!",
	Text = "Join our discord server! discord.gg/tbENWKpgku",
	Duration = 20,
	Callback = function() 
        game:IsLoaded()
    end
}

local Main = GUI:tab{
    Name = "Main",
    Icon = "rbxassetid://2174510075"
}



Main:Button{
	Name = "Cut everthing in your world",
	Description = nil,
	Callback = function() 
        GUI:Notification{
            Title = "Alert!",
            Text = "Do not spam, it does not go any faster, this takes longer time depending on your world size, you can press when a new message comes.",
            Duration = 25,
            Callback = function() end
        }

        
        for i = 1,50 do
        wait()
            for _,v in pairs(workspace['Star_'..Player.Name].Player.Land:GetDescendants()) do
                spawn(function()
                    if string.find(v.Name,'Ore_') or string.find(v.Name,'Tree_')  then
                        for _,v2 in pairs(v:GetChildren()) do
                            game:GetService("ReplicatedStorage").Attack.UpdateHPEvent:FireServer(v2,'Axe')
                        end
                    end
                end)
            end
        end
        
        for _,v in pairs(Convertables.Conversion) do
            game:GetService("ReplicatedStorage").Resources.Conversion:InvokeServer(_,"2000")
            game:GetService("ReplicatedStorage").Resources.BuildingRemo:InvokeServer(_,2000)
        end
        GUI:Notification{
            Title = "Alert",
            Text = "You can press now",
            Duration = 15   ,
            Callback = function() end
        }
    end
}