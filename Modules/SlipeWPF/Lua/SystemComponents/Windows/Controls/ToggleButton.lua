local ToggleButton = {}

ToggleButton.__inherits__ = { System.Windows.Controls.Primitives.ButtonBase }

ToggleButton.__ctor__ = function(this, xmlNode)
	this.children = {}
end

ToggleButton.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.Primitives.ButtonBase.LoadXaml(this, xmlNode)
	this:setContent(xmlNode.attributes["Content"])
end

createProperties(ToggleButton, {
	"IsThreeState",
	"IsChecked",
})

createEvents(ToggleButton, {
	"Checked",
})

System.define("System.Windows.Controls.ToggleButton", ToggleButton)