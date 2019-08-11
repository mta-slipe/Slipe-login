local RadioButton = {}

RadioButton.__inherits__ = { System.Windows.Controls.ToggleButton }

RadioButton.__ctor__ = function(this, xmlNode)
	this.children = {}
end

RadioButton.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.ToggleButton.LoadXaml(this, xmlNode)
	this:setIsChecked(xmlNode.attributes["IsChecked"] == true)
end

createProperties(RadioButton, {
	"GroupName"
})

System.define("System.Windows.Controls.RadioButton", RadioButton)