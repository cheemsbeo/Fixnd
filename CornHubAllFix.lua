local SlayerzUI_MobileToggle = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/SlayerzUI/main/MBToggle.script"))()
SlayerzUI_MobileToggle:Create("rbxassetid://16486409560") -- Image Id

local SlayerzLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/SlayerzUI/main/BetaLibrary.script"))()

local Name = "Corn Hub"
local Description = "Make By CheemsBeo"
local Image = "rbxassetid://16486409560"
local Color = Color3.fromRGB(255, 0, 0)
local Window = SlayerzLibrary:Window(Name,Description,Image,Color)

local Tap1 = Window:Tab("Blox fruits")
local Tap2 = Window:Tab("Misc")

local BF = Tap1:Section("- No Key -","Left")

BF:Button("BAPTUOI V2",function()
loadstring(game:HttpGet("https://shz.al/~BAPTUOIV2"))()
end)

BF:Button("Ripper Hub Blox fruit",function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/hajibeza/Module/main/Mobile_Script.lua'))()
end)

BF:Button("Auto Chest Rinx",function()

_G.Team = "Pirates"
getgenv().Scibidi = {
    ["Hihi"] = "Pirates", 
    ["Blind"] = false, 
    ["FpsStonk"] = false, 
    ["Hop"] = true, 
    ["Reset"] = 4, 
    ["MayLamSao"] = {
        ["ItemLegendary"] = true, 
        ["HuhuDarkbeard"] = true
    },
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/RinHubb/RinHub/main/RinX_AutochestV2.lua"))()
end)

BF:Button("Rendz Hub",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
end)

BF:Button("MTriet Hub",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Minhtriettt/Free-Script/main/MTriet-Hub.lua"))()
end)

BF:Button("W-azure True V2",function()

getgenv().Team = "Pirates"
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
end)

BF:Button(" Dora Hub (Master Hub)",function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/onepicesenpai/onepicesenpai/main/onichanokaka'))()
end)

BF:Button("Zekrom Hub v2.05",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/Zekrom-Hub-X/main/Zekrom-Hub-X-exe"))()
end)

local Key = Tap1:Section("Key","Right")

Key:Button("Hoho Hub V3",function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/BloxFruitFreeV3.lua'))()
end)

Key:Button("Roxy Hub giống 30% ",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/NightsTimeZ/Donate-Me/main/free%20bf.lua"))()
end)

Key:Button("Apple Hub",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ImTienNguyenZ/AppleHubOnTop/main/Loader.lua"))()
end)

local Farm = Tap2:Section("Farm","Left")

Farm:Button("Farm Chest",function()
highChestOnly = true
godsChalicSniper = false
repeat task.wait(4) until game:IsLoaded()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end
local veryImportantWaitTime = 0.5
task.spawn(function()
    while task.wait(veryImportantWaitTime) do
        pcall(function()
            for i,v in pairs(game.CoreGui:GetDescendants()) do
                pcall(function()
                    if string.find(v.Name,"ErrorMessage") then
                        if string.find(v.Text,"Security kick") then
                            veryImportantWaitTime = 1e9
                            Teleport()
                        end
                    end
                end)
            end
        end)
    end
end)

local AllowRunService = true
local AllowRunServiceBind = Instance.new("BindableFunction")
function AllowRunServiceBind.OnInvoke(args)
    if args == "ON" then
        AllowRunService = true
        local GameLoadGui = Instance.new("Message", workspace)
GameLoadGui.Text = 'On Farm Chest'
    elseif args == "OFF" then
        AllowRunService = false
        local GameLoadGui = Instance.new("Message", workspace)
GameLoadGui.Text = 'Stop Farm Chest'
    end
    local CoreGui = game:GetService("StarterGui")
    CoreGui:SetCore("SendNotification", {
        Title = "Chest Farm",
        Text = "I Don't Yet:)",
        Icon = "rbxthumb://type=Asset&id=16486409560&w=150&h=150",
        Duration = math.huge,
        Callback = AllowRunServiceBind,
        Button1 = "ON",
        Button2 = "OFF",
    })
end


task.spawn(function()
    while task.wait() do
        task.spawn(function()
            if godsChalicSniper == true then
                if stuff then
                    AllowRunService = false
                end
            end
        end)
    end
end)

local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "Chest Farm",
    Text = "AutoChest?",
    Icon = "rbxthumb://type=Asset&id=16486409560&w=150&h=150",
    Duration = math.huge,
    Callback = AllowRunServiceBind,
    Button1 = "ON",
    Button2 = "OFF",
})
task.spawn(function()
    while true and task.wait(0.5) do
        if AllowRunService == true then
            local ohString1 = "SetTeam"
            local ohString2 = "Marines"

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
        end
    end
end)

