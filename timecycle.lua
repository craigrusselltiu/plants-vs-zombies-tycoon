Time = game:service("Lighting")
wtime = 0.5

-- Constant time update
while true do

    -- Day cycle (lasts longer)
    if game.Lighting.TimeOfDay < ("06:00:00") or game.Lighting.TimeOfDay > ("18:10:00") then
        wtime = 0.5
    end

    -- Night cycle (lasts shorter)
    if game.Lighting.TimeOfDay > ("06:00:00") and game.Lighting.TimeOfDay < ("18:10:00") then
        wtime = 0.2
    end

    Time:SetMinutesAfterMidnight(Time:GetMinutesAfterMidnight() + 1)
    wait(wtime)
end
