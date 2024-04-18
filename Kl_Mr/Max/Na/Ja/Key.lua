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
else
    getgenv().NameMap = "Not Support"
end

getgenv().CopyLinkKey = "https://link-target.net/1160501/point2"
getgenv().SetCopyToClipboard = "https://discord.gg/6HaEYWNpzu"
getgenv().passwordSet = "fdaba1e9-c20d"

local UserPy = game.Players.LocalPlayer.Name
local ClientId = game:GetService("RbxAnalyticsService"):GetClientId()
local whitelist = string.split((ClientId), '-')
local Hxven = whitelist[5]

local whitelist = {
    --["Admin"] = "Admin", --Dis : kkkk -- Game : kkkkkk --THB10
    ["ba2c2048b81d"] = "3c04d383-7de3-4c10-aec7-ba2c2048b81d", --MrMaxNaJa
    ["741797658105"] = "8b630005-2003-41f5-84ce-741797658105", --MrMaxNaJa
    ["8ca7d84a2cc8"] = "fdaba1e9-c20d-4d10-946e-8ca7d84a2cc8", -- Wx
    ["c80c1c29ca03"] = "c02a7e07-eb73-4f09-8739-c80c1c29ca03", -- Wx --จำลอง

    ["b7047c99ef36"] = "8758137a-e608-4ab6-b8de-b7047c99ef36", --Dis : park1526 --Game : DorothiezU8748 --THB 10
    ["2440cdd729c5"] = "6ed89a3c-37a6-469c-a869-2440cdd729c5", --Dis : lilfaxe --Game : FAXEHOPE --THB 10
    ["903dee7dc1d6"] = "d2d34fbf-768c-431e-9fb4-903dee7dc1d6", --Dis : ddx445 -- Game : 11lfutpbhurv11_23 --THB10
    ["cdf07ebf23b0"] = "7f9f2621-299c-4acf-98b5-cdf07ebf23b0", --Dis : ameenthailand -- Game : JJShopJQlb --THB10
    ["9da146e62ef9"] = "a38e323b-f6c0-4a4e-a693-9da146e62ef9", --Dis : ameenthailand.   Game : JJShopJQlb --THB 10 ชื้อ 2
    --["41ae65f24275"] = "0f70bd65-ea8b-4bf2-80c2-41ae65f24275", --Dis : smokey0792 -- Game : ooloo0_0 --THB10 -- ย้าย 1
    --["8ad25655c214"] = "1fdd74e5-16e4-4590-9f5a-8ad25655c214", --Dis : smokey0792 -- Game : ooloo0_0 --THB10 คนนี้ลบโหลดตัวรันใหม่เลยสร้างkeyใหม่่
    --["581575ce67cb"] = "e0a24a6b-dc0d-411b-a79f-581575ce67cb", --Dis ti_it | Game : kritmaidaihackna THB10
    ["a670ccec9050"] = "35942f62-1d1a-4d77-af4d-a670ccec9050", --Dis ti_it
    ["69984051992F"] = "1832A2A7-519D-4986-B367-69984051992F", --Dis exousss | Game : demarbec
    ["a6a8b9cefedc"] = "753a72fa-8dfb-461f-968f-a6a8b9cefedc", --Dis somrak_fbi.   Game | : Pro_Somrak THB 10
    ["24c3da743496"] = "51553654-5dc5-4775-8d1c-24c3da743496", --Dis fun2096  THB10
    ["b4f081247e3b"] = "dddd761d-0847-4b5e-b445-b4f081247e3b", --Dis : immaculate_eagle_76055 -- Game :  --THB10
   -- ["f5a54dac5f20"] = "12b1d9cf-7705-4a67-ba5f-f5a54dac5f20", --Dis : w8z6hc -- Game :  --THB20 มันโหลดตัวรันใหม่
    ["2c24a414fe3f"] = "344ae7e8-68f9-4589-ae00-2c24a414fe3f", --Dis : pobo_2077 -- Game :  --THB20
    ["df2e5a931a9f"] = "b8487a66-4063-4e1a-af3c-df2e5a931a9f", --Dis : palm123112 -- Game :  --THB20
    ["b8ee5ed97021"] = "21f4f41a-a763-4da8-a166-b8ee5ed97021", -----Dis : smokey0792 -- Game : ooloo0_0 --THB10 keyใหม่อยู่นี้

    --// วันที่ 18 เดือน 4 ปี 2567 //--
    ["69bbe39e5ffd"] = "23a6010f-877a-47af-bd98-69bbe39e5ffd", ---Dis py661 THB 20 
    ["10c5701c5bd4"] = "0fda1e4c-dd41-4a1a-837e-10c5701c5bd4", --Dis w8z6hc อันล่าสุด
    ["13071b00148a"] = "9bb259ce-6822-4eb0-873f-13071b00148a", --Dis plub3757 THB 20 

    ["Admin"] = "Admin" --Dis :  -- Game :  --THB 

}

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
    --TextBox.Text = _G.register_key
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
            else
                game:GetService("Players").LocalPlayer:Kick("Not Support")
            end
            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:Destroy()
            print("whitelist![1] OK")
        else
            print("whitelist![2] ติดต่อแอดมิน")
        end
    else
        if TextBox.Text == getgenv().passwordSet then
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
                getgenv().NameMap = "คุณต้องชื้อ Key ในราคา 20"
            elseif game.PlaceId == 4442272183 then -- BF
                getgenv().NameMap = "คุณต้องชื้อ Key ในราคา 20"
            elseif game.PlaceId == 7449423635 then -- BF
                getgenv().NameMap = "คุณต้องชื้อ Key ในราคา 20"
            elseif game.PlaceId == 9790558424 then--mp
                getgenv().NameMap = "คุณต้องชื้อ Key ในราคา 20"
            else
                game:GetService("Players").LocalPlayer:Kick("Not Support")
            end
        else
            TextBox.Text = "Password Error"
        end
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
