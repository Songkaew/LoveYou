if _G.RunScriptRequestBotKeyHwidRoblox then

else
    local UserPy = game.Players.LocalPlayer.Name
    local ClientId = game:GetService("RbxAnalyticsService"):GetClientId()
    local whitelist = string.split((ClientId), '-')
    local Hxven = whitelist[5]
    RandomColorDis = math.random(1, 3)
    if RandomColorDis == 1 then
        ColorDis = tonumber(0x000ff0) -- สีน้ำเงิน
    elseif RandomColorDis == 2 then
        ColorDis = tonumber(0x00ff00)
    elseif RandomColorDis == 3 then
        ColorDis = tonumber(0x0ff000)
    else
        ColorDis = tonumber(0xff0000)
    end
    if register_key == Hxven then
        if whitelist[register_key] == game:GetService("RbxAnalyticsService"):GetClientId() then
            print("whitelist![1]")
        else
            print("whitelist![2]")
        end
    else
        print("รอแอดมินแอด whitelist")
        setclipboard('_G.register_key = "'..(Hxven)..'"\n loadstring(game:HttpGet("https://raw.githubusercontent.com/xOne2/Test/main/README.md"))() \n whitelist : '..(ClientId))

        local url = "https://discord.com/api/webhooks/1097750498368561214/rBW7WhpCGXrgWCKa0qLb_Qxn4B2cB8jKZwxYC1wt_GRQW136j2L16wkK4t51XDhv8Kkh" -- ur webhook url
        local data = { 
            ["username"] = 'Bot Key Hwid Roblox | Buy for Key', -- Webhook name here
            ["avatar_url"] = "https://cdn.discordapp.com/attachments/948603231192363058/1088077196997955704/Untitled-1_copy.png", -- ur discord logo url
            ["embeds"] = {
                {
                    ["description"] = "**Hwid Player Key By MrMaxNaJa [FB:Narongrit Songkaew]**",
                    ["color"] = ColorDis,--tonumber(ColorDis)--(0x000ff0), -- color id		
                    ["type"] = "rich",
                    ["fields"] =  {
                        {
                            ["name"] = ">> [ 📁 ] Key เอาไป Add ใส่ในสคริป",
                            ["value"] = '**[ 👥 ] Player Name | ชื่อผู้เล่นในเกม**```'..UserPy..'```\n** [ 📃 ] ส่งให้ลูกค้าที่ซื้อสคริป**||```_G.register_key = "'..(Hxven)..'"\nloadstring(game:HttpGet("https://raw.githubusercontent.com/xOne2/Test/main/README.md"))() ```||\n** [ 📃 ] whitelist**```'..(ClientId)..'```\n**[ 📃 ] Up For Github**\n```["'..(Hxven)..'"]" = "'..(ClientId)..'"```',
                        }
                    },
                    ["footer"] = {
                        ["text"] = "YouTube:MrMaxNaJa"
                    },
                    ["timestamp"] = DateTime.now():ToIsoDate(),
                }
            },
        } 
        local newdata = game:GetService("HttpService"):JSONEncode(data)
        local headers = {["content-type"] = "application/json"}
        request = http_request or request or HttpPost or syn.request
        local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
        request(abcdef)
    end
    _G.RunScriptRequestBotKeyHwidRoblox = true
end
