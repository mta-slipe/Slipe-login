local TextBox = {}

TextBox.__inherits__ = { System.Windows.Controls.Primitives.TextBoxBase }

TextBox.__ctor__ = function(this, xmlNode)
	this.children = {}
end

TextBox.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.Primitives.TextBoxBase.LoadXaml(this, xmlNode)
	this:setText(xmlNode.attributes["Text"] and xmlNode.attributes["Text"] or "")
end

createProperties(TextBox, {
	"LineCount",
	"MaxLength",
	"MaxLines",
	"MinLines",
	"SelectedText",
	"TextAlignment",
	"SelectionStart",
	"Text",
	"CharacterCasing",
	"TextDecorations",
	"SelectionLength",
	"CaretIndex",
	"Typography",
	"TextWrapping",
	"LogicalChildren",
})

System.define("System.Windows.Controls.TextBox", TextBox)