
spawn(function()
    while wait() do wait()
        if _G.AutoFarm then
            pcall(function()
                if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                    Noclip.Velocity = Vector3.new(0, 0, 0)
                end
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end)
        else
            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end
    end
end)
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.AutoFarm then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoFarm then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)

function Tween(Pos)--game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    pcall(function()
        local tween = game:GetService("TweenService"):Create(
            game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/99999999999999999999999999, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        )
        tween:Play()
    end)
end


local KituKubakNa = game.Players.LocalPlayer
local UserIdNaJa = KituKubakNa.UserId
function CheckLevel()
    local Lv = game:GetService("ReplicatedStorage").PlayerData[UserIdNaJa].Level.Value
    if Lv == 1 or Lv <= 9 then
        FMon = "Bandits" --ชื่อไฟล์ที่มอนอยู่
        Mon = "Bandit" --ชื่อมอน
        NameQ = "Woppa" -- ชื่อเควส
        CFrameMon = CFrame.new(239.734131, 71.6881638, -1102.80359, -0.99987942, 1.26122432e-10, 0.0155273071, 1.6860926e-09, 1, 1.00453157e-07, -0.0155273071, 1.00467226e-07, -0.99987942)
    elseif Lv == 10 or Lv <= 14 then 
        FMon = "Bandits"
        Mon = "Bandit Leader"
        NameQ = "Abu"
        CFrameMon = CFrame.new(243.483948, 57.7532043, -987.4245, -0.999605358, 7.18346271e-08, 0.0280921534, 7.28695611e-08, 1, 3.5817127e-08, -0.0280921534, 3.78500538e-08, -0.999605358)
    elseif Lv == 15 or Lv <= 24 then
        FMon = "Reiner"
        Mon = "Reiner's Subordinate"
        NameQ = "Boss"
        CFrameMon = CFrame.new(35.2250099, 159.810059, -790.359741, -0.999275148, -4.96051289e-09, 0.0380673148, -4.89764629e-09, 1, 1.74471348e-09, -0.0380673148, 1.55700863e-09, -0.999275148)
    elseif Lv == 25 or Lv <= 34 then
        FMon = "Reiner"
        Mon = "Reiner"
        NameQ = "Zak"
        CFrameMon = CFrame.new(124.02047, 238.26651, -548.702881, -0.106317148, -1.94989713e-09, 0.994332254, -4.41589876e-09, 1, 1.48884982e-09, -0.994332254, -4.23258051e-09, -0.106317148)
    elseif Lv == 35 or Lv <= 44 then 
        FMon = "Buggy"
        Mon = "Orange Pirate"
        NameQ = "Unrio"
        CFrameMon = CFrame.new(-2190.25903, 64.81353, -2421.58252, 0.400648534, 1.00018099e-07, -0.916231811, -6.31334629e-08, 1, 8.15555268e-08, 0.916231811, 2.51697845e-08, 0.400648534)
    elseif Lv == 45 or Lv <= 59 then --59
        FMon = "Buggy"
        Mon = "Buggy"
        NameQ = "King"
        CFrameMon = CFrame.new(-2190.25903, 64.81353, -2421.58252, 0.400648534, 1.00018099e-07, -0.916231811, -6.31334629e-08, 1, 8.15555268e-08, 0.916231811, 2.51697845e-08, 0.400648534)
    elseif Lv == 60 or Lv <= 69 then
        FMon = "Gorillas"
        Mon = "Monkey"
        NameQ = "Zet"
        CFrameMon = CFrame.new(-1119.89075, 58.7131538, 2372.09375, 0.679027259, -7.14578192e-08, 0.734113038, 3.36573116e-08, 1, 6.62072281e-08, -0.734113038, -2.02482386e-08, 0.679027259)
    elseif Lv == 70 or Lv <= 99 then
        FMon = "Gorillas"
        Mon = "King Abu"
        NameQ = "Monkey Hunter" 
        CFrameMon = CFrame.new(-1818.16357, 53.0229187, 2338.39771, -0.808053792, -5.63250868e-09, 0.589108706, -1.49003592e-08, 1, -1.08770815e-08, -0.589108706, -1.75671975e-08, -0.808053792)
    elseif Lv == 100 or Lv <= 124 then
        FMon = "Baratie"
        Mon = "Angry Chef"
        NameQ  = "Dyna"
        CFrameMon = CFrame.new(2014.94531, 28.3461075, 1619.05261, -0.00359160826, -4.38502852e-08, -0.999993563, 3.69272009e-08, 1, -4.39831958e-08, 0.999993563, -3.70849342e-08, -0.00359160826)
    elseif Lv == 125 or Lv <= 149 then --149
        FMon = "Baratie"
        Mon = "Krieg Pirate"
        NameQ = "Viz"
        CFrameMon = CFrame.new(2039.75085, 64.2279434, 1640.83386, 0.984129846, -8.90289726e-08, -0.177449703, 8.20588753e-08, 1, -4.66181866e-08, 0.177449703, 3.13170254e-08, 0.984129846)
    elseif Lv == 150 or Lv <= 174 then
        FMon = "Sandora"
        Mon = "Sand Pirate"
        NameQ = "Cellierin"
        CFrameMon = CFrame.new(-6415.04932, 41.2002563, -4820.07715, 0.0491887145, -1.01817506e-08, 0.998789489, 6.64856969e-08, 1, 6.91978075e-09, -0.998789489, 6.60648354e-08, 0.0491887145) 
    elseif Lv == 175 or Lv <= 199 then --199
        FMon = "Sandora"
        Mon = "Desert Brigand"
        NameQ = "Wise"
        CFrameMon = CFrame.new(-6415.04932, 41.2002563, -4820.07715, 0.0491887145, -1.01817506e-08, 0.998789489, 6.64856969e-08, 1, 6.91978075e-09, -0.998789489, 6.60648354e-08, 0.0491887145) 
    elseif Lv == 200 or Lv <= 219 then
        FMon = "Dragon"
        Mon = "Sand Dragon"
        NamaeQ = "Shady Man"
        CFrameMon = CFrame.new(-7192.96143, 239.409943, -4689.78906, 0.908635795, -6.42360387e-09, -0.417589515, 1.37992523e-13, 1, -1.53822786e-08, 0.417589515, 1.39768321e-08, 0.908635795)
    elseif Lv == 220 or Lv <= 239 then
        FMon = "Croc"
        Mon = "Desert King"
        NameQ = "Vivi"
        CFrameMon = CFrame.new(-7555.37646, 239.409943, -4295.30322, -0.899061322, -4.39733761e-08, 0.437822729, 1.76520718e-13, 1, 1.0043685e-07, -0.437822729, 9.02989612e-08, -0.899061322)
    elseif Lv == 240 or Lv <= 274 then
        FMon = "Fishmen"
        Mon = "Fishman"
        NameQ = "Bope"
        CFrameMon = CFrame.new(-1735.16553, 28.5750179, -6203.30029, 0.981737733, -3.89488353e-09, 0.19023928, 2.56649679e-09, 1, 7.22908844e-09, -0.19023928, -6.60882016e-09, 0.981737733)
    elseif Lv == 275 or Lv <= 289 then --289
        FMon = "Fishmen"
        Mon = "Graverobber"
        NameQ = "Zeno"
        CFrameMon = CFrame.new(-1735.16553, 28.5750179, -6203.30029, 0.981737733, -3.89488353e-09, 0.19023928, 2.56649679e-09, 1, 7.22908844e-09, -0.19023928, -6.60882016e-09, 0.981737733)
    elseif Lv == 290 or Lv <= 314 then
        FMon = "Fishmen"
        Mon = "Arlong"
        NameQ = "Little Boy"
        CFrameMon = CFrame.new(-1735.16553, 28.5750179, -6203.30029, 0.981737733, -3.89488353e-09, 0.19023928, 2.56649679e-09, 1, 7.22908844e-09, -0.19023928, -6.60882016e-09, 0.981737733)
    elseif Lv == 315 or Lv <= 344 then
        FMon = "SkyNpcs"
        Mon = "Sky Soldier"
        NameQ = "Ima"
        CFrameMon = CFrame.new(5022.44531, 1166.4823, -7805.09912, -0.620260835, 2.68945666e-08, -0.784395635, -1.04465225e-09, 1, 3.51130502e-08, 0.784395635, 2.25986714e-08, -0.620260835)
    elseif Lv == 345 or Lv <= 364 then
        FMon = "SkyNpcs"
        Mon = "Guard Captain"
        NameQ = "Damu"
        CFrameMon = CFrame.new(5221.3418, 1234.41785, -9204.98926, 0.541139901, -1.50415804e-08, -0.840932548, 4.64072087e-08, 1, 1.19762431e-08, 0.840932548, -4.55061588e-08, 0.541139901)
    elseif Lv == 365 or Lv <= 389 then
        FMon = "SkyNpcs"
        Mon = "Divine Guardian"
        NameQ = "Sofen"
        CFrameMon = CFrame.new(5221.3418, 1234.41785, -9204.98926, 0.541139901, -1.50415804e-08, -0.840932548, 4.64072087e-08, 1, 1.19762431e-08, 0.840932548, -4.55061588e-08, 0.541139901)
    elseif Lv == 390 or Lv <= 600 then
        FMon = "Enel"
        Mon = "Thunder God"
        NameQ = "Jovahn"
        CFrameMon = CFrame.new(4027.66016, 2240.14087, -10663.5342, 0.742322028, -4.32407461e-08, 0.67004329, 5.64563436e-08, 1, 1.98786831e-09, -0.67004329, 3.63525565e-08, 0.742322028)
        CFrameMonMrMax = CFrame.new(4074.45044, 2258.55029, -10865.2012, -0.830713272, 2.56041388e-09, 0.556700468, -6.55610899e-09, 1, -1.43823495e-08, -0.556700468, -1.55973972e-08, -0.830713272)
        MrMaxMon =  "Divine Guardian"
        MrMaxMonF = "SkyNpcs"
        MrMaxNameQ = "Sofen"
    end
