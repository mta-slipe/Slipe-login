-- Generated by CSharp.lua Compiler
local System = System
local SlipeServerPeds
local SlipeSharedElements
local SlipeSharedPeds
System.import(function (out)
  SlipeServerPeds = Slipe.Server.Peds
  SlipeSharedElements = Slipe.Shared.Elements
  SlipeSharedPeds = Slipe.Shared.Peds
end)
System.namespace("Slipe.Server.Peds.Events", function (namespace)
  namespace.class("OnQuitEventArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, quitType, reason, responsiblePlayer)
      this.QuitType = System.cast(System.Int32, System.Enum.Parse(System.typeof(SlipeSharedPeds.QuitType), System.cast(System.String, quitType)))

      if reason == false then
        this.Reason = ""
      else
        this.Reason = System.cast(System.String, reason)
      end

      if System.is(responsiblePlayer, System.Boolean) then
        this.ResponsiblePlayer = nil
      else
        this.ResponsiblePlayer = SlipeSharedElements.ElementManager.getInstance():GetElement(responsiblePlayer, SlipeServerPeds.Player)
      end
    end
    return {
      QuitType = 0,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "QuitType", 0x6, System.Int32 },
            { "Reason", 0x6, System.String },
            { "ResponsiblePlayer", 0x6, out.Slipe.Server.Peds.Player }
          },
          methods = {
            { ".ctor", 0x304, nil, System.Object, System.Object, System.Object }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)