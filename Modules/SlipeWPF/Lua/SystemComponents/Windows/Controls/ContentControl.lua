local ContentControl = {}

ContentControl.__inherits__ = { System.Windows.Controls.Control }

ContentControl.__ctor__ = function(this)
	this.children = {}
end

ContentControl.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.Control.LoadXaml(this, xmlNode)
end

createProperties(ContentControl,{ 
	"ContentTemplateSelector",
	"ContentTemplate",
	"ContentStringFormat",
	"HasContent",
	"Content",
	"LogicalChildren",
})

System.define("System.Windows.Controls.ContentControl", ContentControl)