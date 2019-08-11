local ListBox = {}

ListBox.__inherits__ = { System.Windows.Controls.Selector }

ListBox.__ctor__ = function(this)
	this.children = {}
end

ListBox.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.Selector.LoadXaml(this, xmlNode)
end

createProperties(ListBox,{ 
	"SelectedItems",
	"SelectionMode",
	"AnchorItem",
	"HandlesScrolling",
})

System.define("System.Windows.Controls.ListBox", ListBox)