local plr = game:GetService('Players').LocalPlayer
local plrc = plr.Character
local plrg = plr.PlayerGui
local b = game:GetService('Workspace')
local t = b.missiongivers
local start = true
while wait(0.5) do
local function FindThingy(quest)
            local gotquest = false
            for i, v in pairs(t:GetDescendants()) do
                if v:FindFirstChild("HumanoidRootPart") then
                if v.Talk.typ.Value == quest then
                plrc.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                wait(0.2)
                v.CLIENTTALK:FireServer()
                v.CLIENTTALK:FireServer("accept")
                wait(2)
                if plrg.Main.ingame.Missionstory.Visible == true then
                    gotquest = true
                    print("quest true")
                    end
                end
        end
            end
return gotquest
end
local function GetThingy(getquest)
    --if plrg.Main.ingame.Missionstory.Visible == true then
       -- wait(2) 
        repeat
           for t, c in pairs(b.missiontypes.getspawns['4601350214'][getquest]:GetChildren()) do
               if c.taken.Value == true then
               plr.Character.HumanoidRootPart.CFrame = c.CFrame
               wait(2)
           end
        end
        until plrg.Main.ingame.Missionstory.Visible == false
           
--end
return quest
end

local bruh = FindThingy("grocerybag")
    if bruh == true then
        GetThingy("groceries")
end  
if bruh == false then
        FindThingy("envelope")
    if plrg.Main.ingame.Missionstory.Visible == true then
        GetThingy("deliver")
    if plrg.Main.ingame.Missionstory.Visible == false then
        FindThingy("cat")
        wait(0.2)
        GetThingy("cat")
end
end
end
end