end
--[[
--เก็บผล
local args = {
[1] = game:GetService("Players").LocalPlayer.Character.Spin,
[2] = true
}

game:GetService("ReplicatedStorage").Remotes.ToServer.StoreR:InvokeServer(unpack(args))


--]]




















        --randomNumberUI = math.random(1,4)
        _G.UIB = "17075379093"
        
        if randomNumberUI == 1 then
            _G.TeamBlack =  true
        elseif randomNumberUI == 2 then
            _G.TeamWhite = true
        elseif randomNumberUI == 3 then
            _G.TeamGreen = true
        elseif randomNumberUI == 4 then
            _G.TeamRed = true
        else
            _G.Color = Color3.fromRGB(0,120,120)--Color3.fromRGB(120,35,100)
            _G.FrameTop = Color3.fromRGB(0,100,100)--Color3.fromRGB(100, 35, 35)
            _G.FrameTab =  Color3.fromRGB(0,75,75)--Color3.fromRGB(75, 35, 35)
            _G.PageFrame = Color3.fromRGB(0,85,85)--Color3.fromRGB(85, 35, 35)
            _G.ColorI = Color3.fromRGB(0,100,100)--Color3.fromRGB(100, 45, 45)
        end
        local Update = loadstring(game:HttpGet("https://pastebin.com/raw/LZBa7hU1"))() --https://raw.githubusercontent.com/NaJaxHub/ser/main/UIfreeNaJabat"))()
        --_G.Color = Color3.fromRGB(0,120,120)--Color3.fromRGB(120,35,100)
        --_G.FrameTop = Color3.fromRGB(0,100,100)--Color3.fromRGB(100, 35, 35)
        --_G.FrameTab =  Color3.fromRGB(0,75,75)--Color3.fromRGB(75, 35, 35)
        --_G.PageFrame = Color3.fromRGB(0,85,85)--Color3.fromRGB(85, 35, 35)
        --_G.ColorI = Color3.fromRGB(0,100,100)--Color3.fromRGB(100, 45, 45)
        
        local Library = Update:Window("MrMaxNaJa Community | Map King Legacy","",Enum.KeyCode.RightControl);--"MrMaxNaJa Hub | Map King Legacy - Free Script Version 0.1.15.1 By MrMaxNaJa"
        Main = Library:Tab("Main")
        Stats = Library:Tab("Stats")

