local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Mob Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "config"})
local Teleport = game:GetService("TeleportService")
local ShortCutTeleport = Enum.TeleportResult
local serverid
local Tab = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://11433532654",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Teleport to server(lumber tycoon2)"
})


Tab:AddTextbox({
	Name = "Server Id",
	Default = "nothing",
	TextDisappear = true,
	Callback = function(Value)
		serverid = Value
	end	  
})

Tab:AddButton({
	Name = "Join ("..serverid..")",
	Callback = function()
		Teleport:Teleport(serverid, game.Players.LocalPlayer))
	end    
})
