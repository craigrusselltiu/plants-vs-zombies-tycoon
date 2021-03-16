local ting = 0 --debouncer
owner = script.Parent.Parent.Parent.OwnerName --This is the thing that holds the owners name

function onTouched(hit)
	if ting == 0 then --debounce check
        ting = 1 --activate debounce
        check = hit.Parent:FindFirstChild("Humanoid") --Find the human that touched the button

        if check ~= nil then --If a human is found, then
            local user = game.Players:GetPlayerFromCharacter(hit.Parent) --Find human among the players

            if (user:FindFirstChild("rig") ~= nil) then 
                local user = game.Players:GetPlayerFromCharacter(hit.Parent) --Find human among the players

                local message = Instance.new("Message") --make a message
                message.Text = "You already own a Tycoon." --Put text into the message
                message.Parent = user --Display message to new owner only
                wait(3) --Wait to let the message display for a while
                message:remove() --Remove the message from the new owner
            else
                local user = game.Players:GetPlayerFromCharacter(hit.Parent) --Find human among the players
                owner.Value = hit.Parent.Name --save new owners name for later.
                
                local own = Instance.new("IntValue")
                own.Name = "rig"
                own.Parent = user

                local message = Instance.new("Message") --make a message
                message.Text = "You now own this Tycoon!" --Put text into the message
                message.Parent = user --Display message to new owner only
                wait(3) --Wait to let the message display for a while
                message:remove() --Remove the message from the new owner

                script.Parent.Parent:remove()
            end
        end

        ting = 0 --remove debounce
	end
end

script.Parent.Touched:connect(onTouched) --Start listening for button-touchers.
