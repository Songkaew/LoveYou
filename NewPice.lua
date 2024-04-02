_G.ImageUIButton = "rbxassetid://12862171447"


local Update = loadstring(game:HttpGet("https://raw.githubusercontent.com/NaJaxHub/ser/main/UIfreeNaJabat"))()

local Library = Update:Window("MrMaxNaJa Community","",Enum.KeyCode.RightControl);--"MrMaxNaJa Hub | Map Blox Fruits - Free Script Version 0.1.15.1 By MrMaxNaJa"
Main = Library:Tab("Main")

Main:Line()

Main:Label("Welcome MrMaxNaJa Community")

local Time = Main:Label("Executor Time");spawn(function() getgenv().Time = true;while true do wait(.1) UpdateTime() end end);function UpdateTime() local date = os.date("*t");local hour = (date.hour) % 24;local ampm = hour < 12 and "AM" or "PM";local timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm);local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year);local LocalizationService = game:GetService("LocalizationService");local Players = game:GetService("Players");local player = Players.LocalPlayer;local name = player.Name;local result, code = pcall(function()   return LocalizationService:GetCountryRegionForPlayerAsync(player)  end);Time:Set(" : " .. timezone);Time:Set("Executor Time: " .. datetime .. " [ " .. code .. " ]");spawn(function() if getgenv().Time then pcall(function()  while wait() do  Time()  end end) end end) end

Main:Seperator("Main")
function topos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/99999, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
    tween:Play()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    if _G.StopTween == true then
        tween:Cancel()
        _G.Clip = false
    end
end

spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if _G.AutoFarm then
            if not game:GetService("Workspace"):FindFirstChild("Part") then
                local Part = Instance.new("Part")
                Part.Name = "Part"
                Part.Parent = game.Workspace
                Part.Anchored = true
                Part.Transparency = 1
                Part.Size = Vector3.new(50,0.5,50)
            elseif game:GetService("Workspace"):FindFirstChild("Part") then
                game.Workspace["Part"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.8,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            end
			for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.CanCollide = false
				end
			end
		end
	end)
end)
function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end
function Click()
    local VirtualUser = game:GetService('VirtualUser')
    VirtualUser:CaptureController()
    VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
end
Main:Toggle("AutoFarm Lv.",_G.AutoFarm,function(value)
    _G.AutoFarm = value
    StopTween(_G.AutoFarm)
end)
print("GG")
spawn(function()
    while wait() do
        if _G.AutoFarm then
            pcall(function()
                local BanditIsland = CFrame.new(-973.992798, 34.5999947, -530.916992, 0.0224915557, -6.85506363e-09, 0.999747038, -1.5485039e-08, 1, 7.20516891e-09, -0.999747038, -1.56431774e-08, 0.0224915557)
                for i,v in pairs(game:GetService("Workspace").Lives:GetChildren()) do
                    if v.ClassName == "Model" then
                        if (BanditIsland.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            if and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    --PosMon = v.HumanoidRootPart.CFrame
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (v.HumanoidRootPart.CFrame * CFrame.new(0,2,2))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    --
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    v.HumanoidRootPart.Transparency = 0.7
                                    v.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
                                    v.HumanoidRootPart.Material = "Neon"
                                    v.HumanoidRootPart.CanCollide = false
                                    --
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0
                            end
                        else
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (BanditIsland)
                        end
                    end
                end
            end)
        end
    end
end)


--[[spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoFarm then
				for i,v in pairs(game.Workspace.Lives:GetChildren()) do
                    if v.ClassName == "Model" then
					if (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 280 then
							v.HumanoidRootPart.CFrame = PosMon
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 0.9
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.Humanoid:ChangeState(11)
							v.Humanoid:ChangeState(14)
                    end
                    end
				end
			end
		end)
	end
end)]]


Main:Seperator("Seperator")

Main:Button("Button",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lives.LocalPlayer.HumanoidRootPart.CFrame
end)

Main:Button2("Button",function()
	print("Button")
end)
Main:Button2("Button",function()
	print("Button")
end)
Main:Button2("Button",function()
	print("Button")
end)
Main:Button2("Button",function()
	print("Button")
end)

Main:Toggle2("Toggle",_G.Fd,function(value)
    _G.Fd = value
end)

while _G.Fd do wait()
    for i,v in pairs(game:GetService("Workspace").Chests:GetDescendants()) do
        if v.ClassName == "ProximityPrompt" then
            fireproximityprompt(v,30)
            game.Players.LocalPlayer.Character.HumanoidRootPart .CFrame = v.Parent.CFrame
        end
    end
end


Main:Toggle2("Toggle",true,function(value)
end)
Main:Toggle2("Toggle",_G.a,function(value)
end)
Main:Toggle("Toggle",false,function(value)
	print(value)
end)

local Weapon = {
 "1",
 "2",
 "3"
}
local SearchWeapon = Main:Dropdown2("Dropdown","not",Weapon,function(value)
	print(value)
end)
local SearchWeapon = Main:Dropdown("Dropdown","not",Weapon,function(value)
	print(value)
end)

Main:Button("Refresh Weapon",function()
	SearchWeapon:Clear()
	SearchWeapon:Add(Weapon)
end)

Main:Line()

Main:Slider("Slider",1,100,10,function(value)
	print(value)
end)

Main:Textbox("Textbox",true,function(value)
    print(value)
end)

local Home = Library:Tab("Main2")
