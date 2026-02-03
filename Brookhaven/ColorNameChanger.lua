return function(cor)
        local args = {
	"PickingRPNameColor",
	Color3.new(cor)
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eColo1r"):FireServer(unpack(args))
end
