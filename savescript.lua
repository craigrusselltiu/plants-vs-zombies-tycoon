-- Function that loads player data from the data store upon entering
function onPlayerEntered(player)
    wait()
    player:WaitForDataReady() -- Wait until data is ready

    repeat wait() until player:FindFirstChild("leaderstats")

    if player.DataReady then
        if player:findFirstChild("leaderstats") then
            local score = player.leaderstats:GetChildren()

            for i = 1, #score do
                local ScoreLoaded = player:LoadNumber(score[i].Name)
                wait()

                if ScoreLoaded ~= 0 then
                    score[i].Value = ScoreLoaded
                end
            end
        end
    end
end

-- Function that saves player data to the data store upon leaving
function onPlayerLeaving(player)
    if player:findFirstChild("leaderstats") then
        local score = player.leaderstats:GetChildren()
        for i = 1, #score do
            player:SaveNumber(score[i].Name, score[i].Value)
        end
    end
end
    
    game.Players.PlayerAdded:connect(onPlayerEntered)
    game.Players.PlayerRemoving:connect(onPlayerLeaving)
    