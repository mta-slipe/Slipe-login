-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientDx
local SlipeMtaDefinitions
local SlipeSharedUtilities
local SystemNumerics
System.import(function (out)
  SlipeClientDx = Slipe.Client.Dx
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedUtilities = Slipe.Shared.Utilities
  SystemNumerics = System.Numerics
end)
System.namespace("Slipe.Client.Dx", function (namespace)
  namespace.class("Dx3DMaterialLine", function (namespace)
    local Draw, internal, __ctor1__, __ctor2__, __ctor3__
    internal = function (this)
      this.FaceToward = System.default(SystemNumerics.Vector3)
    end
    -- <summary>
    -- Create a material line from all the parameters
    -- </summary>
    __ctor1__ = function (this, startPos, endPos, material, width, color, faceToward, postGUI)
      internal(this)
      SlipeClientDx.Dx3DLine.__ctor__[1](this, startPos:__clone__(), endPos:__clone__(), color, width, postGUI)
      this.Material = material
      this.FaceToward = faceToward:__clone__()
    end
    -- <summary>
    -- Create a material line that always faces the camera
    -- </summary>
    __ctor2__ = function (this, startPos, endPos, material, width, color)
      __ctor1__(this, startPos:__clone__(), endPos:__clone__(), material, width, color, SystemNumerics.Vector3.getZero(), false)
    end
    -- <summary>
    -- Create a material line with white as the base color
    -- </summary>
    __ctor3__ = function (this, startPos, endPos, material, width)
      __ctor2__(this, startPos:__clone__(), endPos:__clone__(), material, width, SlipeSharedUtilities.Color.getWhite())
    end
    -- <summary>
    -- Draw this material line
    -- </summary>
    Draw = function (this, source, eventArgs)
      if SystemNumerics.Vector3.op_Equality(this.FaceToward:__clone__(), SystemNumerics.Vector3.getZero()) then
        local default = this.Material
        if default ~= nil then
          default = default:getMaterialElement()
        end
        return SlipeMtaDefinitions.MtaClient.DxDrawMaterialLine3D(this:getStartPosition().X, this:getStartPosition().Y, this:getStartPosition().Z, this:getEndPosition().X, this:getEndPosition().Y, this:getEndPosition().Z, default, this.Width, this.Color:getHex(), this.PostGUI)
      else
        local default = this.Material
        if default ~= nil then
          default = default:getMaterialElement()
        end
        return SlipeMtaDefinitions.MtaClient.DxDrawMaterialLine3D(this:getStartPosition().X, this:getStartPosition().Y, this:getStartPosition().Z, this:getEndPosition().X, this:getEndPosition().Y, this:getEndPosition().Z, default, this.Width, this.Color:getHex(), this.PostGUI, this.FaceToward:__clone__().X, this.FaceToward:__clone__().Y, this.FaceToward:__clone__().Z)
      end
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Client.Dx.Dx3DLine,
          out.Slipe.Client.Dx.IDrawable
        }
      end,
      Draw = Draw,
      __ctor__ = {
        __ctor1__,
        __ctor2__,
        __ctor3__
      },
      __metadata__ = function (out)
        return {
          properties = {
            { "FaceToward", 0x6, System.Numerics.Vector3 },
            { "Material", 0x6, out.Slipe.Client.Dx.Material }
          },
          methods = {
            { ".ctor", 0x706, __ctor1__, System.Numerics.Vector3, System.Numerics.Vector3, out.Slipe.Client.Dx.Material, System.Single, out.Slipe.Shared.Utilities.Color, System.Numerics.Vector3, System.Boolean },
            { ".ctor", 0x506, __ctor2__, System.Numerics.Vector3, System.Numerics.Vector3, out.Slipe.Client.Dx.Material, System.Single, out.Slipe.Shared.Utilities.Color },
            { ".ctor", 0x406, __ctor3__, System.Numerics.Vector3, System.Numerics.Vector3, out.Slipe.Client.Dx.Material, System.Single },
            { "Draw", 0x286, Draw, out.Slipe.Client.Elements.RootElement, out.Slipe.Client.Rendering.Events.OnRenderEventArgs, System.Boolean }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)