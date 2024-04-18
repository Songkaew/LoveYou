
local UserPy = game.Players.LocalPlayer.Name
local ClientId = game:GetService("RbxAnalyticsService"):GetClientId()
local whitelist = string.split((ClientId), '-')
local Hxven = whitelist[5]

if register_key == Hxven then
    if whitelist[register_key] == game:GetService("RbxAnalyticsService"):GetClientId() then
        print("whitelist![1]")
    else
        print("whitelist![2]")
    end
else
    print("รอแอดมินแอด whitelist")
    setclipboard("_G.register_key = "..(Hxven).."\n whitelist : "..(ClientId))
    local url = "https://discord.com/api/webhooks/1229444009513189467/nF8WlkInYbuUZmmCWftFwTj3N3h4T8fbsCcLlZEL0Rtw6_FHn5QhlpFtRwgajNXEuPto" -- ur webhook url
    local data = { 
        ["username"] = 'Key | MrMaxNaJa', -- Webhook name here
        ["avatar_url"] = "https://cdn.discordapp.com/attachments/948603231192363058/1088077196997955704/Untitled-1_copy.png", -- ur discord logo url
        ["embeds"] = {
            {
                ["description"] = "ผู้เล่น : "..UserPy.." ใช้งานแล้ว",
                ["color"] = tonumber(0x00ff00), -- color id		
                ["type"] = "rich",
                ["fields"] =  {
                    {
                        ["name"] = "[📁] Key เอาไป Add ใส่ในสคริป",
                        ["value"] = "_G.register_key = "..(Hxven).."\n `whitelist : "..(ClientId).."`\n `register_key = "..(Hxven).."`",
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
