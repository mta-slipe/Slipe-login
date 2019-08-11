local ComboBox = {}

ComboBox.__inherits__ = { System.Windows.Controls.Selector }

ComboBox.__ctor__ = function(this)
	this.children = {}
end

ComboBox.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.Selector.LoadXaml(this, xmlNode)
end

createProperties(ComboBox,{ 
	"ShouldPreserveUserEnteredPrefix",
	"IsEditable",
	"Text",
	"IsReadOnly",
	"SelectionBoxItem",
	"MaxDropDownHeight",
	"SelectionBoxItemStringFormat",
	"StaysOpenOnEdit",
	"IsSelectionBoxHighlighted",
	"IsDropDownOpen",
	"SelectionBoxItemTemplate",
	"HandlesScrolling",
	"HasEffectiveKeyboardFocus",
})

System.define("System.Windows.Controls.ComboBox", ComboBox)