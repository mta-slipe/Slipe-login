-- Generated by CSharp.lua Compiler
local System = System
local SlipeSharedElements
local SlipeSharedWeapons
local SystemNumerics
System.import(function (out)
  SlipeSharedElements = Slipe.Shared.Elements
  SlipeSharedWeapons = Slipe.Shared.Weapons
  SystemNumerics = System.Numerics
end)
System.namespace("Slipe.Client.Peds.Events", function (namespace)
  namespace.class("OnWeaponFireEventArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, weapon, ammoLeft, ammoLeftInClip, ex, ey, ez, hitElement)
      this.HitPosition = System.default(SystemNumerics.Vector3)
      this.Weapon = SlipeSharedWeapons.SharedWeaponModel(System.cast(System.Int32, weapon))
      this.HitElement = SlipeSharedElements.ElementManager.getInstance():GetElement(hitElement, SlipeSharedElements.PhysicalElement)
      this.HitPosition = SystemNumerics.Vector3(System.cast(System.Single, ex), System.cast(System.Single, ey), System.cast(System.Single, ez))
      this.AmmoLeft = System.cast(System.Int32, ammoLeft)
      this.AmmoLeftInClip = System.cast(System.Int32, ammoLeftInClip)
    end
    return {
      AmmoLeft = 0,
      AmmoLeftInClip = 0,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "AmmoLeft", 0x6, System.Int32 },
            { "AmmoLeftInClip", 0x6, System.Int32 },
            { "HitElement", 0x6, out.Slipe.Shared.Elements.PhysicalElement },
            { "HitPosition", 0x6, System.Numerics.Vector3 },
            { "Weapon", 0x6, out.Slipe.Shared.Weapons.SharedWeaponModel }
          },
          methods = {
            { ".ctor", 0x704, nil, System.Object, System.Object, System.Object, System.Object, System.Object, System.Object, out.Slipe.MtaDefinitions.MtaElement }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)