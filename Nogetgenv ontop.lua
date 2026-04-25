local ServiceNames = {
    "ReplicatedStorage",
    "TweenService", 
    "Players", 
    "Workspace",
    "RunService",
    "UserInputService"
}

local Services = {}
for _, Service in ipairs(ServiceNames) do 
    Services[Service] = cloneref(game:GetService(Service))
end 

local ReplicatedStorage = Services.ReplicatedStorage
local TweenService = Services.TweenService
local Players = Services.Players
local WorkSP = Services.Workspace
local Runservice = Services.RunService
local UserInputServiec = Services.UserInputService
local Player = Players.LocalPlayer
local Camera = WorkSP.CurrentCamera


local function getworld()--To know ur current world sea 1 or 2
    if game.PlaceId == 3978370137 then
        return "First Sea"
    else
        return "Second Sea"
    end
end

local function getbuso() --To know whether u have buso haki or not 
    if Player.PlayerGui.Modes.Frame.GeneralBars.Buso.Visible==true then
        return "Yes"

    else
        return "No"
    end 
end

local function getgeppo() --To know whether u have sky walk or not 
    for i,v in pairs(ReplicatedStorage:GetChildren()) do
        if string.find(v.Name,Player.Name) then
        local fkinpath=v.Skills.skyWalk.Value
        if fkinpath==true then
            return "Yes"
        else
            return "No"
        end
        end
    end
end

local function getscroll() --To know whether u have sky walk or not 
    for i,v in pairs(ReplicatedStorage:GetChildren()) do
        if string.find(v.Name,Player.Name) then
        local fkinpath=v.Inventory.Inventory.Value
        if string.find(fkinpath,"World Scroll") then
            return "Yes"
        else
            return "No"
        end
        end
    end
end


if getgenv().ConfigHorstGrandPieceOnline["Performance"]["DISABLE3DRENDER"]==true then
   Runservice:Set3dRenderingEnabled(false)
end
if getgenv().ConfigHorstGrandPieceOnline["Performance"]["LockFps"]["EnableLockFps"]==true then
   setfpscap(getgenv().ConfigHorstGrandPieceOnline["Performance"]["LockFps"]["LockFpsAmount"])
end
task.spawn(function()
  while true do
      task.wait()
      if game.PlaceId~=1730877806 then

            local lvl= getgenv().ConfigHorstGrandPieceOnline["JA_DOO_RAI"]["Level"] and Player.PlayerGui.HUD.Main.Bars.Experience.Detail.Level.Text or "N/A"--it will be format like Level1 Done

            local _, lok = pcall(getworld) 
            lok = (getgenv().ConfigHorstGrandPieceOnline["JA_DOO_RAI"]["World"] and lok) or "N/A"


            local _, busResult = pcall(getbuso)
            local bus = (getgenv().ConfigHorstGrandPieceOnline["JA_DOO_RAI"]["Haki"] and busResult) or "N/A"


            local _, scrollResult = pcall(getscroll)
            local scroll = (getgenv().ConfigHorstGrandPieceOnline["JA_DOO_RAI"]["World_Scroll"] and scrollResult) or "N/A"


            local _, geppoResult = pcall(getgeppo)
            local geppo = (getgenv().ConfigHorstGrandPieceOnline["JA_DOO_RAI"]["Skywalk"] and geppoResult) or "N/A"


            _G.Horst_SetDescription("📃"..lvl.."   ".."World🌎: "..lok.."   ".."Argument Haki👊: "..bus.."   ".."World Scroll📜: "..scroll.."    ".."Geppo🪁: "..geppo.."    ".."Log by Darkflower(J4Z4)")
            task.wait(10)
        end
    end

end)