Main:Toggle("AutoFarm",_G.AutoFarm,function(value)
    _G.AutoFarm = value
end)
spawn(function()
    while wait() do
        if _G.AutoFarm then
            pcall(function()
                CheckLevel()
                if  game:GetService("Players").LocalPlayer.PlayerGui.Quests.Enabled == true then
                    for i, v in pairs(game:GetService("Workspace").NPC.Fight[FMon]:GetChildren()) do
                        if v.Name == Mon then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    PosMon = v.HumanoidRootPart.CFrame
                                    Tween(v.HumanoidRootPart.CFrame  * CFrame.new(0,7.1,0) * CFrame.Angles(math.rad(-90),0,0))
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Quests.Enabled == false
                            else
                                for i, v in pairs(game:GetService("Workspace").NPC.Fight[MrMaxMonF]:GetChildren()) do
                                    if v.Name == MrMaxMon then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                PosMon = v.HumanoidRootPart.CFrame
                                                Tween(v.HumanoidRootPart.CFrame  * CFrame.new(0,7.1,0) * CFrame.Angles(math.rad(-90),0,0))
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Quests.Enabled == false
                                        else
                                            Tween(CFrameMonMrMax)
                                        end
                                    else
                                        Tween(CFrameMon)
                                    end
                                end
                                if game:GetService("Players").LocalPlayer.PlayerGui.Quests.Enabled == false then
                                    Tween(game:GetService("Workspace").NPC.Talk[MrMaxNameQ].HumanoidRootPart.CFrame)
                                    local args = {
                                        [1] = workspace.NPC.Talk[MrMaxNameQ].Info
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(unpack(args))
                                end
                            end
                        end
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Quests.Enabled == false then
                        Tween(CFrameMon)
                        Tween(game:GetService("Workspace").NPC.Talk[NameQ].HumanoidRootPart.CFrame)
                        task.wait(0.6)
                        local args = {
                            [1] = workspace.NPC.Talk[NameQ].Info
                        }
                        game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(unpack(args))
                    end
                else
                    Tween(CFrameMon)
                    Tween(game:GetService("Workspace").NPC.Talk[NameQ].HumanoidRootPart.CFrame)
                    task.wait(0.5)
                    local args = {
                        [1] = workspace.NPC.Talk[NameQ].Info
                    }
                    game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(unpack(args))
                end
            end)
        end
    end
end)


WeaponList = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(WeaponList ,v.Name)
    end
end
local SelectWeapona = Main:Dropdown("Select Weapon\nเลือกอาวุธ","",WeaponList,function(value)
    _G.SelectWeapon = value
end)

Main:Button("Refresh Weapon",function()
    SelectWeapona:Clear()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        SelectWeapona:Add(v.Name)
    end
end)

function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
    end
end

task.spawn(function()
    while task.wait() do
        if _G.AutoFarm then
            pcall(function()
                repeat wait()
                local Wx = require(game:GetService("Players").LocalPlayer.Backpack.Combat.Move.CombatTackle)
                    Wx.deletetime = -0.0
                    Wx.Remotes = true
                    Wx.Remotes = 0
                    Wx.deletetime = 0.0
                    Wx.attacktime = 0
                    Wx.timeToNextAttack = 0
                    Wx.activeController.focusStart = 0
                    Wx.activeController.attacktime = 0
                    Wx.Click = 0
                    Wx.Combat = 0
                    Wx.attack = 0
                    Wx.Size = 0
                    Wx.Remotes.Click = 0
                    Wx.Remotes.Replicate = 0
                    Wx.Damage = 99999999
                    Wx.Hitbox = 9999
                    Wx.animFinished = false
                    Wx.Fired = true
                    Wx.cooldown = false
                    Wx.cooldown = true
                    Wx.cooldown = 0.0
                until not _G.AutoFarm
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.AutoFarm then
            pcall(function()
                coroutine.wrap(function()
                    repeat wait()
                        game:GetService("ReplicatedStorage").Remotes.ToClient.Click:FireServer()
                        game:GetService("ReplicatedStorage").Remotes.Kick:FireServer()
                        game:GetService("ReplicatedStorage").Remotes.Replicate:FireServer()
                    until _G.AutoFarm
                end)()
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.AutoFarm then
            pcall(function()
                EquipWeapon(_G.SelectWeapon)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
            end)
        end
    end
end)

    _G.BringMobFarm = true
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BringMobFarm then
                    for i, v in pairs(game.Workspace.NPC.Fight[FMon]:GetChildren()) do
                        if v.Name == Mon and  (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.Humanoid.NameDisplayDistance = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                            v.Humanoid:ChangeState(14)
                        end
                    end
                end
            end)
        end
    end)


    Stats:Toggle("Auto Stats Strength\nออโต้อัพสแตสหมัด",_G.Strength,function(value)
        _G.Strength = value
    end)
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.Strength then
                local args = {
                    [1] = 1,
                    [2] = "Strength"
                }

                game:GetService("ReplicatedStorage").Remotes.ToServer.StatMinus:InvokeServer(unpack(args))
            end
        end)
    end
end)
Stats:Toggle("Auto Stats Defense\nออโต้อัพสแตสเลือด",_G.Defense,function(value)
    _G.Defense = value
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Defense then
            local args = {
                [1] = 1,
                [2] = "Defense"
            }

            game:GetService("ReplicatedStorage").Remotes.ToServer.StatMinus:InvokeServer(unpack(args))

                end
            end)
        end
    end)

    Stats:Toggle("Auto Stats Sword\nออโต้อัพสแตสดาบ",_G.Sword,function(value)
        _G.Sword = value
    end)
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.Sword then
                local args = {
                    [1] = 1,
                    [2] = "Sword"
                }

                game:GetService("ReplicatedStorage").Remotes.ToServer.StatMinus:InvokeServer(unpack(args))
            end
        end)
    end
