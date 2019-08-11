local TabItem = {}

TabItem.__inherits__ = { System.Windows.Controls.HeaderedContentControl }

TabItem.__ctor__ = function(this)
	this.children = {}
end

TabItem.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.HeaderedContentControl.LoadXaml(this, xmlNode)
end

createProperties(TabItem, { 
	"IsSelected",
	"TabStripPlacement",
})

System.define("System.Windows.Controls.TabItem", TabItem)