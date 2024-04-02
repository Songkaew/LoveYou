_G.ImageUIButton = "rbxassetid://12862171447"


local Update = loadstring(game:HttpGet("https://raw.githubusercontent.com/NaJaxHub/ser/main/UIfreeNaJabat"))()

local Library = Update:Window("MrMaxNaJa Community","",Enum.KeyCode.RightControl);--"MrMaxNaJa Hub | Map Blox Fruits - Free Script Version 0.1.15.1 By MrMaxNaJa"
Main = Library:Tab("Main")

Main:Line()

Main:Label("Welcome MrMaxNaJa Community")

local Time = Main:Label("Executor Time");spawn(function() getgenv().Time = true;while true do wait(.1) UpdateTime() end end);function UpdateTime() local date = os.date("*t");local hour = (date.hour) % 24;local ampm = hour < 12 and "AM" or "PM";local timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm);local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year);local LocalizationService = game:GetService("LocalizationService");local Players = game:GetService("Players");local player = Players.LocalPlayer;local name = player.Name;local result, code = pcall(function()   return LocalizationService:GetCountryRegionForPlayerAsync(player)  end);Time:Set(" : " .. timezone);Time:Set("Executor Time: " .. datetime .. " [ " .. code .. " ]");spawn(function() if getgenv().Time then pcall(function()  while wait() do  Time()  end end) end end) end

Main:Seperator("Main")

Main:Seperator("Seperator")

Main:Button("Button",function()
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
Main:Button2("Button",function()
	print("Button")
end)

Main:Toggle2("Toggle",false,function(value)
end)
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
