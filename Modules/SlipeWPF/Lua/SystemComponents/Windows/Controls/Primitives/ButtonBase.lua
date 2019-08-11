local ButtonBase = {}

ButtonBase.__inherits__ = { System.Windows.Controls.ContentControl }

ButtonBase.__ctor__ = function(this, xmlNode)
	this.children = {}
end

ButtonBase.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.ContentControl.LoadXaml(this, xmlNode)
end

createProperties(ButtonBase, {
	"CommandTarget",
	"CommandParameter",
	"Command",
	"ClickMode",
	"IsEnabledCore",
})

createEvents(ButtonBase, {
	"Click",
})

System.define("System.Windows.Controls.Primitives.ButtonBase", ButtonBase)