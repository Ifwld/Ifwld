-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(66, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.172413796, 0, 0.187702283, 0)
Frame.Size = UDim2.new(0, 423, 0, 209)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.929078043, 0, 0, 0)
TextButton.Size = UDim2.new(0, 29, 0, 27)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 25.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(29, 121, 118)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.0236406624, 0, 0.0526315793, 0)
TextButton_2.Size = UDim2.new(0, 115, 0, 40)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "InfiniteCarrot"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

-- Scripts:

local function MWNKZHN_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local ScreenGui = script.Parent.Parent -- Bu kodun ScreenGui'nin içinde bir yerde olduğunu varsayıyoruz
	
	-- Eğer bu script bir TextButton'ın içine konulmuşsa:
	local textButton = script.Parent
	
	textButton.MouseButton1Click:Connect(function()
		ScreenGui:Destroy()
		print("ScreenGui yok edildi!")
	end)
end
coroutine.wrap(MWNKZHN_fake_script)()
local function XNCDNO_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local textButton = script.Parent -- Scriptin parent'ı olan TextButton
	
	local isRunning = false -- Kodun şu an çalışıp çalışmadığını takip eden değişken
	
	textButton.MouseButton1Click:Connect(function()
		-- Eğer kod şu anda çalışmıyorsa (isRunning false ise)
		if not isRunning then
			isRunning = true -- Durumu "çalışıyor" olarak ayarla
			textButton.Text = "AutoCarrot" -- Buton metnini değiştir
			print("AutoCarrot has started, press again to stop")
	
			-- Kodu çalıştıran döngü
			while isRunning do -- isRunning true olduğu sürece çalışacak
				-- Senin mevcut otomatik havuz kodun buraya geliyor
				game.Players.LocalPlayer.Backpack.Carrot.E:FireServer()
			end
			-- Döngü bittiğinde (yani isRunning false olduğunda)
			print("Auto Carrot has been stopped..")
	
			-- Eğer kod şu anda çalışıyorsa (isRunning true ise)
		else
			isRunning = false -- Durumu "durduruldu" olarak ayarla
			print("Otomatik Havuç Durduruluyor...")
		end
	end)
	
	-- Oyun başladığında veya script yüklendiğinde buton metnini ayarla
	textButton.Text = "AutoCarrot"
end
coroutine.wrap(XNCDNO_fake_script)()
