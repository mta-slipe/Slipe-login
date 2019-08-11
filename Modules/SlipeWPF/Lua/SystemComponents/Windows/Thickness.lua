local System = System
local SystemWindows
System.import(
	function(out)
		SystemWindows = System.Windows
	end
)
local Thickness = {	
	__ctor__ = function(this, left, top, right, bottom)
		this._Left = left
		this._Top = top
		this._Right = right
		this._Bottom = bottom
	end,
	
	EqualsObj = function(this, obj)
		if System.is(obj, class) then
			local otherObj = System.cast(class, obj)
			return (op_Equality(this, otherObj))
		end
		return (false)
	end,
	
	Equals = function(this, thickness)
		return (op_Equality(this, thickness))
	end,
	
	GetHashCode = function(this)
		return System.xor(System.xor(System.xor(this._Left:GetHashCode(), this._Top:GetHashCode()), this._Right:GetHashCode()), this._Bottom:GetHashCode())
	end,
	
	ToString = function(this)
		return ""
	end,
	
	ToString1 = function(this, cultureInfo)
		return ""
	end,

	getIsZero = function(this)
		return true
	end,

	getIsUniform = function(this)
		return true
	end,
	
	IsValid = function(this, allowNegative, allowNaN, allowPositiveInfinity, allowNegativeInfinity)
		return true
	end,
	
	IsClose = function(this, thickness)
		return true
	end,
	
	AreClose = function(thickness0, thickness1)
		return IsClose(thickness0, thickness1:__clone__())
	end,
	
	op_Equality = function(t1, t2)
		return true
	end,
	
	op_Inequality = function(t1, t2)
		return (not (op_Equality(t1, t2)))
	end,

	getLeft = function(this)
		return this._Left
	end,

	setLeft = function(this, value)
		this._Left = value
	end,

	getTop = function(this)
		return this._Top
	end,

	setTop = function(this, value)
		this._Top = value
	end,

	getRight = function(this)
		return this._Right
	end,

	setRight = function(this, value)
		this._Right = value
	end,

	getBottom = function(this)
		return this._Bottom
	end,

	setBottom = function(this, value)
		this._Bottom = value
	end,

	getSize = function(this)
		return SystemWindows.Size(this._Left + this._Right, this._Top + this._Bottom)
	end,
}
System.define("System.Windows.Thickness", Thickness)