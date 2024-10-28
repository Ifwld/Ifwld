-- Rayfield -do not touch-

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- The UI

local Window = Rayfield:CreateWindow({
   Name = "iwakuralain | script hub",
   LoadingTitle = "made by ifwld",
   LoadingSubtitle = "hi",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "sussy baka key system",
      Subtitle = "hi",
      Note = "ask key on discord",
      FileName = "ifwld-key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/SUAZM7in"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

-- Tabs
local MainTab = Window:CreateTab("Main", 4483362458) -- Title, Image


local VisualsTab = Window:CreateTab("Visuals",4483362458) -- Title, Image


local MiscTab = Window:CreateTab("Misc", 4483362458) -- Title, Image


-- Buttons

-- ESP
local Button = MiscTab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end,
 })


local Button = VisualsTab:CreateButton({
   Name = "ESP",
   Callback = function()
   -- The function that takes place when the button is pressed
   local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
   end,
})

-- Hitbox Expander
local Button = VisualsTab:CreateButton({
    Name = "Hitbox Expander",
    Callback = function()
        local ScreenGui = Instance.new("ScreenGui")
        local main = Instance.new("Frame")
        local label = Instance.new("TextLabel")
        local Hitbox = 
        Instance.new("TextButton")
         
        ScreenGui.Parent = game.CoreGui
         
        main.Name = "main"
        main.Parent = ScreenGui
        main.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        main.Position = UDim2.new(0.40427351, 0, 0.34591195, 0)
        main.Size = UDim2.new(0, 100, 0, 100)
        main.Active = true
        main.Draggable = true
         
        label.Name = "label"
        label.Parent = main
        label.BackgroundColor3 = Color3.fromRGB(139,0,0)
        label.Size = UDim2.new(0, 100, 0, 20)
        label.Font = Enum.Font.SourceSans
        label.Text = "Hitbox Gui"
        label.TextColor3 = Color3.fromRGB(0, 0, 0)
        label.TextScaled = true
        label.TextSize = 5.000
        label.TextWrapped = true
         
        Hitbox.Name = "Hitbox"
        Hitbox.Parent = main
        Hitbox.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
        Hitbox.Position = UDim2.new(0.114285722, 0, 0.372448981, 0)
        Hitbox.Size = UDim2.new(0, 90
        , 0, 40)
        Hitbox.Font = Enum.Font.SourceSans
        Hitbox.Text = "Hitbox"
        Hitbox.TextColor3 = Color3.fromRGB(0, 0, 0)
        Hitbox.TextSize = 40.000
        Hitbox.MouseButton1Down:connect(function()
            _G.HeadSize = 20
         
            _G.Disabled = true
         
         
        game:GetService('RunService').RenderStepped:connect(function()
                if _G.Disabled then
                    for i,v in next, game:GetService('Players'):GetPlayers() do
                        if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                            pcall(function()
                                v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                                v.Character.HumanoidRootPart.Transparency = 0.7
                                v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
                                v.Character.HumanoidRootPart.Material = "Neon"
                                v.Character.HumanoidRootPart.CanCollide = false
                            end)
                        end
                    end
                end
            end)
        end)
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Discord Server",
    Callback = function()
   print("https://discord.gg/DVdTeNZcvd")
    end,
 })
