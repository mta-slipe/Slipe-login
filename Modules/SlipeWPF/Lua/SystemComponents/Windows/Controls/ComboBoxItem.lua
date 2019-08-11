local ComboBoxItem = {}

ComboBoxItem.__inherits__ = { System.Windows.Controls.ListBoxItem }

ComboBoxItem.__ctor__ = function(this)
	this.children = {}
end

ComboBoxItem.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.ListBoxItem.LoadXaml(this, xmlNode)
end

createProperties(ComboBoxItem,{ 
	"IsHighlighted",
})

System.define("System.Windows.Controls.ComboBoxItem", ComboBoxItem)