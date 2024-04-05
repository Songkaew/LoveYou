print("New GG")

repeat
	wait()
until game.Players
repeat
	wait()
until game.Players.LocalPlayer
repeat
	wait()
until game.ReplicatedStorage
repeat
	wait()
until game.ReplicatedStorage:FindFirstChild("Remotes");
repeat
	wait()
until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
repeat
	wait()
until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
repeat
	wait()
until game:GetService("Players")
repeat
	wait()
until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Energy")

wait(0.1)

if not game:IsLoaded() then
	repeat
		game.Loaded:Wait()
	until game:IsLoaded()
end

local PlaceId = game.PlaceId
if PlaceId == 2753915549 then
	World1 = true;
	print("Place Id Check : World1")
elseif PlaceId == 4442272183 then
	World2 = true;
	print("Place Id Check : World2")
elseif PlaceId == 7449423635 then
	World3 = true;
	print("Place Id Check : World3")
else
    game:GetService("Players").LocalPlayer:Kick("รันได้แค่ BF")
    print("รันได้แค่ BF")
    wait(1)
    game.Players.LocalPlayer:kick("(/00/210/5815//151/5/151/51/15)")
    wait(1.5)
    game:Shutdown()
    kickcash("//a/a//a//a//a///a///s///s//s//d/a//jsdfjghlkfdhgjcxbzvn//0001/01")
end

