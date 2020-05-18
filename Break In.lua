local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vzltex/Senpai-Lib/master/UILibrary"))();

local Window1 = library:CreateWindow("Spawn Items");
local Window2 = library:CreateWindow("Other");
local Window3 = library:CreateWindow("Teleports");
local Window4 = library:CreateWindow("Credits");
Window1:Button("Spawn Apple",function()
game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Apple")
end);

Window1:Button("Spawn Cookie",function()
game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Cookie")
end);

Window1:Button("Spawn Pizza Slice",function()
game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Pizza2")
end);

Window1:Button("Spawn Chips",function()
game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Chips")
end);

Window1:Button("Spawn BloxyCola",function()
game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("BloxyCola")
end);

Window1:Button("Spawn MedKit",function()
game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("MedKit")
end);

Window1:Button("Spawn Planks",function()
local RefreshPlanks = game:GetService("ReplicatedStorage").RemoteEvents.RefreshPlanks
RefreshPlanks:FireServer()
end);

Window1:Button("Give Bat",function()
game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Bat")
end);

Window1:Button("Spawn Pie",function()
game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Pie")
end);

Window1:Button("Spawn Key",function()
game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Key")
end);

Window1:Button("Car Key",function()
game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("CarKey")
end);

Window1:Button("Spawn Pan",function()
game.ReplicatedStorage.RemoteEvents.BloxyPack:FireServer(1)
end);

Window1:Button("Spawn Teddy Bear",function()
game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("TeddyBloxpin")
end);

Window1:Button("Spawn Rat",function()
game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Louie")
end);

Window2:Button("Vault Code",function()
game.workspace.CodeNote.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end);

Window2:Button("God Mode",function()
while wait() do
local Energy = game:GetService("ReplicatedStorage").RemoteEvents.Energy
Energy:FireServer(
	15,
	"Apple"
)
game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Apple")
end
end);

Window2:Button("Heal Others",function()
game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Cure")
wait(1)
if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cure") then 
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cure") then 
            game:GetService("ReplicatedStorage").RemoteEvents.BackpackEvent:FireServer("Equip", game:GetService("Players").LocalPlayer.Backpack.Cure)
        else
            game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Cure")
            wait(0.1)
        end
    end
wait(1)
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
game:GetService("ReplicatedStorage").RemoteEvents.CurePlayer:FireServer(v)
end
end);

Window2:Button("Delete Items",function()
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
     if v:IsA("Tool") then
          v:Destroy()
     end
end
end);

Window2:Button("Kill Bad Guys",function()
while wait() do 
     for i,v in pairs(game.Workspace.BadGuys:GetChildren()) do
          game:GetService("ReplicatedStorage").RemoteEvents.HitBadguy:FireServer(v, 8)
     end
end
end);

Window2:Button("Open Safe",function()
	if workspace:findFirstChild("CodeNote") then
	game.ReplicatedStorage.RemoteEvents.Safe:FireServer(workspace.CodeNote.SurfaceGui.TextLabel.Text)
end
end);

Window2:Button("Cat Friend",function()
game.ReplicatedStorage.RemoteEvents.Cattery:FireServer("Cattery")
end);

Window2:Button("Unlock Basement",function()
local UnlockDoor = game:GetService("ReplicatedStorage").RemoteEvents.UnlockDoor
UnlockDoor:FireServer()
end);

Window3:Button("Attic",function()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0.23,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(-16, 35, -220);
end);

Window3:Button("Basement",function()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0.23,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(71, -15, -163);
end);

Window3:Button("Boss Room",function()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0.23,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(-39, -287, -1480);
end);

Window3:Button("House",function()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0.23,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(-36, 3, -200);
end);

Window3:Button("Blue Room",function()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0.23,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(-49.2646141, 19.1650429, -204.640137);
end);

Window3:Button("Pink Room",function()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0.23,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(4.31251097, 19.4171238, -230.210907);
end);

Window3:Button("Green Room",function()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0.23,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(4.88375235, 19.4171238, -199.627045);
end);

Window3:Button("Sewer",function()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0.23,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(129, 3, -125);
end);

Window3:Button("Store",function()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0.23,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(-422, 3, -121);
end);

Window3:Button("Secret Place",function()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0.23,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(-2440.78882, 1404.80518, -1918.61902);
end);

Window3:Button("Loading Screen Area",function()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0.23,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(1161.43005, 3.93890762, -109.533279);
end);

Window4:Button("Senpai Hub",function()
end);

Window4:Button("UI : Synta",function()
end);

Window4:Button("Script : Synta",function()
end);

Players = game:GetService('Players')
LocalPlayer = Players.LocalPlayer
PlayerGui = LocalPlayer.PlayerGui
PlayerScript = LocalPlayer.PlayerScripts
StarterPlayer = game.StarterPlayer
StarterPlayerScript = game.StarterPlayer.StarterPlayerScripts
StarterCharacterScript= StarterPlayer.StarterCharacterScripts
StarterGui = game.StarterGui
ReplicatedStorage = game.ReplicatedStorage
ReplicatedFirst = game:GetService('ReplicatedFirst')
Backpack = LocalPlayer.Backpack
Character = LocalPlayer.Character
Humanoid = Character.Humanoid
HumanoidRootPart = Character.HumanoidRootPart
local UserInputService = game:GetService("UserInputService")
speed = 35 -- change this var to change the speed it will increase
onButtonHold = function(inputObject,gameProcessed)
   if inputObject.KeyCode == Enum.KeyCode.LeftShift then
       Humanoid.WalkSpeed = speed
   end
end

onButtonRelease = function(inputObject,gameProcessed)
   if inputObject.KeyCode == Enum.KeyCode.LeftShift then
       Humanoid.WalkSpeed = 16
   end
end

UserInputService.InputBegan:Connect(onButtonHold)
UserInputService.InputEnded:Connect(onButtonRelease)