end)

Stats:Toggle("Auto Stats Gun\nออโต้อัพสแตสปืน",_G.Gun,function(value)
    _G.Gun = value
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Gun then
            local args = {
                [1] = 1,
                [2] = "Gun"                                                                                         
            }

            game:GetService("ReplicatedStorage").Remotes.ToServer.StatMinus:InvokeServer(unpack(args))
            end
        end)
    end
end)

Stats:Toggle("Auto Stats DemonFruit\nออโต้อัพสแตสผล",_G.DemonFruit,function(value)
    _G.DemonFruit = value
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.DemonFruit then
            local args = {
                [1] = 1,
                [2] = "Demon Fruit"
            }

            game:GetService("ReplicatedStorage").Remotes.ToServer.StatMinus:InvokeServer(unpack(args))
            end
        end)
    end
end)
Main:Button2("BoostFps",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MarsQQ/ScriptHubScripts/master/FPS%20Boost"))()
end)
Main:Button2("Buy Haki",function()
Tween(CFrame.new(-1974.46802, 81.0637894, 2796.43237, 0.999794245, -0, -0.0202846304, 0, 1, -0, 0.0202846304, 0, 0.999794245))
end)
Main:Button2("Buy ??",function()
Tween(CFrame.new(-910.83606, 81.3092194, 2489.90845, -0.722996235, 1.80372943e-08, -0.690851986, -4.09315284e-08, 1, 6.89447788e-08, 0.690851986, 7.81244367e-08, -0.722996235))
end)


