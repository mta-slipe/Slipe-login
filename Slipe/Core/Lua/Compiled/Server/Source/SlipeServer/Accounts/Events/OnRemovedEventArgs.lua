-- Generated by CSharp.lua Compiler
local System = System
local SlipeServerAccounts
local SlipeServerPeds
local SlipeSharedElements
System.import(function (out)
  SlipeServerAccounts = Slipe.Server.Accounts
  SlipeServerPeds = Slipe.Server.Peds
  SlipeSharedElements = Slipe.Shared.Elements
end)
System.namespace("Slipe.Server.Accounts.Events", function (namespace)
  namespace.class("OnRemovedEventArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, ban, player)
      this.Ban = System.new(SlipeServerAccounts.Ban, 2, ban)
      this.ResponsiblePlayer = SlipeSharedElements.ElementManager.getInstance():GetElement(player, SlipeServerPeds.Player)
    end
    return {
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "Ban", 0x6, out.Slipe.Server.Accounts.Ban },
            { "ResponsiblePlayer", 0x6, out.Slipe.Server.Peds.Player }
          },
          methods = {
            { ".ctor", 0x204, nil, out.Slipe.MtaDefinitions.MtaBan, out.Slipe.MtaDefinitions.MtaElement }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
