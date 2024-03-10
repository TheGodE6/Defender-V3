-- Credits to asechka19872 (simplekah, simplekah v2 owner) and ts2021 (kohlslite owner) --

-- VARIABLES --
local antikill = true
local localPlayer = game.Players.LocalPlayer
local prefix = “>”
local Scrowner = "dawninja21"

-- MAIN FUNCTIONS --
local function notify(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "DEFENDER V3",
		Text = msg,
		Duration = 1
	})
end;

local function ct(msg)
	game.Players:Chat(msg)
end

-------------CUSTOM CMDS----------------
game.Players.LocalPlayer.Chatted:Connect(function(msg)
	task.wait(0)
		
    	if string.sub(msg:lower(), 1, #prefix + 8) == prefix.."antikill" then
           antikill = true
        end
		
        if string.sub(msg:lower(), 1, #prefix + 10) == prefix.."unantikill" then
           antikill = false
        end
end)

-- MODULES --
local function onPlayerAdded(player)
    ct("h \n\n\n " .. player.Name .. " \n\n\n Age:"..player.AccountAge.." \n\n\n has joined the game. 🛡️DEFENDER V3🛡️ \n\n\n")
end

local function onPlayerLeaving(player)
    ct("h \n\n\n " .. player.Name .. " \n\nhas left the game. 🛡️DEFENDER V3🛡️ \n\n\n")
end

game.Players.PlayerAdded:Connect(onPlayerAdded)
game.Players.PlayerRemoving:Connect(onPlayerLeaving)

--------------AUTO CMDS----------------

task.spawn(function()
    while true do
        task.wait()
                if localPlayer.Character.Humanoid.Health == 0 and antikill == true then
                            ct("reset me")
                end
    end
end)

--------------BOOT MESSAGES----------------
notify("🛡️Defender V3🛡️ Loaded.")
ct("h \n\n\n 🛡️DEFENDER🛡️V3 LOADED \n\n\n")
