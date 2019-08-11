local Uri = {}

Uri.__ctor__ = function(this, uri1, uri2)
	this.relative = false
	this.escape = true
	if uri2 == nil then
		this.uri = uri1
	else
		if type(uri2) == "boolean" then
			this.uri = uri1
			this.escape = not uri2
		elseif type(uri2) == "number" then
			this.uri = uri1
			this.relative = uri2 == 2
		elseif type(uri2) == "string"  then
			this.uri = uri1 .. "/" .. uri2
		elseif type(uri2) == "table"  then
			this.uri = uri1 .. "/" .. uri2.uri
		end
	end
end

Uri.ToString = function(this)
	return this.uri
end

System.define("System.Uri", Uri)