local TextBlock = {}

TextBlock.__inherits__ = { System.Windows.FrameworkElement }

TextBlock.__ctor__ = function(this, xmlNode)
	this.children = {}
end

TextBlock.LoadXaml = function(this, xmlNode)
	System.Windows.FrameworkElement.LoadXaml(this, xmlNode)
	this:setText(xmlNode.attributes["Text"])
end

createProperties(TextBlock, {
	"FontStyle",
	"FontStretch",
	"FontSize",
	"FontFamily",
	"BreakAfter",
	"ContentEnd",
	"Typography",
	"BreakBefore",
	"FontWeight",
	"ContentStart",
	"Foreground",
	"TextEffects",
	"Inlines",
	"IsHyphenationEnabled",
	"LineHeight",
	"LineStackingStrategy",
	"Padding",
	"Text",
	"TextAlignment",
	"TextDecorations",
	"BaselineOffset",
	"TextTrimming",
	"TextWrapping",
	"Background",
	"HostedElementsCore",
	"VisualChildrenCount",
	"LogicalChildren",
})

System.define("System.Windows.Controls.TextBlock", TextBlock)