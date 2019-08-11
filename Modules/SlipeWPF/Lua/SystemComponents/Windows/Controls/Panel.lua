local Panel = {}

Panel.__inherits__ = { System.Windows.FrameworkElement }

Panel.__ctor__ = function(this)
	this.children = {}
end

Panel.LoadXaml = function(this, xmlNode)
	System.Windows.FrameworkElement.LoadXaml(this, xmlNode)
end

createProperties(Panel,{ 
	"HasLogicalOrientationPublic",
	"LogicalOrientationPublic",
	"IsItemsHost",
	"Children",
	"Background",
	"VisualChildrenCount",
	"InternalChildren",
	"LogicalChildren",
	"LogicalOrientation",
	"HasLogicalOrientation",
})

System.define("System.Windows.Controls.Panel", Panel)