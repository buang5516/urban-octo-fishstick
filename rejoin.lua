task.spawn(function()

    local s, e = pcall(function()
        game:GetService('GuiService').ErrorMessageChanged:Connect(function()
            task.wait(0.1) 
            game.Players.LocalPlayer:Kick("[BUANG ON TOP] Rejoining...")
            task.wait()
            game:GetService("TeleportService"):Teleport(game.PlaceId)
        end)

        game.CoreGui.RobloxPromptGui.promptOverlay.DescendantAdded:Connect(function(child)
            if child == 'ErrorPrompt' or game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild('ErrorPrompt') then
                game.Players.LocalPlayer:Kick("[BUANG ON TOP] Rejoining ...");
                task.wait()
                game:GetService('TeleportService'):Teleport(game.PlaceId)
            end
        end)

        for i = 1, 10 do
            warn('AUTO REJOIN AFTER DISCONNECT LOADED.')
        end
    end)

    if not s then
        warn(e)
    end
end)
