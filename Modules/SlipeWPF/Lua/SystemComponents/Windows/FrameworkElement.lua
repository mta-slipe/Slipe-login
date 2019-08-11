local FrameworkElement = {}

FrameworkElement.__inherits__ = { System.Windows.UIElement }

FrameworkElement.__ctor__ = function(this)
	this.children = {}
end

FrameworkElement.LoadXaml = function(this, xmlNode)
	if xmlNode.attributes["Margin"] then
		local marginSplits = split(xmlNode.attributes["Margin"], ",")
		this:setMargin(System.Windows.Thickness(tonumber(marginSplits[1]), tonumber(marginSplits[2]), tonumber(marginSplits[3]), tonumber(marginSplits[4])))
	else
		this:setMargin(System.Windows.Thickness(0, 0, 0, 0))
	end

	if xmlNode.attributes["Width"] then
		this:setWidth(tonumber(xmlNode.attributes["Width"]))
	else
		this:setWidth(100)
	end

	if xmlNode.attributes["Height"] then
		this:setHeight(tonumber(xmlNode.attributes["Height"]))
	else
		this:setHeight(18)
	end
	
	if xmlNode.attributes["x:Name"] then
		this:setName(xmlNode.attributes["x:Name"])
	end
end

createProperties(FrameworkElement,{ 
	"Language",
	"LayoutTransform",
	"Margin",
	"MinWidth",
	"MaxWidth",
	"MinHeight",
	"IsLoaded",
	"MaxHeight",
	"IsInitialized",
	"ContextMenu",
	"HorizontalAlignment",
	"Height",
	"ForceCursor",
	"FocusVisualStyle",
	"FlowDirection",
	"DataContext",
	"Cursor",
	"BindingGroup",
	"Name",
	"InputScope",
	"OverridesDefaultStyle",
	"ActualHeight",
	"Resources",
	"Style",
	"Tag",
	"TemplatedParent",
	"ToolTip",
	"Triggers",
	"UseLayoutRounding",
	"VerticalAlignment",
	"Width",
	"ActualWidth",
	"Parent",
	"VisualChildrenCount",
	"object DefaultStyleKey",
	"InheritanceBehavior",
	"LogicalChildren",
	"x:Name",
})

createEvents(FrameworkElement, {
	"ToolTipClosing",
	"ToolTipOpening",
	"Unloaded",
	"DataContextChanged",
	"SizeChanged",
	"RequestBringIntoView",
	"SourceUpdated",
	"TargetUpdated",
	"Loaded",
	"Initialized",
	"ContextMenuClosing",
	"ContextMenuOpening",
})

System.define("System.Windows.FrameworkElement", FrameworkElement)