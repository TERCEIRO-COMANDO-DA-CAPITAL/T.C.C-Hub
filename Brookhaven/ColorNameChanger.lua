return function(r,g,b)
        local args = {
	"PickingRPNameColor",
	Color3.new(r,g,b)
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eColo1r"):FireServer(unpack(args))
end
