local Grid = {}

Grid.__inherits__ = { System.Windows.Controls.Panel }

Grid.__ctor__ = function(this)
	this.children = {}
end

Grid.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.Panel.LoadXaml(this, xmlNode)
end

createProperties(Grid,{ 
	"ColumnDefinitions",
	"ShowGridLines",
	"RowDefinitions",
	"VisualChildrenCount",
	"LogicalChildren",
})

System.define("System.Windows.Controls.Grid", Grid)