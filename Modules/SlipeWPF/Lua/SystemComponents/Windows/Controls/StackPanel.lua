local StackPanel = {}

StackPanel.__inherits__ = { System.Windows.Controls.Panel }

StackPanel.__ctor__ = function(this)
	this.children = {}
end

StackPanel.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.Panel.LoadXaml(this, xmlNode)
	
	if xmlNode.attributes["Orientation"] then
		this:setOrientation(xmlNode.attributes["Orientation"] == "Horizontal" and 0 --[[ Orientation.Horizontal ]] or 1 --[[ Orientation.Vertical ]])
	else
		this:setOrientation(1 --[[ Orientation.Vertical ]])
	end
end

createProperties(StackPanel,{ 
	"HorizontalOffset",
	"ViewportHeight",
	"ViewportWidth",
	"ExtentHeight",
	"ExtentWidth",
	"CanVerticallyScroll",
	"CanHorizontallyScroll",
	"Orientation",
	"VerticalOffset",
	"ScrollOwner",
	"LogicalOrientation",
	"HasLogicalOrientation",
})

System.define("System.Windows.Controls.StackPanel", StackPanel)