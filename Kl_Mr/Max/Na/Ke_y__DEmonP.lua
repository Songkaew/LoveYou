_G.Key = ""

local UserPy = game.Players.LocalPlayer.Name
local ClientId = game:GetService("RbxAnalyticsService"):GetClientId()
local whitelist = string.split((ClientId), '-')
local Hxven = whitelist[5]

local whitelist = {
	["Admin"] = "Admin", --Dis : kkkk -- Game : kkkkkk --THB10
	["Admin Max"] = "Admin Max" --Dis :  -- Game :  --THB 
}

if _G.Key == Hxven then
	if whitelist[_G.Key] == game:GetService("RbxAnalyticsService"):GetClientId() then
		print("whitelist![1] Set")
		if game.PlaceId == 4520749081 then

		else
			game:GetService("Players").LocalPlayer:Kick("Not Support")
		end
		print("whitelist![2] OK")
    else
        setclipboard("https://discord.gg/6e8vnRFrFH")
        wait(0.5)
        game.Players.LocalPlayer:kick("Error 49H\nติดต่อแอดมิน\nสำหรับคนที่ซื้อแล้วขึ้นหน้านี้")
    end
else
    game.Players.LocalPlayer:kick("Error 59H\nติดต่อแอดมิน\nสำหรับคนที่ซื้อแล้วขึ้นหน้านี้")
end






