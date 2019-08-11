local Window = {}

Window.__inherits__ = { System.Windows.Controls.ContentControl }

Window.__ctor__ = function(this, xmlNode)
	this.children = {}
end

Window.LoadXaml = function(this, xmlNode)
	this:setWidth(tonumber(xmlNode.attributes["Width"]))
	this:setHeight(tonumber(xmlNode.attributes["Height"]))
	this:setTitle(xmlNode.attributes["Title"])
end

createProperties(Window, {
	"SizeToContent",
	"ShowInTaskbar",
	"ShowActivated",
	"RestoreBounds",
	"ResizeMode",
	"AllowsTransparency",
	"OwnedWindows",
	"Left",
	"DialogResult",
	"TaskbarItemInfo",
	"Owner",
	"Title",
	"IsActive",
	"Topmost",
	"WindowStartupLocation",
	"WindowState",
	"WindowStyle",
	"Icon",
	"Top",
	"LogicalChildren",
})

System.define("System.Windows.Window", Window)