Main:Toggle2("Pirates",_G.Pirates,function(value)
_G.Pirates = value
end)

spawn(function()
    while wait() do
        if _G.Pirates then
            pcall(function()
                local args = {
                    [1] = game:GetService("Teams").Pirates
                }

                game:GetService("ReplicatedStorage").Remotes.Start:FireServer(unpack(args))
            end)
        end
    end
end)

Main:Toggle2("Marines",_G.Marines,function(value)
    _G.Marines = value
end)
spawn(function()
    while wait() do
        if _G.Marines then
            pcall(function()
                local args = {
                    [1] = game:GetService("Teams").Marines
                }

               game:GetService("ReplicatedStorage").Remotes.Start:FireServer(unpack(args))
            end)
        end
    end
end)

Ply = Library:Tab("Player")

Ply:Toggle("Spectate Player\nดูมุมมองของผู้เล่นอื่นที่เลือกใว้",false,function(value)
    SpectatePlys = value
	SaveSettings()
    local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
    local plr2 = game:GetService("Players"):FindFirstChild(_G.Settings.SelectPly)
    repeat wait(.1)
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.Settings.SelectPly).Character.Humanoid
    until SpectatePlys == false 
    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
end)

Playerslist = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end

local SelectedPly = Ply:Dropdown("Select Players\nเลือกผู้เล่น","",Playerslist,function(value)
    _G.Settings.SelectPly = value
	SaveSettings()
end)

Ply:Button("Refresh Player\nรีเฟสปุ่มเลือกผู้เล่น",function()
    Playerslist = {}
    SelectedPly:Clear()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do  
        SelectedPly:Add(v.Name)
    end
end)

