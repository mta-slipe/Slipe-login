local Application = {}

local controlNamespaces = {
	System.Windows,
	System.Windows.Controls
}

Application.RegisterControlNamespace = function(namespace)
	controlNamespaces[#controlNamespaces + 1] = namespace
end

local function CreateWpfElement(xmlElement, parent)
	local name = xmlElement:getName()
	local controlClass
	for _, namespace in pairs(controlNamespaces) do
		if namespace[name] ~= nil then
			controlClass = namespace[name]
			break
		end
	end
	if controlClass == nil then
		System.throw(System.Exception(name .. " is an unsupported WPF element"))
	end
	local wpfElement = controlClass()
	parent.children[#parent.children + 1] = wpfElement
	wpfElement:setParent(parent)
	wpfElement:LoadXaml(xmlElement)
	for key, value in pairs(xmlElement.attributes) do
		if (key ~= "values") then
			if wpfElement["set" .. key] ~= nil then
				if wpfElement["get" .. key] == nil or wpfElement["get" .. key](wpfElement) == nil then
					wpfElement["set" .. key](wpfElement, value)
				end
			else
				outputDebugString(key .. " is an unsupported WPF attribute on " .. name)
				-- wpfElement[key] = value
			end
		end
	end

	return wpfElement
end

local function getXamlFilePath(uri)
	local uristring = uri:ToString()
	local splits = split(uristring, ";")
	local project = splits[1]:sub(2)
	local projectPath = projectPaths[project]
	local path = splits[2]:gsub("component/", "")
	print(projectPath)
	return projectPath .. "/" .. path
end

local function CreateWpfNodes(component, xmlElement, i, parent)
	local wpfElement = CreateWpfElement(xmlElement, parent)
	if (xmlElement:GetAttribute("x:Name") ~= nil) then
		component:Connect(i, wpfElement)
		i = i + 1
	end
	
	local children = xmlElement.children

	if children == nil or #children == 0 then
		return i
	end

	for _, child in ipairs(children) do
		i = CreateWpfNodes(component, child, i, wpfElement)
	end
	
	return i
end

local function CreateRootWpfNode(wpfElement, xmlElement, i)	
	wpfElement:LoadXaml(xmlElement)
	
	local children = xmlElement.children
	if children == nil or #children == 0 then
		return i
	end

	for _, child in ipairs(children) do
		i = CreateWpfNodes(wpfElement, child, i, wpfElement)
	end
	
	return i
end

Application.LoadComponent = function(component, uri)
	local path = getXamlFilePath(uri)

	local document = System.Xml.XmlDocument();
	document:Load(path);
	
	CreateRootWpfNode(component, document:getFirstChild(), 1)
end


System.define("System.Windows.Application", Application)