local Workspace = game:GetService("Workspace")
local ChestsFolder = Workspace:WaitForChild("Effects")

-- ==========================================
-- 1. COMMON CHEST CONFIGURATION
-- ==========================================
local commonBillboard = Instance.new("BillboardGui")
commonBillboard.Size = UDim2.new(0, 200, 0, 50)
commonBillboard.StudsOffset = Vector3.new(0, 3, 0)
commonBillboard.AlwaysOnTop = true

local commonLabel = Instance.new("TextLabel")
commonLabel.Size = UDim2.new(1, 0, 1, 0)
commonLabel.BackgroundTransparency = 1
commonLabel.Text = "Common Chest"
commonLabel.TextColor3 = Color3.fromRGB(176, 196, 222) -- Muted Silver/Grey
commonLabel.TextSize = 26
commonLabel.Font = Enum.Font.SourceSansBold
commonLabel.Parent = commonBillboard

local commonStroke = Instance.new("UIStroke")
commonStroke.Thickness = 2
commonStroke.Color = Color3.fromRGB(30, 30, 30)
commonStroke.Parent = commonLabel

-- ==========================================
-- 2. UNCOMMON CHEST CONFIGURATION
-- ==========================================
local uncommonBillboard = Instance.new("BillboardGui")
uncommonBillboard.Size = UDim2.new(0, 200, 0, 50)
uncommonBillboard.StudsOffset = Vector3.new(0, 3, 0)
uncommonBillboard.AlwaysOnTop = true

local uncommonLabel = Instance.new("TextLabel")
uncommonLabel.Size = UDim2.new(1, 0, 1, 0)
uncommonLabel.BackgroundTransparency = 1
uncommonLabel.Text = "Uncommon Chest"
uncommonLabel.TextColor3 = Color3.fromRGB(144, 238, 144) -- Vibrant Green
uncommonLabel.TextSize = 27
uncommonLabel.Font = Enum.Font.SourceSansBold
uncommonLabel.Parent = uncommonBillboard

local uncommonStroke = Instance.new("UIStroke")
uncommonStroke.Thickness = 2
uncommonStroke.Color = Color3.fromRGB(20, 20, 20)
uncommonStroke.Parent = uncommonLabel

-- ==========================================
-- 3. RARE CHEST CONFIGURATION
-- ==========================================
local rareBillboard = Instance.new("BillboardGui")
rareBillboard.Size = UDim2.new(0, 200, 0, 50)
rareBillboard.StudsOffset = Vector3.new(0, 3, 0)
rareBillboard.AlwaysOnTop = true

local rareLabel = Instance.new("TextLabel")
rareLabel.Size = UDim2.new(1, 0, 1, 0)
rareLabel.BackgroundTransparency = 1
rareLabel.Text = "Rare Chest"
rareLabel.TextColor3 = Color3.fromRGB(30, 144, 255) -- Vibrant Blue
rareLabel.TextSize = 28
rareLabel.Font = Enum.Font.SourceSansBold
rareLabel.Parent = rareBillboard

local rareStroke = Instance.new("UIStroke")
rareStroke.Thickness = 2
rareStroke.Color = Color3.fromRGB(10, 20, 40)
rareStroke.Parent = rareLabel

-- ==========================================
-- 4. LEGENDARY CHEST CONFIGURATION
-- ==========================================
local legendaryBillboard = Instance.new("BillboardGui")
legendaryBillboard.Size = UDim2.new(0, 200, 0, 50)
legendaryBillboard.StudsOffset = Vector3.new(0, 3, 0)
legendaryBillboard.AlwaysOnTop = true

local legendaryLabel = Instance.new("TextLabel")
legendaryLabel.Size = UDim2.new(1, 0, 1, 0)
legendaryLabel.BackgroundTransparency = 1
legendaryLabel.Text = "Legendary Chest"
legendaryLabel.TextColor3 = Color3.fromRGB(255, 140, 0) -- Gold / Dark Orange
legendaryLabel.TextSize = 32
legendaryLabel.Font = Enum.Font.SourceSansBold
legendaryLabel.Parent = legendaryBillboard

