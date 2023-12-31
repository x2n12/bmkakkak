-- Create a new ImageLabel
local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(0, 200, 0, 200) -- Set the size of the ImageLabel
imageLabel.Position = UDim2.new(0.5, -100, 0.5, -100) -- Set the position
imageLabel.AnchorPoint = Vector2.new(0.5, 0.5) -- Set the anchor point to the center
imageLabel.BackgroundTransparency = 1 -- Make the background transparent

-- Set the image URL or AssetId
local imageUrl = "rbxassetid://1234567890" -- Replace with your image AssetId or URL
imageLabel.Image = imageUrl

-- Parent the ImageLabel to the player's PlayerGui
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
imageLabel.Parent = playerGui

-- Function to handle when the image is clicked (optional)
local function onImageClick()
    print("Image clicked!")
end

-- Connect the click event to the function
imageLabel.MouseButton1Click:Connect(onImageClick)
