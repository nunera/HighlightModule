function Part(part)
	local h = Instance.new("Highlight")
	h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	h.FillColor = Color3.fromRGB(255,0,0)
	h.FillTransparency = 0.7
	h.OutlineColor = Color3.new(0,0,0)
	h.OutlineTransparency = 0
	h.Parent = part
end

function Folder(folder)
	--folder.descendant added
	folder.DescendantAdded:Connect(function(part)
		Part(part)
	end)
	for _,part in folder:GetChildren() do
		Part(part)
	end
end
