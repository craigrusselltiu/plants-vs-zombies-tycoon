-- Function that adds a player to the leaderboard
function Entered(player)
    wait()

    if player:findFirstChild("leaderstats") ~= nil then
            player.leaderstats:remove()
    end

    stats = Instance.new("IntValue") -- Create leaderboard
    stats.Parent = player -- Attach to player
    stats.Name = "leaderstats" -- Name of leaderboard

    money = Instance.new("IntValue") -- Create currency
    money.Parent = stats -- Attach to leaderboard
    money.Name = "Money" -- Currency name
    money.Value = 500 -- How much currency you start with
end

game.Players.PlayerAdded:connect(Entered) -- When player enters, add them to leaderboard

-- Make sure all players are in the leaderboard
c = game.Players:GetChildren()
for i = 1, #c do
    Entered(c[i])
end
