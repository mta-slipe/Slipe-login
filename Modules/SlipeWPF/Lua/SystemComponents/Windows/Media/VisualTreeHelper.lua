local VisualTreeHelper = {}

VisualTreeHelper.GetChildrenCount = function(element)
	return #element.children
end

VisualTreeHelper.GetChild = function(element, i)
	return element.children[i + 1]
end

System.define("System.Windows.Media.VisualTreeHelper", VisualTreeHelper)