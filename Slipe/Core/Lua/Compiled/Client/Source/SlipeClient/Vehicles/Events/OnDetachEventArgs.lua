-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientVehicles
local SlipeSharedElements
System.import(function (out)
  SlipeClientVehicles = Slipe.Client.Vehicles
  SlipeSharedElements = Slipe.Shared.Elements
end)
System.namespace("Slipe.Client.Vehicles.Events", function (namespace)
  namespace.class("OnDetachEventArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, truck)
      this.Truck = SlipeSharedElements.ElementManager.getInstance():GetElement(truck, SlipeClientVehicles.Vehicle)
    end
    return {
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "Truck", 0x6, out.Slipe.Client.Vehicles.Vehicle }
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
