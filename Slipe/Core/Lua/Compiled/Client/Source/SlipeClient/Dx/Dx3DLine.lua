-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientHelpers
local SlipeMtaDefinitions
local SlipeSharedUtilities
local SystemNumerics
System.import(function (out)
  SlipeClientHelpers = Slipe.Client.Helpers
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedUtilities = Slipe.Shared.Utilities
  SystemNumerics = System.Numerics
end)
System.namespace("Slipe.Client.Dx", function (namespace)
  namespace.class("Dx3DLine", function (namespace)
    local getStartPosition, setStartPosition, getEndPosition, setEndPosition, Draw, Update, internal, __ctor1__, 
    __ctor2__, __ctor3__
    internal = function (this)
      this.relativeEndPosition = System.default(SystemNumerics.Vector3)
      this.startPos = System.default(SystemNumerics.Vector3)
      this.endPos = System.default(SystemNumerics.Vector3)
    end
    -- <summary>
    -- Create a new 3D line
    -- </summary>
    __ctor1__ = function (this, startPos, endPos, color, width, postGUI)
      internal(this)
      SlipeClientHelpers.LazyAttachableObject.__ctor__(this)
      setStartPosition(this, startPos:__clone__())
      setEndPosition(this, endPos:__clone__())
      this.relativeEndPosition = SystemNumerics.Vector3.op_Subtraction(endPos, startPos)
      this.Color = color
      this.Width = width
      this.PostGUI = postGUI
    end
    -- <summary>
    -- Create a red line
    -- </summary>
    __ctor2__ = function (this, startPos, endPos)
      __ctor1__(this, startPos:__clone__(), endPos:__clone__(), SlipeSharedUtilities.Color.getRed(), 1, false)
    end
    -- <summary>
    -- Create a 3D line attached to a certain object
    -- </summary>
    __ctor3__ = function (this, attachedTo, relativeEndPos, offset)
      __ctor2__(this, SystemNumerics.Vector3.getZero(), relativeEndPos:__clone__())
      this:AttachTo(attachedTo, offset:__clone__())
    end
    getStartPosition = function (this)
      this:Update()
      return this.startPos:__clone__()
    end
    setStartPosition = function (this, value)
      this.startPos = value:__clone__()
    end
    getEndPosition = function (this)
      this:Update()
      return this.endPos:__clone__()
    end
    setEndPosition = function (this, value)
      this.endPos = value:__clone__()
    end
    -- <summary>
    -- Draw this line
    -- </summary>
    Draw = function (this, source, eventArgs)
      if this.Visible then
        return SlipeMtaDefinitions.MtaClient.DxDrawLine3D(getStartPosition(this).X, getStartPosition(this).Y, getStartPosition(this).Z, getEndPosition(this).X, getEndPosition(this).Y, getEndPosition(this).Z, this.Color:getHex(), this.Width, this.PostGUI)
      end
      return false
    end
    Update = function (this, source, eventArgs)
      if this:getIsAttached() then
        this.startPos = SystemNumerics.Vector3.op_Addition(this:getToAttached():getPosition(), this.Offset:__clone__():getTranslation())
        this.endPos = SystemNumerics.Vector3.Transform(this.relativeEndPosition, SystemNumerics.Matrix4x4.op_Multiply(this:getToAttached():getMatrix(), this.Offset:__clone__()))
      end
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Client.Helpers.LazyAttachableObject,
          out.Slipe.Client.Dx.IDrawable
        }
      end,
      getStartPosition = getStartPosition,
      setStartPosition = setStartPosition,
      getEndPosition = getEndPosition,
      setEndPosition = setEndPosition,
      Width = 0,
      PostGUI = false,
      Visible = false,
      Draw = Draw,
      Update = Update,
      __ctor__ = {
        __ctor1__,
        __ctor2__,
        __ctor3__
      },
      __metadata__ = function (out)
        return {
          fields = {
            { "endPos", 0x3, System.Numerics.Vector3 },
            { "relativeEndPosition", 0x3, System.Numerics.Vector3 },
            { "startPos", 0x3, System.Numerics.Vector3 }
          },
          properties = {
            { "Color", 0x6, out.Slipe.Shared.Utilities.Color },
            { "EndPosition", 0x106, System.Numerics.Vector3, getEndPosition, setEndPosition },
            { "PostGUI", 0x6, System.Boolean },
            { "StartPosition", 0x106, System.Numerics.Vector3, getStartPosition, setStartPosition },
            { "Visible", 0x6, System.Boolean },
            { "Width", 0x6, System.Single }
          },
          methods = {
            { ".ctor", 0x506, __ctor1__, System.Numerics.Vector3, System.Numerics.Vector3, out.Slipe.Shared.Utilities.Color, System.Single, System.Boolean },
            { ".ctor", 0x206, __ctor2__, System.Numerics.Vector3, System.Numerics.Vector3 },
            { ".ctor", 0x306, __ctor3__, out.Slipe.Shared.Elements.PhysicalElement, System.Numerics.Vector3, System.Numerics.Matrix4x4 },
            { "Draw", 0x286, Draw, out.Slipe.Client.Elements.RootElement, out.Slipe.Client.Rendering.Events.OnRenderEventArgs, System.Boolean },
            { "Update", 0x203, Update, out.Slipe.Client.Elements.RootElement, out.Slipe.Client.Game.Events.OnUpdateEventArgs }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
