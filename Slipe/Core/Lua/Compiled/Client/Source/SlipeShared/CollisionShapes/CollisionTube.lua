-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
local SlipeCollisionShapes
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeCollisionShapes = Slipe.Shared.CollisionShapes
end)
System.namespace("Slipe.Shared.CollisionShapes", function (namespace)
  -- <summary>
  -- This is a shape that has a position and a 2D (X/Y) radius and a height.
  -- </summary>
  namespace.class("CollisionTube", function (namespace)
    local __ctor1__, __ctor2__
    __ctor1__ = function (this, element)
      SlipeCollisionShapes.CollisionShape.__ctor__(this, element)
    end
    -- <summary>
    -- Creates a collision tube from a position, radius and height
    -- </summary>
    __ctor2__ = function (this, position, radius, height)
      __ctor1__(this, SlipeMtaDefinitions.MtaShared.CreateColTube(position.X, position.Y, position.Z, radius, height))
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Shared.CollisionShapes.CollisionShape
        }
      end,
      __ctor__ = {
        __ctor1__,
        __ctor2__
      },
      __metadata__ = function (out)
        return {
          methods = {
            { ".ctor", 0x106, __ctor1__, out.Slipe.MtaDefinitions.MtaElement },
            { ".ctor", 0x306, __ctor2__, System.Numerics.Vector3, System.Single, System.Single }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
