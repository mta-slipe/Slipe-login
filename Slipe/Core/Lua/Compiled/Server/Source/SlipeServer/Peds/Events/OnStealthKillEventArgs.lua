-- Generated by CSharp.lua Compiler
local System = System
local SlipeServerPeds
local SlipeSharedElements
System.import(function (out)
  SlipeServerPeds = Slipe.Server.Peds
  SlipeSharedElements = Slipe.Shared.Elements
end)
System.namespace("Slipe.Server.Peds.Events", function (namespace)
  namespace.class("OnStealthKillEventArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, victim)
      this.Victim = SlipeSharedElements.ElementManager.getInstance():GetElement(victim, SlipeServerPeds.Ped)
    end
    return {
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "Victim", 0x6, out.Slipe.Server.Peds.Ped }
          },
          methods = {
            { ".ctor", 0x104, nil, out.Slipe.MtaDefinitions.MtaElement }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