task.spawn(function()
    while true and task.wait() do
        if AllowRunService == true then
            if highChestOnly == false then
                local hasChar = game.Players.LocalPlayer:FindFirstChild("Character")
                if not game.Players.LocalPlayer.Character then
        
                else
                    local hasCrewTag = game.Players.LocalPlayer.Character:FindFirstChild("CrewBBG",true)
                    if hasCrewTag then hasCrewTag:Destroy() end
                    local hasHumanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                    if hasHumanoid then
                        local Chest = game.Workspace:FindFirstChild("Chest4") or game.Workspace:FindFirstChild("Chest3") or game.Workspace:FindFirstChild("Chest2") or game.Workspace:FindFirstChild("Chest1") or game.Workspace:FindFirstChild("Chest")
                        
                        if Chest then
                            game.Players.LocalPlayer.Character:PivotTo(Chest:GetPivot())
                            firesignal(Chest.Touched,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        else
                            Teleport()
                            break
                        end
                    end 
                end
            elseif highChestOnly == true then
                local hasChar = game.Players.LocalPlayer:FindFirstChild("Character")
                if not game.Players.LocalPlayer.Character then
        
                else
                    local hasCrewTag = game.Players.LocalPlayer.Character:FindFirstChild("CrewBBG",true)
                    if hasCrewTag then hasCrewTag:Destroy() end
                    local hasHumanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                    if hasHumanoid then
                        local Chest = game.Workspace:FindFirstChild("Chest4") or game.Workspace:FindFirstChild("Chest3") or game.Workspace:FindFirstChild("Chest2")
                        
                        if Chest then
                            game.Players.LocalPlayer.Character:PivotTo(Chest:GetPivot())
                            firesignal(Chest.Touched,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        else
                            Teleport()
                            break
                        end
                    end 
                end
            end
        end
    end
end)
end)



local Mod = Tap2:Section("Mod","Right")

Mod:Button("Up Lv",function()
local plr = game:GetService("Players").LocalPlayer
local Notification = require(game:GetService("ReplicatedStorage").Notification)
local Data = plr:WaitForChild("Data")
local EXPFunction = require(game.ReplicatedStorage:WaitForChild("EXPFunction"))
local LevelUp = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp)
local Sound = require(game:GetService("ReplicatedStorage").Util.Sound)
local LevelUpSound = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp")
function v129(p15)
    local v130 = p15;
    while true do
        local v131, v132 = string.gsub(v130, "^(-?%d+)(%d%d%d)", "%1,%2");
        v130 = v131;
        if v132 == 0 then
            break;
        end;    
    end;
    return v130;
end;

Notification.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display()
Notification.new("Earned <Color=Yellow>1,000,000,000,000 Exp.<Color=/> (+ None)"):Display()
Notification.new("Earned <Color=Green>$25,000<Color=/>"):Display()
plr.Data.Exp.Value = 999999999999
plr.Data.Beli.Value = plr.Data.Beli.Value + 25000

delay = 0
count = 0
while plr.Data.Exp.Value - EXPFunction(Data.Level.Value) > 0 do
    plr.Data.Exp.Value = plr.Data.Exp.Value - EXPFunction(Data.Level.Value)
    plr.Data.Level.Value = plr.Data.Level.Value + 1
    plr.Data.Points.Value = plr.Data.Points.Value + 3
    LevelUp({ plr })
    Sound.Play(Sound, LevelUpSound.Value)
    Notification.new("<Color=Green>LEVEL UP!<Color=/> (" .. plr.Data.Level.Value .. ")"):Display()
    count = count + 1
    if count >= 5 then
        delay = tick()
        count = 0
        wait()
    end
end
end)

Mod:Button("Buff Money Fake",function()
local plr = game:GetService("Players").LocalPlayer
local Notification = require(game:GetService("ReplicatedStorage").Notification)
local Data = plr:WaitForChild("Data")
local EXPFunction = require(game.ReplicatedStorage:WaitForChild("EXPFunction"))
local LevelUp = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp)
local Sound = require(game:GetService("ReplicatedStorage").Util.Sound)
local LevelUpSound = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp")
function v129(p15)
    local v130 = p15;
    while true do
        local v131, v132 = string.gsub(v130, "^(-?%d+)(%d%d%d)", "%1,%2");
        v130 = v131;
        if v132 == 0 then
            break;
        end;    
    end;
    return v130;
end;

Notification.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display()
Notification.new("Earned <Color=Green>$999999999999999999999999<Color=/>"):Display()
plr.Data.Exp.Value = 0
plr.Data.Beli.Value = plr.Data.Beli.Value + 99999999999999999999999999999999

delay = 0
count = 0
while plr.Data.Beli.Value - EXPFunction(Data.Level.Value) > 0 do
    plr.Data.Beli.Value = plr.Data.Beli.Value + EXPFunction(Data.Beli.Value)
    plr.Data.Beli.Value = plr.Data.Beli.Value + 1
    LevelUp({ plr })
    Sound.Play(Sound, LevelUpSound.Value)
    Notification.new("<Color=Green>Give<Color=/> (" .. plr.Data.Beli.Value .. ")"):Display()
    count = count + 1
    if count >= 5 then
        delay = tick()
        count = 0
        wait()
    end
end
end)


local SlayerzUI_Notify = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/SlayerzUI/main/Notification.script"))()
local NameHub = "Tổng Hợp all Script"
local Description = "Corn Hub "
local Logo = "rbxassetid://16486409560"
local Color = Color3.fromRGB(0,128,128 )
SlayerzUI_Notify:Notify(NameHub, Description, Logo, Color, 5)
