
function createProperties(class, properties)
	for _, property in pairs(properties) do
		class["get" .. property] = function(this)
			return this[property]
		end
		class["set" .. property] = function(this, value)
			this[property] = value
			if this[property .. "Changed"] then
				this[property .. "Changed"](value)
			end
		end
		
		class["add" .. property .. "Changed"] = function(this, value)
			this[property .. "Changed"] = this[property .. "Changed"] + value
		end
	end
end

function createEvents(class, events)
	for _, event in pairs(events) do
		class["add" .. event] = function(this, value)
			this[event] = this[event] + value
			this[event] = this[event] + function(...)
				this["On" .. event](...)
			end
		end
		class["On" .. event] = function(this, value)
			
		end
	end
end