local Button = {}

Button.__inherits__ = { System.Windows.Controls.Primitives.ButtonBase }

Button.__ctor__ = function(this, xmlNode)
	this.children = {}
end

Button.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.Primitives.ButtonBase.LoadXaml(this, xmlNode)
	this:setContent(xmlNode.attributes["Content"])
end

createProperties(Button, {
	"IsCancel",
	"IsDefault",
	"IsDefaulted",
})

System.define("System.Windows.Controls.Button", Button)