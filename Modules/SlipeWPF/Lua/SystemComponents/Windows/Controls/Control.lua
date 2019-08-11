local Control = {}

Control.__inherits__ = { System.Windows.FrameworkElement }

Control.__ctor__ = function(this)
	this.children = {}
end

Control.LoadXaml = function(this, xmlNode)
	System.Windows.FrameworkElement.LoadXaml(this, xmlNode)
end

createProperties(Control,{ 
	"FontWeight",
	"FontStyle",
	"FontStretch",
	"FontSize",
	"FontFamily",
	"BorderThickness",
	"BorderBrush",
	"Padding",
	"HorizontalContentAlignment",
	"IsTabStop",
	"TabIndex",
	"Template",
	"VerticalContentAlignment",
	"Foreground",
	"Background",
	"HandlesScrolling",
})

System.define("System.Windows.Controls.Control", Control)