-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ScrollingFrame.Parent = ScreenGui
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(66, 0, 0)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.251034439, 0, 0.237864077, 0)
ScrollingFrame.Size = UDim2.new(0, 355, 0, 195)

TextButton.Parent = ScrollingFrame
TextButton.BackgroundColor3 = Color3.fromRGB(66, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.216901407, 0, 0.051282052, 0)
TextButton.Size = UDim2.new(0, 200, 0, 34)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "AUTOCARROT"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 25.000

TextButton_2.Parent = ScrollingFrame
TextButton_2.BackgroundColor3 = Color3.fromRGB(66, 0, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.216901407, 0, 0.451282054, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 35)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "AUTOREBIRTH"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 25.000