local legendaryStroke = Instance.new("UIStroke")
legendaryStroke.Thickness = 2.5
legendaryStroke.Color = Color3.fromRGB(45, 20, 0)
legendaryStroke.Parent = legendaryLabel

-- ==========================================
-- 5. MYTHICAL CHEST CONFIGURATION
-- ==========================================
local mythicalBillboard = Instance.new("BillboardGui")
mythicalBillboard.Size = UDim2.new(0, 200, 0, 50)
mythicalBillboard.StudsOffset = Vector3.new(0, 3, 0)
mythicalBillboard.AlwaysOnTop = true

local mythicalLabel = Instance.new("TextLabel")
mythicalLabel.Size = UDim2.new(1, 0, 1, 0)
mythicalLabel.BackgroundTransparency = 1
mythicalLabel.Text = "Mythical Chest"
mythicalLabel.TextColor3 = Color3.fromRGB(208, 32, 144) -- Deep Purple/Magenta
mythicalLabel.TextSize = 34
mythicalLabel.Font = Enum.Font.SourceSansBold
mythicalLabel.Parent = mythicalBillboard

local mythicalStroke = Instance.new("UIStroke")
mythicalStroke.Thickness = 2.5
mythicalStroke.Color = Color3.fromRGB(35, 5, 25)
mythicalStroke.Parent = mythicalLabel

-- ==========================================
-- FUNCTIONS
-- ==========================================

local function RefreshEspFunc()
	local Chests = ChestsFolder:GetChildren()

	for i = 1, #Chests do
		local currentChest = Chests[i]
		local IsAChest = false

		for _, FindTop in ipairs(currentChest:GetDescendants()) do
			if FindTop.Name == "Top" then

				for _, RandomNumber in ipairs(FindTop:GetDescendants()) do
					-- Check if parent already has a BillboardGui to prevent duplication
					local FindBillBoard = RandomNumber.Parent:FindFirstChildOfClass("BillboardGui")
					if FindBillBoard then
						IsAChest = true
						break
					end

					-- Check name matches and assign UI clones
					-- if RandomNumber.Name == "Meshes/ChestYes_Grey.001Weld" then
					-- 	local CommonChest = commonBillboard:Clone()
					-- 	CommonChest.Parent = RandomNumber.Parent 
					-- 	IsAChest = true
					-- 	break
					-- elseif RandomNumber.Name == "Meshes/UCC_Brown.002Weld" then
					-- 	local UncommonChestClone = uncommonBillboard:Clone()
					-- 	UncommonChestClone.Parent = RandomNumber.Parent 
					-- 	IsAChest = true
					-- 	break
					-- else
                    -- if RandomNumber.Name == "Meshes/bLUEchEST_Blue.001 (1)Weld" then
					-- 	local RareChestClone = rareBillboard:Clone()
					-- 	RareChestClone.Parent = RandomNumber.Parent 
					-- 	IsAChest = true
					-- 	break
						
					-- else
                    if RandomNumber.Name == "Meshes/LegendaryChest3_Brown.003Weld" then
						local LegendaryChestClone = legendaryBillboard:Clone()
						LegendaryChestClone.Parent = RandomNumber.Parent 
						IsAChest = true
						break
						
					elseif RandomNumber.Name == "Meshes/MythicalChest3_Cyan.001Weld" then
						local MythicalChestClone = mythicalBillboard:Clone()
						MythicalChestClone.Parent = RandomNumber.Parent 
						IsAChest = true
						break
						

					end
				end
			end

			if IsAChest then 
				break -- Break out of the FindTop loop since we handled this chest
			end
		end
	end
end

-- Infinite loop handler placed OUTSIDE the function to avoid stack overflow crashes
task.spawn(function()
	while true do
		RefreshEspFunc()
		task.wait(0.2)
	end
end)
