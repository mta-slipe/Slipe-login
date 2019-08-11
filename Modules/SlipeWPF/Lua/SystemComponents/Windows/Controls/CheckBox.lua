local CheckBox = {}

CheckBox.__inherits__ = { System.Windows.Controls.ToggleButton }

CheckBox.__ctor__ = function(this, xmlNode)
	this.children = {}
end

CheckBox.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.ToggleButton.LoadXaml(this, xmlNode)
	this:setIsChecked(xmlNode.attributes["IsChecked"] == true)
end

createProperties(CheckBox, {
	
})


System.define("System.Windows.Controls.CheckBox", CheckBox)