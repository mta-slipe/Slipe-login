-- Generated by CSharp.lua Compiler
local System = System
local SlipeSharedElements
local SlipeSharedPeds
System.import(function (out)
  SlipeSharedElements = Slipe.Shared.Elements
  SlipeSharedPeds = Slipe.Shared.Peds
end)
System.namespace("Slipe.Shared.Pickups.Events", function (namespace)
  namespace.class("OnLeaveArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, leavePlayer, matchingDimension)
      this.Player = SlipeSharedElements.ElementManager.getInstance():GetElement(leavePlayer, SlipeSharedPeds.SharedPed)
      this.IsDimensionMatching = System.cast(System.Boolean, matchingDimension)
    end
    return {
      IsDimensionMatching = false,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "IsDimensionMatching", 0x6, System.Boolean },
            { "Player", 0x6, out.Slipe.Shared.Peds.SharedPed }
          },
          methods = {
            { ".ctor", 0x204, nil, out.Slipe.MtaDefinitions.MtaElement, System.Object }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