Ply:Button("Teleport to Player\nวาปไปยังผู้เล่นที่เลือกไว้",function() --game:GetService("Workspace").PlayerCharacters.AxileoRBLX.HumanoidRootPart
    Tween(game:GetService("Players")[_G.Settings.SelectPly].Character.HumanoidRootPart.CFrame)
    Tween(game:GetService("Workspace")[_G.Settings.SelectPly].HumanoidRootPart.CFrame)
    Tween(game:GetService("Workspace").PlayerCharacters[_G.Settings.SelectPly].HumanoidRootPart.CFrame)
end)


function isnil(L_426_arg0)
	return (L_426_arg0 == nil)
end
local function L_52_func(L_427_arg0)
	return math.floor(tonumber(L_427_arg0) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateEspPlayer()
	for L_428_forvar0, L_429_forvar1 in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(L_429_forvar1.Character) then
				if ESPPlayer then
					if not isnil(L_429_forvar1.Character.Head) and not L_429_forvar1.Character.Head:FindFirstChild('NameEsp' .. Number) then
						local L_430_ = Instance.new('BillboardGui', L_429_forvar1.Character.Head)
						L_430_.Name = 'NameEsp' .. Number
						L_430_.ExtentsOffset = Vector3.new(0, 1, 0)
						L_430_.Size = UDim2.new(1, 200, 1, 30)
						L_430_.Adornee = L_429_forvar1.Character.Head
						L_430_.AlwaysOnTop = true
						local L_431_ = Instance.new('TextLabel', L_430_)
						L_431_.Font = "GothamBold"
						L_431_.FontSize = "Size14"
						L_431_.TextWrapped = true
						L_431_.Text = (L_429_forvar1.Name .. ' \n' .. L_52_func((game:GetService('Players').LocalPlayer.Character.Head.Position - L_429_forvar1.Character.Head.Position).Magnitude / 3) .. ' M')
						L_431_.Size = UDim2.new(1, 0, 1, 0)
						L_431_.TextYAlignment = 'Top'
						L_431_.BackgroundTransparency = 1
						L_431_.TextStrokeTransparency = 0.5
						if L_429_forvar1.Team == game:GetService("Teams").Pirates then
							L_431_.TextColor3 = Color3.new(255, 0, 0)
						else
							L_431_.TextColor3 = Color3.new(0, 255, 255)
						end
					else
						L_429_forvar1.Character.Head['NameEsp' .. Number].TextLabel.Text = (L_429_forvar1.Name .. ' | ' .. L_52_func((game:GetService('Players').LocalPlayer.Character.Head.Position - L_429_forvar1.Character.Head.Position).Magnitude / 3) .. ' M\nHealth : ' .. L_52_func(L_429_forvar1.Character.Humanoid.Health * 100 / L_429_forvar1.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if L_429_forvar1.Character.Head:FindFirstChild('NameEsp' .. Number) then
						L_429_forvar1.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
					end
				end
			end
		end)
	end
end
Ply:Label("ESP Players V.1")

Ply:Toggle("Esp Player \n มองเส้นผู้เล่น",ESPPlayer,function(a)
    ESPPlayer = a
    while ESPPlayer do wait()
        UpdateEspPlayer()
    end
end)
Settings = Library:Tab("Settings")


Settings:Label("Server|เกี่ยวกับเซิฟ")

Settings:Button("Rejoin Server\nรีจอยเซิฟ",function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
end)

local ShowIDServer = Settings:Label("ID Server")
local ShowIDServer = Settings:Label(tostring(game.JobId))
ShowIDServer:Set(tostring(game.JobId))

Settings:Button("Copy Id Server \n ก็อปไอดีเซิฟ",function()
	setclipboard(tostring(game.JobId))
end)

Settings:Textbox("Job Id",true,function(Value)
    _G.Settings.Job = value
	SaveSettings()
end)

Settings:Button("Join Job Id",function()
	--_G.Settings.Rejoin = false
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Settings.Job, game.Players.LocalPlayer)
	game:GetService("TeleportService"):Teleport(game.PlaceId , _G.Settings.Job , game:GetService("Players").localPlayer)
end)

Settings:Button("Hop Server \n ฮอปเซิฟ",function()
	Hop()
end)

-- [ Hop Function ]

function Hop()
	local L_70_ = game.PlaceId
	local L_71_ = {}
	local L_72_ = ""
	local L_73_ = os.date("!*t").hour
	local L_74_ = false
	function TPReturner()
		local L_75_;
		if L_72_ == "" then
			L_75_ = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. L_70_ .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			L_75_ = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. L_70_ .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. L_72_))
		end
		local L_76_ = ""
		if L_75_.nextPageCursor and L_75_.nextPageCursor ~= "null" and L_75_.nextPageCursor ~= nil then
			L_72_ = L_75_.nextPageCursor
		end
		local L_77_ = 0;
		for L_78_forvar0, L_79_forvar1 in pairs(L_75_.data) do
			local L_80_ = true
			L_76_ = tostring(L_79_forvar1.id)
			if tonumber(L_79_forvar1.maxPlayers) > tonumber(L_79_forvar1.playing) then
				for L_81_forvar0, L_82_forvar1 in pairs(L_71_) do
					if L_77_ ~= 0 then
						if L_76_ == tostring(L_82_forvar1) then
							L_80_ = false
						end
					else
						if tonumber(L_73_) ~= tonumber(L_82_forvar1) then
							local L_83_ = pcall(function()
								L_71_ = {}
								table.insert(L_71_, L_73_)
							end)
						end
					end
					L_77_ = L_77_ + 1
				end
				if L_80_ == true then
					table.insert(L_71_, L_76_)
					wait()
					pcall(function()
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(L_70_, L_76_, game.Players.LocalPlayer)
					end)
					wait(1)
				end
			end
		end
	end
	function Teleport()
		while wait() do
			pcall(function()
				TPReturner()
				if L_72_ ~= "" then
					TPReturner()
				end
			end)
		end
	end
	Teleport()
