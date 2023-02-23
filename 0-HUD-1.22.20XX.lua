-- Create a HP stat
local hp = 0

-- Create a Mana stat
local mana = 0

-- Create an Experience stat
local exp = 0

-- Create a function to update stats
function updateStats(player)
	hp = player.hp
	mana = player.mana
	exp = player.exp
end

-- Create a GUI to display the player stats
local playerStats = Instance.new("ScreenGui")
playerStats.Name = "PlayerStats"
playerStats.Parent = game.Players.LocalPlayer.PlayerGui

local hpLabel = Instance.new("TextLabel")
hpLabel.Name = "HPLabel"
hpLabel.Text = "HP: " .. hp .. "%"
hpLabel.Position = UDim2.new(0, 10, 0, 10)
hpLabel.Size = UDim2.new(0, 100, 0, 30)
hpLabel.Parent = playerStats

local manaLabel = Instance.new("TextLabel")
manaLabel.Name = "ManaLabel"
manaLabel.Text = "Mana: " .. mana .. "%"
manaLabel.Position = UDim2.new(0, 10, 0, 50)
manaLabel.Size = UDim2.new(0, 100, 0, 30)
manaLabel.Parent = playerStats

local expLabel = Instance.new("TextLabel")
expLabel.Name = "ExpLabel"
expLabel.Text = "Exp: " .. exp .. "%"
expLabel.Position = UDim2.new(0, 10, 0, 90)
expLabel.Size = UDim2.new(0, 100, 0, 30)
expLabel.Parent = playerStats

-- Use the player data to update the stats
local player = {
	hp = 50,
	mana = 80,
	exp = 30
}
updateStats(player)
