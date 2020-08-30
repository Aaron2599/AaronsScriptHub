local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "ok",
     Style = 1,
     SizeX = 200,
     SizeY = 300,
     Theme = "Dark"
})

local Main = UI.New({
    Title = "Made By sleep#8303"
})


local repulse = Main.Button({
    Text = "repulse",
    Callback = function()
for i,v in pairs(game.Players:GetPlayers()) do

local repulse = game:GetService("Players").LocalPlayer.Backpack.Force.Assets.Events.repulse
repulse:FireServer(
    v.Character,
    true,
    "stopHackingPleaseYouRat:)"
)

end
    end,
})

local choke = Main.Button({
    Text = "choke",
    Callback = function()
for i,v in pairs(game.Players:GetPlayers()) do
local toggleChoke = game:GetService("Players").LocalPlayer.Backpack.Force.Assets.Events.toggleChoke
toggleChoke:FireServer(
    v.Character,
    true,
    "stopHackingPleaseYouRat:)"
)
end
    end,
})

local heal = Main.Button({
    Text = "heal",
    Callback = function()
for i,v in pairs(game.Players:GetPlayers()) do
while wait() do
local heal = game:GetService("Players").LocalPlayer.Backpack.Force.Assets.Events.heal
heal:FireServer(
    v.Character,
    true,
    "stopHackingPleaseYouRat:)"
)
end
end
    end,
})

