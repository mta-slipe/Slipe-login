local ItemsControl = {}

ItemsControl.__inherits__ = { System.Windows.Controls.Control }

ItemsControl.__ctor__ = function(this)
	this.children = {}
end

ItemsControl.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.Control.LoadXaml(this, xmlNode)
end

createProperties(ItemsControl,{ 
	"IsTextSearchEnabled",
	"DisplayMemberPath",
	"GroupStyle",
	"GroupStyleSelector",
	"HasItems",
	"IsGrouping",
	"IsTextSearchCaseSensitive",
	"ItemBindingGroup",
	"ItemTemplate",
	"ItemContainerStyle",
	"ItemContainerStyleSelector",
	"Items",
	"ItemsPanel",
	"ItemsSource",
	"ItemStringFormat",
	"ItemTemplateSelector",
	"ItemContainerGenerator",
	"AlternationCount",
	"LogicalChildren",
})

System.define("System.Windows.Controls.ItemsControl", ItemsControl)