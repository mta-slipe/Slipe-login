-- Generated by CSharp.lua Compiler
local System = System
local SystemNumerics
System.import(function (out)
  SystemNumerics = System.Numerics
end)
System.namespace("Slipe.Client.Elements.Events", function (namespace)
  namespace.class("OnExplosionEventArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, x, y, z, type)
      this.Position = System.default(SystemNumerics.Vector3)
      this.Position = SystemNumerics.Vector3(System.cast(System.Single, x), System.cast(System.Single, y), System.cast(System.Single, z))
      this.Type = System.cast(System.Int32, type)
    end
    return {
      Type = 0,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "Position", 0x6, System.Numerics.Vector3 },
            { "Type", 0x6, System.Int32 }
          },
          methods = {
            { ".ctor", 0x404, nil, System.Object, System.Object, System.Object, System.Object }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)