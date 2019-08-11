local Selector = {}

Selector.__inherits__ = { System.Windows.Controls.ItemsControl }

Selector.__ctor__ = function(this)
	this.children = {}
end

Selector.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.ItemsControl.LoadXaml(this, xmlNode)
end

createProperties(Selector,{ 
	"SelectedValue",
	"SelectedItem",
	"SelectedIndex",
	"IsSynchronizedWithCurrentItem",
	"SelectedValuePath",
})

createEvents(Selector,{
	"SelectionChanged"
})

System.define("System.Windows.Controls.Selector", Selector)