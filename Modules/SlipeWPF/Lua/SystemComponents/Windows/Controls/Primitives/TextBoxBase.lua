local TextBoxBase = {}

TextBoxBase.__inherits__ = { System.Windows.FrameworkElement }

TextBoxBase.__ctor__ = function(this, xmlNode)
	this.children = {}
end

TextBoxBase.LoadXaml = function(this, xmlNode)
	System.Windows.FrameworkElement.LoadXaml(this, xmlNode)
end

createProperties(TextBoxBase, {
	"HorizontalScrollBarVisibility",
	"HorizontalOffset",
	"ExtentWidth",
	"ExtentHeight",
	"AutoWordSelection",
	"CanUndo",
	"CanRedo",
	"AcceptsTab",
	"IsInactiveSelectionHighlightEnabled",
	"CaretBrush",
	"IsReadOnly",
	"VerticalOffset",
	"IsSelectionActive",
	"IsUndoEnabled",
	"SelectionBrush",
	"SelectionOpacity",
	"SelectionTextBrush",
	"SpellCheck",
	"UndoLimit",
	"AcceptsReturn",
	"VerticalScrollBarVisibility",
	"ViewportHeight",
	"ViewportWidth",
	"IsReadOnlyCaretVisible",
})

System.define("System.Windows.Controls.Primitives.TextBoxBase", TextBoxBase)