--_G.register_key = "8ca7d84a2cc8"
--_G.register_key = "c80c1c29ca03"
getgenv().TextLabelNameWelocome = "MrMaxNaJa Hub"
if game.PlaceId == 4520749081 then--kl1
    getgenv().NameMap = "Map| King Legacy"
elseif game.PlaceId == 6381829480 then--kl2
    getgenv().NameMap = "Map| King Legacy"
elseif game.PlaceId == 15759515082 then--kl3
    getgenv().NameMap = "Map| King Legacy"
elseif game.PlaceId == 9790558424 then--mp
    getgenv().NameMap = "Map| Master Pirate"
elseif game.PlaceId == 2753915549 then--BF
    getgenv().NameMap = "Map| Blox fruits"
elseif game.PlaceId == 4442272183 then -- BF
    getgenv().NameMap = "Map| Blox fruits"
elseif game.PlaceId == 7449423635 then -- BF
    getgenv().NameMap = "Map| Blox fruits"
elseif game.PlaceId == 3351674303 then -- DE
    getgenv().NameMap = "Map| Driving Empire"
else
    getgenv().NameMap = "Not Support"
end

getgenv().CopyLinkKey = "https://link-center.net/1160501/mrmaxnaja-naja-sysemkey"
getgenv().SetCopyToClipboard = "https://discord.gg/6HaEYWNpzu"
getgenv().passwordSet = "MrMaxNaJa-Key"

local UserPy = game.Players.LocalPlayer.Name
local ClientId = game:GetService("RbxAnalyticsService"):GetClientId()
local whitelist = string.split((ClientId), '-')
local Hxven = whitelist[5]

local whitelist = {
--- เริ่มใหม่
    ["bec4a1db00c2"] = "2f35cd08-0f42-4733-b026-bec4a1db00c2", ---Dis fhdjnvvb | 30 THB เกมอัพเดท
    ["bd8e3a1204c5"] = "4f889720-9ea4-4036-9514-bd8e3a1204c5", --Dis trgracemega | 30 THB เกมอัพเดท
    ["dbc815ece718"] = "f1fa962e-3b53-404a-96b9-dbc815ece718", --Dis itssense | 30 THB เกมอัพเดท
    ["Admin"] = "Admin" --Dis :  -- Game :  --THB 


}



--[[
_G.register_key = "dbc815ece718"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xOne2/Test/main/README.md"))() 

--]]
local ScreenGuiKeybyMrMaxNaJa = Instance.new("ScreenGui")
local ImageLabelMain = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local TextLabel = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local TextButton_4 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:
ScreenGuiKeybyMrMaxNaJa.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

ImageLabelMain.Parent = ScreenGuiKeybyMrMaxNaJa
ImageLabelMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabelMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabelMain.BorderSizePixel = 0
ImageLabelMain.Position = UDim2.new(0.176552534, 0, 0.2912139, 0)
ImageLabelMain.Size = UDim2.new(0, 430, 0, 156)
ImageLabelMain.Image = "rbxassetid://17069156179"

UICorner.Parent = ImageLabelMain

local TweenService = game:GetService("TweenService")

local function MakeDraggable(object)
    local mouseDown = false
    local dragStart = nil
    local startPos = nil

    object.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            mouseDown = true
            dragStart = input.Position
            startPos = object.Position
        end
    end)

    object.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            mouseDown = false
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            if mouseDown then
                local delta = input.Position - dragStart
                local newPos = UDim2.new(
                    startPos.X.Scale,
                    startPos.X.Offset + delta.X,
                    startPos.Y.Scale,
                    startPos.Y.Offset + delta.Y
                )
                local tweenInfo = TweenInfo.new(0.1)
                local tween = TweenService:Create(object, tweenInfo, {Position = newPos})
                tween:Play()
            end
        end
    end)
end

MakeDraggable(ImageLabelMain)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(73, 182, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(76, 171, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(34, 207, 255))}
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.69), NumberSequenceKeypoint.new(1.00, 0.77)}
UIGradient.Parent = ImageLabelMain

TextLabel.Parent = ImageLabelMain
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.033272393, 0, 0.0862937346, 0)
TextLabel.Size = UDim2.new(0, 289, 0, 52)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = getgenv().TextLabelNameWelocome
TextLabel.TextColor3 = Color3.fromRGB(15, 123, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 1.000
TextLabel.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(73, 182, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(76, 171, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(34, 207, 255))}
UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.40), NumberSequenceKeypoint.new(0.35, 0.41), NumberSequenceKeypoint.new(0.82, 0.39), NumberSequenceKeypoint.new(1.00, 0.47)}
UIGradient_2.Parent = TextLabel

TextBox.Parent = ImageLabelMain
TextBox.BackgroundColor3 = Color3.fromRGB(26, 186, 255)
TextBox.BackgroundTransparency = 0.700
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.033272393, 0, 0.65467006, 0)
TextBox.Size = UDim2.new(0, 289, 0, 41)
TextBox.Font = Enum.Font.DenkOne
TextBox.Text = "password"
TextBox.TextColor3 = Color3.fromRGB(129, 211, 230)
TextBox.TextSize = 35.000
TextBox.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = TextBox