if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
	repeat wait()
		if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
			local args = {
				[1] = "SetTeam",
				[2] = "Pirates"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end

local Levelplayer = game.Players.LocalPlayer.Data.Level.Value
local UserPy = game.Players.LocalPlayer.Name
local tag = tostring(math.random(0001, 9999))
local GameTime = math.floor(workspace.DistributedGameTime+0.5)
local Hour = math.floor(GameTime/(60^2))%24
local Minute = math.floor(GameTime/(60^1))%60
local Second = math.floor(GameTime/(60^0))%60
local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
local Fps = workspace:GetRealPhysicsFPS()
--Time:Refresh("           Hour : "..Hour.." Minute : "..Minute.." Second : "..Second.. "")
local TimeGlobal = "TIME | "..os.date("%H")..":"..os.date("%M")..":"..os.date("%S")

local url = "https://discord.com/api/webhooks/1219138287562915891/C_2ifHKZ670koANT3DYW0VtvJcQUvdpzoSYXlFmZy0t9MbG8C1GxJIlKMKg2NieXHhcG" -- ur webhook url
local data = { 
	["username"] = 'NaJa Hub Kaitan', -- Webhook name here
	["avatar_url"] = "https://cdn.discordapp.com/attachments/948603231192363058/1088077196997955704/Untitled-1_copy.png", -- ur discord logo url
	["embeds"] = {
		{
			["description"] = "เลเวล : " ..Levelplayer.."         User :" ..UserPy.. "#" ..tag.. "ใช้งานสคริปเมื่อ: " ..TimeGlobal.."Ping:"..Ping.."FPS:"..Fps.."",
			["color"] = tonumber(0x00ff00), -- color id		
			["type"] = "rich",
			["fields"] =  {
				{
					["name"] = "[📁] สคริปที่ใช้",
					["value"] = '```โหมด : ไก่ตัน```',
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


_G.Settings = {
	SelectTeam = "Pirate",
	Bypass = true,

}
print("Settings Service")
function LoadSettings()
	if readfile and writefile and isfile and isfolder then
		if not isfolder("Kz Hub Kaitan Free Scripts") then
			makefolder("Kz Hub Kaitan Free Scripts")
		end
		if not isfolder("Kz Hub Kaitan Free Scripts/Blox Fruits/") then
			makefolder("Kz Hub Kaitan Free Scripts/Blox Fruits/")
		end
		if not isfile("Kz Hub Kaitan Free Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
			writefile("Kz Hub Kaitan Free Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
		else
			local L_54_ = game:GetService("HttpService"):JSONDecode(readfile("Kz Hub Kaitan Free Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
			for L_55_forvar0, L_56_forvar1 in pairs(L_54_) do
				_G.Settings[L_55_forvar0] = L_56_forvar1
			end
		end
	else
		return warn("Status : Undetected Executor")
	end
end

function SaveSettings()
	if readfile and writefile and isfile and isfolder then
		if not isfile("Kz Hub Kaitan Free Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
			LoadSettings()
		else
			local L_57_ = game:GetService("HttpService"):JSONDecode(readfile("Kz Hub Kaitan Free Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
			local L_58_ = {}
			for L_59_forvar0, L_60_forvar1 in pairs(_G.Settings) do
				L_58_[L_59_forvar0] = L_60_forvar1
			end
			writefile("Kz Hub Kaitan Free Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(L_58_))
		end
	else
		return warn("Status : Undetected Executor")
	end
end
LoadSettings()

local function ry(so)
	game:GetService("VirtualInputManager"):SendMouseButtonEvent(so.AbsolutePosition.X+so.AbsoluteSize.X/2,so.AbsolutePosition.Y+50,0,true,so,1);
	game:GetService("VirtualInputManager"):SendMouseButtonEvent(so.AbsolutePosition.X+so.AbsoluteSize.X/2,so.AbsolutePosition.Y+50,0,false,so,1);
end;

repeat wait()
	if game.Players.LocalPlayer.Team == nil and game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Visible == true then
		if _G.Settings.Teams == "Pirates" then
			ry(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton)
		elseif _G.Settings.Teams == "Marine" then
			ry(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton)
		else
			ry(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton)
		end
	end
until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()

local randomNumberUIKaitun = 1
randomNumberUIKaitun = math.random(1,2)

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
	vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
Code = {
	"EXP_5B",
	"CONTROL",
	"UPDATE11",
	"XMASEXP",
	"1BILLION",
	"ShutDownFix2",
	"UPD14",
	"STRAWHATMAINE",
	"TantaiGaming",
	"Colosseum",
	"Axiore",
	"Sub2Daigrock",
	"Sky Island 3",
	"Sub2OfficialNoobie",
	"SUB2NOOBMASTER123",
	"THEGREATACE",
	"Fountain City",
	"BIGNEWS",
	"FUDD10",
	"SUB2GAMERROBOT_EXP1",
	"UPD15",
	"2BILLION",
	"UPD16",
	"3BVISITS",
	"fudd10_v2",
	"Starcodeheo",
	"Magicbus",
	"JCWK",
	"Bluxxy",
	"Sub2Fer999",
	"Enyu_is_Pro"
}

function EquipWeapon(ToolSe)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
		Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
		wait(.001)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
	end
end

function UnEquipWeapon(Weapon)
	if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
		wait(.1)
		game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
	end
end

function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

spawn(function()
	while wait() do wait()
		if getgenv().AutoFarmKaitun then
			pcall(function()
				repeat wait()
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
				until not getgenv().AutoFarmKaitun
			end)
		else
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
				game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
			end
		end
	end
end)

local function GetIsLand(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = targetPos
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos.Position
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		RealTarget = RealTarget.p
	end
	local ReturnValue
	local CheckInOut = math.huge;
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
			local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			if ReMagnitude < CheckInOut then
				CheckInOut = ReMagnitude;
				ReturnValue = v.Name
			end
		end
		if ReturnValue then
			return ReturnValue
		end 
	end
end

function Tween(...)
    local RealtargetPos = {...}
    local targetPos = RealtargetPos[1]
    local p
    if type(targetPos) == "vector" then
        p = CFrame.new(targetPos)
    elseif type(targetPos) == "userdata" then
        p = targetPos
    elseif type(targetPos) == "number" then
        p = CFrame.new(unpack(RealtargetPos))
    end
    -- เช็คว่าผู้เล่นมีชีวิตหรือไม่ ถ้าไม่มีให้รอจนกว่าผู้เล่นจะมีชีวิตกลับ
    while game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 do
        wait()
	end
    -- คำนวณความห่างระหว่างตำแหน่งปัจจุบันและตำแหน่งปลายทาง
    local Distance = (p.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
    local Speed
	local Speedx
	-- เช็คว่าผู้เล่นอยู่ใกล้พิกัดที่ต้องการหรือไม่ ถ้าใกล้กว่า 50 หน่วยให้ย้ายตัวไปที่พิกัดนั้น
	if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 280 then 
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
	end
	if Distance < 300 then
		Speed = 300
		Speedx = 330
	elseif Distance < 550 then
		Speed = 355
		Speedx = 357
	elseif Distance < 800 then
		Speed = 370
		Speedx = 375
	elseif Distance < 800 then
		Speed = 370
		Speedx = 365
	elseif Distance >= 1300 then
		Speed = 375
		Speedx = 375
	end
    -- กำหนดค่า TweenInfo และเริ่มเอฟเฟกต์ Tween
    local B = TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
    local z = game:GetService("TweenService")
    local q = z:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], B, {CFrame = p})
    q:Play()
	
	if getgenv().Bypass then
		if Distance > 3000 and not AutoFarmMaterial and not getgenv().Auto_Raids and not (
			game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or 
			game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or 
			game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or 
			game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or 
			game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or 
			game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or 
			game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or 
			game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")
		) and not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
			pcall(function()
				tween:Cancel()
				fkwarp = false
				if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("spawnPoint").Value == tostring(GetIsLand(p)) then 
					wait(.1)
					Com("F_", "TeleportTospawn")
				elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastspawnPoint").Value == tostring(GetIsLand(p)) then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					wait(0.1)
					repeat
						wait()
					until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
				else
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						if fkwarp == false then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
						end
						fkwarp = true
					end
					wait(.08)
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					repeat
						wait()
					until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
					wait(.1)
					Com("F_", "SetspawnPoint")
				end
				wait(0.2)
				return
			end)
		end
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((p.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / Speedx, Enum.EasingStyle.Linear)
	local L_107_, L_108_ = pcall(function()
		q = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = p})
		q:Play()
	end)
    -- สร้างตัวแปรเก็บฟังก์ชันของ Tween เพื่อให้สามารถหยุดหรือรอได้
    local tweenfunc = {}
    function tweenfunc:Stop()
        q:Cancel()
		if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
			game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
		end
    end
    function tweenfunc:Wait()
        q.Completed:Wait()
    end 

    return tweenfunc
end
getgenv().PCMode = false -- true / false 
getgenv().UIHit = false -- true / false 

if getgenv().UIHit == true then
    getgenv().UIMain = 500
elseif getgenv().UIHit == false then
    getgenv().UIMain = 380
else
    getgenv().UIMain = 500
end

getgenv().TextUI_I = "[+] Auto Farm Lv."
getgenv().TextUI_II = "[+] FastAttack"
getgenv().TextUI_III = "Donate บาท 10 บาท ได้หมด"
getgenv().TextUI_IIII = "Wallet : xxx-xxx-xxxx | 2/4/2567"

print("UI.Lo")
print("สุ่ม 1-2 UI ได้ UI ที่:", randomNumberUIKaitun)

if randomNumberUIKaitun == 1 then
	getgenv().Color = Color3.fromRGB(80, 80, 80) -- สี Gui
	getgenv().ColorWiat = Color3.fromRGB(0,0,0)
	print("UI 1 ทำงาน")
end
if randomNumberUIKaitun == 2 then
	getgenv().Color = Color3.fromRGB(180, 80, 100) -- สี Gui
	getgenv().ColorWiat = Color3.fromRGB(30,12,12)
	print("UI 2 ทำงาน")
end
if randomNumberUIKaitun == "" or randomNumberUIKaitun == nil then
	getgenv().Color = Color3.fromRGB(80, 80, 80) -- สี Gui
	getgenv().ColorWiat = Color3.fromRGB(0,0,0)
	print("UI เดิม")
end

wait(1)

local player = game:GetService("Players").LocalPlayer
if player.PlayerGui:FindFirstChild("Welcome") then
    player.PlayerGui.Welcome:Destroy()
    print("GUI ชื่อ 'Welcome' ถูกลบแล้ว")
else
    print("ไม่พบ GUI ชื่อ 'Welcome'")
end
local replicatedStorage = game:GetService("ReplicatedStorage")

if replicatedStorage:FindFirstChild("Effect") then
    local effect = replicatedStorage.Effect
    if effect:FindFirstChild("Container") then
        local container = effect.Container
        if container:FindFirstChild("Death") then
            container.Death:Destroy()
        end
    end
end

--[require module]

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

--[Disabled Damage Interface]
function DisabledDamage()
	task.spawn(function()
		pcall(function()
			while task.wait() do
				game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
			end
		end)
	end)
end

--[Camera Shaker Function]
function CameraShaker()
	task.spawn(function()
		local Camera = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
		pcall(function()
			while task.wait() do
				Camera.CameraShakeInstance.CameraShakeState.Inactive = 0
			end
		end)
	end)
end

--[Deleted Effect Auto]

game:GetService("RunService").Heartbeat:Connect(function()
	for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
		pcall(function()
			if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
				v:Destroy()
			end
		end)
	end
end)

--[Function RmFzdCBBdHRhY2s=]

function CurrentWeapon()
	local ac = CombatFrameworkR.activeController
	local ret = ac.blades[1]
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	pcall(function()
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	end)
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	return ret
end

function getAllBladeHitsPlayers(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i=1,#Characters do local v = Characters[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function getAllBladeHits(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function AttackPlayersFunction()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHitsPlayers(60)
			if #bladehit > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play()
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
				end
			end
		end
	end
end

function AttackFunction()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHits(60)
			if #bladehit > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play()
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
				end
			end
		end
	end
end
-- [Remove Quest Dead]
spawn(function()
	while wait() do
		pcall(function()
			if game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Dead then 
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
					repeat wait()
					until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
				end
			end
		end)
	end
end)
--[Isnetwork Owner]
function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 280 then 
			return true
		end
		return false
	end
end

--[No Stun]
if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
	game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
		pcall(function()
			if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
				game.Players.LocalPlayer.Character.Stun.Value = 0
			end
		end)
	end)
end
--[Set flag Syn]

if syn then
	setfflag("HumanoidParallelRemoveNoPhysics", "False")
	setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
end
function Click()
	game:GetService('VirtualUser'):CaptureController()
	game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
end
local library = loadstring(game:HttpGet("https://pastebin.com/raw/bz0R9g7G"))()
local Window = library:NaJa()

local A = Window:Tab("Main:Autofarm","6022668898")

local Main1Right = A:Section("Main","Right")
local Main1Left = A:Section("Main","Left")
-- [Fast Attack]

function CheckPlyayers()
	for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
		if v.Name ~= game.Players.LocalPlayer.Name and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 35 then
			return true
		end
	end
end
coroutine.wrap(function()
	while wait() do
		pcall(function()
			local ac = CombatFrameworkR.activeController
			if ac and ac.equipped then
				if getgenv().AutoFarmKaitun then
					if CheckPlyayers() == true then
						AttackFunction()
						AttackPlayersFunction()
						if tick() - cooldownfastattack > tonumber(0.4) then wait(1) cooldownfastattack = tick() end
					else
						AttackFunction()
						AttackPlayersFunction()
						if tick() - cooldownfastattack > tonumber(0.75) then
							wait(0.1)
							cooldownfastattack = tick()
						end
					end
					CameraShaker()
					DisabledDamage()
				end
			end
		end)
	end
end)()
Main1Right:Toggle("Auto Farm Kaitun\nออโต้ฟาร์มไก่ตัน",_G.Settings.AutoFarmKaitun,function(a)
    _G.Settings.AutoFarmKaitun = a
	getgenv().AutoFarmKaitun = a
	SaveSettings()
end)
spawn(function()
	while wait(10) do
		if getgenv().AutoFarmKaitun then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
				end
			end)
		end
	end
end)
spawn(function()
	while true do wait()
		pcall(function()
			for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v.ToolTip == "Melee" then
					getgenv().MeleeSelect = v.Name
				end
			end
		end)
	end
end)

function Check_Sword(Sword_Name)
	for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventory")) do
		if (v.Type == "Sword") then
			if v.Name == Sword_Name then
				return true
			end
		end
	end
end

spawn(function()
	while wait() do
		if getgenv().AutoFarmKaitun then
			pcall(function()
				if World1 then
					local Lv = game.Players.LocalPlayer.Data.Level.Value
					if Lv >= 700 then --700
						getgenv().AutoNewWorld = true
					else
						getgenv().AutoNewWorld = false
						if Lv >= 200 and Check_Sword("Saber") == nil and game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
							getgenv().AutoSaber = true
						elseif Check_Sword("Saber") == true then
							getgenv().AutoSaber = false
							if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
								getgenv().Auto_Farm_Level = false
								FarmPole()
							else
								getgenv().Auto_Farm_Level = true
							end
						end
					end
				end
			end)
		end
	end
end)

spawn(function()
	while task.wait() do
		pcall(function()
			if getgenv().AutoFarmKaitun then
				if game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value < 2550 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",game:GetService("Players").LocalPlayer.Data.Points.Value)
				elseif game:GetService("Players").LocalPlayer.Data.Stats.Defense.Level.Value < 2450 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",game:GetService("Players").LocalPlayer.Data.Points.Value)
				end
			end
		end)
	end
end)

spawn(function()
	while task.wait() do
		pcall(function()
			if getgenv().AutoFarmKaitun and BringMobFarm then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 380 then
						v.HumanoidRootPart.CFrame = PosMon
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.Size = Vector3.new(31,31,31)
						v.HumanoidRootPart.Transparency = 1
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
					end
				end
			end
		end)
	end
end)

task.spawn(function() 
	while task.wait() do
		if getgenv().Auto_Farm_Level then
			pcall(function()
				CheckLevel()
				local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
				if not string.find(QuestTitle, Ms) then
					game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("AbandonQuest")
				end
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					local args = {
						[1] = "StartQuest",
						[2] = NameQuest,
						[3] = QuestLv
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				else
					if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if v.Name == Ms then
									repeat wait()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().MeleeSelect) then
											wait()
											EquipWeapon(getgenv().MeleeSelect)
										end
										BringMobFarm = true
										PosMon = v.HumanoidRootPart.CFrame
										if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
											if v.Humanoid.Health <= v.Humanoid.MaxHealth * 40/100 then 
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,20,10)
											else
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,15)
											end
										else
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0))
										end
										if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
											game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game) game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
										end
										game:GetService 'VirtualUser':CaptureController()
										game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
										v.Head.CanCollide = false v.Humanoid.WalkSpeed = 0 v.HumanoidRootPart.CanCollide = false v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									until not getgenv().AutoFarmKaitun or not getgenv().Auto_Farm_Level or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v.Parent --or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
								end
							end
						end
					else
						if World1 and (Ms == "Fishman Commando" or Ms == "Fishman Warrior") and (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
						elseif World1 and not (Ms == "Fishman Commando" or Ms == "Fishman Warrior") and (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3864.8515625, 6.6796875, - 1926.7841796875))
						elseif World2 and string.find(Ms, "Ship") and (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
						elseif World2 and not string.find(Ms, "Ship") and (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 6508.5581054688, 89.034996032715, - 132.83953857422))
						else
							for i , g in pairs(game:GetService("Workspace")._WorldOrigin.EnemySpawns:GetChildren()) do 
								if string.find(g.Name, Ms) then
									getgenv().PosMonFarmLvSetCFarme = 1
									repeat wait()
										UnEquipWeapon(getgenv().MeleeSelect)

										Tween(CFrameMon)
										wait(.5)
										Tween(g.CFrame * CFrame.new(0,55,0))
										wait(.5)
										getgenv().PosMonFarmLvSetCFarme = 2
									until not getgenv().AutoFarmKaitun or not getgenv().Auto_Farm_Level or getgenv().PosMonFarmLvSetCFarme == 2
								end
							end
							BringMobFarm = false
						end
					end
				end
			end)
		end
	end
end)

function FarmPole()
	pcall(function()
		if (CFrame.new(-7619.54736, 5618.8335, -2453.61938, -0.260018349, 0, 0.965603709, 0, 1.00000012, 0, -0.965603948, 0, -0.26001817).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1500 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		end
		for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
			if v.Name == "Thunder God" then
				if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					repeat task.wait()
						if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().MeleeSelect) then
							wait()
							EquipWeapon(getgenv().MeleeSelect)
						end
						if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
						end
						BringMobFarm = true
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid.WalkSpeed = 0
						v.Head.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(70,70,70)
						v.HumanoidRootPart.Transparency = 1
						Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,-25,25))
						game:GetService'VirtualUser':CaptureController()
						game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
					until not getgenv().AutoFarmKaitun or not v.Parent or v.Humanoid.Health <= 0
				end
			end 
		end
	end)
end

-- [Auto Saber]
spawn(function()
	while task.wait() do
		pcall(function()
			if getgenv().AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 and Check_Sword("Saber") == nil and World1 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
				if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
					if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
						local CFrameSaber = CFrame.new(-1480.06018, 47.9773636, 4.53454018, -0.386713833, 1.11673025e-07, 0.922199786, 7.96717785e-08, 1, -8.76847395e-08, -0.922199786, 3.95643944e-08, -0.386713833)
						if (CFrameSaber.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
							task.wait(1) 
						end
						if getgenv().AutoSaber and (CFrameSaber.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							Tween(CFrameSaber)
						end
						Tween(CFrameSaber)
					else
						if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
							if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
								EquipWeapon("Torch")
								Tween(CFrame.new(1113.7229, 5.04679585, 4350.33691, -0.541527212, 5.27007726e-09, 0.840683222, 8.74004868e-08, 1, 5.00303372e-08, -0.840683222, 1.00568911e-07, -0.541527212))
								UnEquipWeapon("Torch")
								EquipWeapon("Torch")
								task.wait(0.5)
							else
								Tween(CFrame.new(-1610.56824, 12.1773882, 162.830322, -0.907543361, -2.88120088e-08, -0.419958383, -4.66550922e-08, 1, 3.22163096e-08, 0.419958383, 4.88308949e-08, -0.907543361))
							end
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
								task.wait(0.5)
								EquipWeapon("Cup")
								task.wait(0.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
								task.wait(0)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
							else
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
								elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
									if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Mob Leader [Lv. 120] [Boss]" then
												if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat task.wait()
														EquipWeapon(getgenv().MeleeSelect)
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid.WalkSpeed = 0
														v.Head.CanCollide = false
														v.HumanoidRootPart.Size = Vector3.new(100,100,100)
														v.HumanoidRootPart.Transparency = 1
														EquipWeapon(getgenv().MeleeSelect)
														Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
														if not getgenv().FastAttack or not getgenv().FastAttackO or getgenv().FastAttack or getgenv().FastAttackO or getgenv().SuperFastAttack then game:GetService'VirtualUser':CaptureController() game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) end
													until v.Humanoid.Health <= 0 or getgenv().AutoSaber == false
												end
											else
												for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
													if v.Name == "Mob Leader [Lv. 120] [Boss]" then
														Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
													end
												end
											end
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
									task.wait(0.5)
									EquipWeapon("Relic")
									task.wait(0.5)
									Tween(CFrame.new(-1406.37512, 29.9773273, 4.45027685, 0.877344251, -3.82776442e-08, 0.479861468, 4.93218133e-09, 1, 7.07504668e-08, -0.479861468, -5.9705755e-08, 0.877344251))
								end
							end
						end
					end
				else
					if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Saber Expert [Lv. 200] [Boss]" then
								repeat task.wait()
									EquipWeapon(getgenv().MeleeSelect)
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
									if not getgenv().FastAttack or not getgenv().FastAttackO or getgenv().FastAttack or getgenv().FastAttackO or getgenv().SuperFastAttack then game:GetService'VirtualUser':CaptureController() game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) end
								until v.Humanoid.Health <= 0 or getgenv().AutoSaber == false
								getgenv().AutoSaber = false
								if v.Humanoid.Health <= 0 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
								end
							else
								Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]").HumanoidRootPart.CFrame * CFrame.new(0,30,5))
							end
						end
					end
				end
			end
		end)
	end
end)





spawn(function() -- AutoNewWorld
	while wait() do
		if World1 then
			local Lv = game.Players.LocalPlayer.Data.Level.Value
			if Lv >= 700 and getgenv().AutoNewWorld then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
				getgenv().Auto_Farm_Level  = false
				if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
					EquipWeapon("Key")
					Tween(CFrame.new(1347.7124, 37.3751602, -1325.6488))
					wait(3)
				elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
								repeat game:GetService("RunService").Heartbeat:wait()
									pcall(function()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
										if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().MeleeSelect) then
											wait()
											EquipWeapon(getgenv().MeleeSelect)
										end
										Tween(v.HumanoidRootPart.CFrame * CFrame.new(1,20,0))
										PosMon = v.HumanoidRootPart.CFrame
										v.Humanoid.NameDisplayDistance = 0
										v.HumanoidRootPart.Size = Vector3.new(80,80,80)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy()
										end
										BringMobFarm = true
										v.Humanoid:ChangeState(11)
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
									end)
								until v.Humanoid.Health <= 0 or not v.Parent
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							end
						end
					else
						Tween(CFrame.new(1347.7124, 37.3751602, -1325.6488))
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
				end
			end
		end
	end
end)





