end
--[[
Settings:Button("Hop Server Low Player \n หาเซิฟคนน้อย",function()
		_G.Settings.AutoTeleport = true
		_G.Settings.DontTeleportTheSameNumber = true
		_G.Settings.CopytoClipboard = false
		if not game:IsLoaded() then
			print("Game is loading waiting...")
		end
		local L_475_ = math.huge
		local L_476_;
		local L_477_;
		local L_478_ = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
		function serversearch()
			for L_479_forvar0, L_480_forvar1 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(L_478_)).data) do
				if type(L_480_forvar1) == "table" and L_480_forvar1.playing ~= nil and L_475_ > L_480_forvar1.playing then
					L_476_ = L_480_forvar1.maxPlayers
					L_475_ = L_480_forvar1.playing
					L_477_ = L_480_forvar1.id
				end
			end
		end
		function getservers()
			serversearch()
			for L_481_forvar0, L_482_forvar1 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(L_478_))) do
				if L_481_forvar0 == "nextPageCursor" then
					if L_478_:find("&cursor=") then
						local L_483_ = L_478_:find("&cursor=")
						local L_484_ = L_478_:sub(L_483_)
						L_478_ = L_478_:gsub(L_484_, "")
					end
					L_478_ = L_478_ .. "&cursor=" .. L_482_forvar1
					getservers()
				end
			end
		end
		getservers()
		if AutoTeleport then
			if DontTeleportTheSameNumber then
				if # game:GetService("Players"):GetPlayers() - 4 == L_475_ then
					return warn("It has same number of players (except you)")
				elseif L_477_ == game.JobId then
					return warn("Your current server is the most empty server atm")
				end
			end
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, L_477_)
		end
	end
)
]]
Settings:Label("Community")

Settings:Button("Click to Copy Link Youtube\nก็อปปี้ลิ้ง ยูทูป",function()
	setclipboard("https://www.youtube.com/@MrMaxNaJaa")
end)
Settings:Button("Click to Copy Link Facebook\nก็อปปี้ลิ้ง เฟส",function()
	setclipboard("https://www.facebook.com/MrMaxHub")
end)
Settings:Button("Click to Copy Link Discord\nก็อปปี้ลิ้ง ดิส",function()
	setclipboard("https://discord.gg/eaResuTyQc")
end)
Settings:Button("Click to Copy Link Discord\nก็อปปี้ลิ้ง ดิส",function()
	setclipboard("https://discord.gg/Bccvvy3AhT")
end)

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
	vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

