Frame.Parent = ImageLabelMain
Frame.BackgroundColor3 = Color3.fromRGB(192, 255, 253)
Frame.BackgroundTransparency = 0.600
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.73720932, 0, 0.214498863, 0)
Frame.Size = UDim2.new(0, 104, 0, 110)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 98, 189)
TextButton.BackgroundTransparency = 0.750
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0384615399, 0, 0.682051241, 0)
TextButton.Size = UDim2.new(0, 95, 0, 28)
TextButton.Font = Enum.Font.PatrickHand
TextButton.Text = "Login"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Click:Connect(function()
    wait(0.05)
    if _G.register_key then
        TextBox.Text = _G.register_key
    end
    if _G.register_key == Hxven then
        if whitelist[_G.register_key] == game:GetService("RbxAnalyticsService"):GetClientId() then
            print("whitelist![1] ")
            ImageLabelMain.Visible = false
            _G.MrMaxNaJaBuy = true
            if game.PlaceId == 4520749081 then--kl
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Kl_Mr/Max/Na/Ja/Hee.lua"))()
            elseif game.PlaceId == 6381829480 then--kl
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Kl_Mr/Max/Na/Ja/Hee.lua"))()
            elseif game.PlaceId == 15759515082 then--kl
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Kl_Mr/Max/Na/Ja/Hee.lua"))()
            elseif game.PlaceId == 9790558424 then--mp
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xOne2/mp/main/README.md"))()
            elseif game.PlaceId == 2753915549 then--BF
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Narongrit_Songkaew.lua"))()
            elseif game.PlaceId == 4442272183 then -- BF
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Narongrit_Songkaew.lua"))()
            elseif game.PlaceId == 7449423635 then -- BF
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Narongrit_Songkaew.lua"))()
            elseif game.PlaceId == 3351674303 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Wxzzz1/1Z/main/README.md"))()
            else
                game:GetService("Players").LocalPlayer:Kick("Not Support")
            end
            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:Destroy()
            print("whitelist![1] OK")
        else
            print("whitelist![2] ติดต่อแอดมิน")
        end
    end
    if TextBox.Text == getgenv().passwordSet then
        wait(.1)
        TextBox.Text = "OK"
        _G.MrMaxNaJaBuy = false
        if game.PlaceId == 4520749081 then--kl
            ImageLabelMain.Visible = false
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Kl_Mr/Max/Na/Ja/Hee.lua"))()
            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:Destroy()
        elseif game.PlaceId == 6381829480 then--kl
            ImageLabelMain.Visible = false
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Kl_Mr/Max/Na/Ja/Hee.lua"))()
            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:Destroy()
        elseif game.PlaceId == 15759515082 then--kl
            ImageLabelMain.Visible = false
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Kl_Mr/Max/Na/Ja/Hee.lua"))()
            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:Destroy()
        elseif game.PlaceId == 2753915549 then--BF
            getgenv().NameMap = "คุณต้องชื้อ Key ในราคา 40"
        elseif game.PlaceId == 4442272183 then -- BF
            getgenv().NameMap = "คุณต้องชื้อ Key ในราคา 40"
        elseif game.PlaceId == 7449423635 then -- BF
            getgenv().NameMap = "คุณต้องชื้อ Key ในราคา 40"
        elseif game.PlaceId == 9790558424 then--mp
            getgenv().NameMap = "คุณต้องชื้อ Key ในราคา 40"
        elseif game.PlaceId == 3351674303 then --DE
            getgenv().NameMap = "คุณต้องชื้อ Key ในราคา 40"
        else
            game:GetService("Players").LocalPlayer:Kick("Not Support")
        end
    else
        TextBox.Text = "Password Error"
    end
end)

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = TextButton

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 98, 189)
TextButton_2.BackgroundTransparency = 0.750
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.0384615399, 0, 0.370163113, 0)
TextButton_2.Size = UDim2.new(0, 95, 0, 28)
TextButton_2.Font = Enum.Font.PatrickHand
TextButton_2.Text = "Get Key"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
TextButton_2.MouseButton1Click:Connect(function()
    setclipboard(getgenv().CopyLinkKey)
end)

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = TextButton_2

UICorner_5.CornerRadius = UDim.new(0, 6)
UICorner_5.Parent = Frame

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(8, 4, 132)
TextButton_3.BackgroundTransparency = 0.750
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.0384615399, 0, 0.0351980031, 0)
TextButton_3.Size = UDim2.new(0, 95, 0, 28)
TextButton_3.Font = Enum.Font.PatrickHand
TextButton_3.Text = "Discord"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true
TextButton_3.MouseButton1Click:Connect(function()
    setclipboard(getgenv().SetCopyToClipboard)
end)

UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = TextButton_3

TextButton_4.Parent = ImageLabelMain
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_4.BackgroundTransparency = 0.500
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.746511638, 0, 0.0384615399, 0)
TextButton_4.Size = UDim2.new(0, 95, 0, 21)
TextButton_4.Font = Enum.Font.PatrickHand
TextButton_4.Text = "Del Ui"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true
TextButton_4.MouseButton1Click:Connect(function()
    ImageLabelMain.Visible = false
    game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:Destroy()
    local player = game:GetService("Players").LocalPlayer
    if PlayerGui.ScreenGui then
        PlayerGui.ScreenGui:Destroy()
    end
end)

UICorner_7.CornerRadius = UDim.new(0, 5)
UICorner_7.Parent = TextButton_4

TextLabel_2.Parent = ImageLabelMain
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0681561157, 0, 0.349114239, 0)
TextLabel_2.Size = UDim2.new(0, 259, 0, 34)
TextLabel_2.Font = Enum.Font.Unknown
TextLabel_2.Text = getgenv().NameMap
TextLabel_2.TextColor3 = Color3.fromRGB(38, 179, 255)
TextLabel_2.TextSize = 22.000
TextLabel_2.TextWrapped = true
