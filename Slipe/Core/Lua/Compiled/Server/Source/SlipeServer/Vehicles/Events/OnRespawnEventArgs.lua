-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Server.Vehicles.Events", function (namespace)
  namespace.class("OnRespawnEventArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, exploded)
      this.IsExploded = System.cast(System.Boolean, exploded)
    end
    return {
      IsExploded = false,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "IsExploded", 0x6, System.Boolean }
          },
          methods = {
            { ".ctor", 0x104, nil, System.Object }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
