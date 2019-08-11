local ListBoxItem = {}

ListBoxItem.__inherits__ = { System.Windows.Controls.ContentControl }

ListBoxItem.__ctor__ = function(this)
	this.children = {}
end

ListBoxItem.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.ContentControl.LoadXaml(this, xmlNode)
end

createProperties(ListBoxItem,{ 
	"IsSelected",
})

System.define("System.Windows.Controls.ListBoxItem", ListBoxItem)