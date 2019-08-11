local HeaderedContentControl = {}

HeaderedContentControl.__inherits__ = { System.Windows.Controls.ContentControl }

HeaderedContentControl.__ctor__ = function(this)
	this.children = {}
end

HeaderedContentControl.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.ContentControl.LoadXaml(this, xmlNode)
end

createProperties(HeaderedContentControl,{ 
	"HeaderTemplate",
	"HeaderStringFormat",
	"HeaderTemplateSelector",
	"Header",
	"HasHeader",
	"LogicalChildren",
})

System.define("System.Windows.Controls.HeaderedContentControl", HeaderedContentControl)