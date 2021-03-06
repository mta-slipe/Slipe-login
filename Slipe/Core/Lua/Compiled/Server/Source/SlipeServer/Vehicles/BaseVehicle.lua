-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
local SlipeServerPeds
local SlipeServerVehicles
local SlipeSharedElements
local SlipeSharedVehicles
local SystemNumerics
local DictInt32Player
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeServerPeds = Slipe.Server.Peds
  SlipeServerVehicles = Slipe.Server.Vehicles
  SlipeSharedElements = Slipe.Shared.Elements
  SlipeSharedVehicles = Slipe.Shared.Vehicles
  SystemNumerics = System.Numerics
  DictInt32Player = System.Dictionary(System.Int32, SlipeServerPeds.Player)
end)
System.namespace("Slipe.Server.Vehicles", function (namespace)
  namespace.class("BaseVehicle", function (namespace)
    local getControler, getOccupants, getSirens1, setSirens1, getVariant1, setVariant1, setRespawnEnabled, setRespawnDelay, 
    getRespawnPosition, setRespawnPosition, getRespawnRotation, setRespawnRotation, setIdleRespawnDelay, Blow, GetOccupant, ResetExplosionTime, 
    ResetIdleTime, Spawn, Spawn1, Respawn, class, __ctor1__, __ctor2__
    __ctor1__ = function (this, element)
      SlipeSharedVehicles.SharedVehicle.__ctor__(this, element)
    end
    -- <summary>
    -- Create a vehicle using all createVehicle arguments
    -- </summary>
    __ctor2__ = function (this, model, position, rotation, numberplate, variant1, variant2)
      __ctor1__(this, SlipeMtaDefinitions.MtaServer.CreateVehicle(model.Id, position.X, position.Y, position.Z, rotation.X, rotation.Y, rotation.Z, numberplate, false, variant1, variant2))
    end
    getControler = function (this)
      return SlipeSharedElements.ElementManager.getInstance():GetElement(SlipeMtaDefinitions.MtaShared.GetVehicleController(this.element), SlipeServerPeds.Player)
    end
    getOccupants = function (this)
      local elements = SlipeMtaDefinitions.MtaShared.GetDictionaryFromTable(SlipeMtaDefinitions.MtaShared.GetVehicleOccupants(this.element), "System.Int32", "MTAElement")
      local dictionary = DictInt32Player()
      for _, entry in System.each(elements) do
        local p = SlipeSharedElements.ElementManager.getInstance():GetElement(entry.Value, SlipeServerPeds.Player)
        local s = entry.Key
        dictionary:AddKeyValue(s, p)
      end
      return dictionary
    end
    getSirens1 = function (this)
      if this.s_sirens == nil then
        this.s_sirens = SlipeServerVehicles.Sirens(this)
      end
      return this.s_sirens
    end
    setSirens1 = function (this, value)
      if value == nil then
        SlipeMtaDefinitions.MtaServer.RemoveVehicleSirens(this.element)
      end
      this.s_sirens = value
    end
    getVariant1 = function (this)
      return SlipeMtaDefinitions.MtaShared.GetVehicleVariant(this.element)
    end
    setVariant1 = function (this, value)
      SlipeMtaDefinitions.MtaServer.SetVehicleVariant(this.element, value[1], value[2])
    end
    setRespawnEnabled = function (this, value)
      SlipeMtaDefinitions.MtaServer.ToggleVehicleRespawn(this.element, value)
    end
    setRespawnDelay = function (this, value)
      SlipeMtaDefinitions.MtaServer.SetVehicleRespawnDelay(this.element, value)
    end
    getRespawnPosition = function (this)
      local r = SlipeMtaDefinitions.MtaServer.GetVehicleRespawnPosition(this.element)
      return SystemNumerics.Vector3(r[1], r[2], r[3])
    end
    setRespawnPosition = function (this, value)
      local rotation = getRespawnRotation(this)
      SlipeMtaDefinitions.MtaServer.SetVehicleRespawnPosition(this.element, value.X, value.Y, value.Z, rotation.X, rotation.Y, rotation.Z)
    end
    getRespawnRotation = function (this)
      local r = SlipeMtaDefinitions.MtaServer.GetVehicleRespawnRotation(this.element)
      return SystemNumerics.Vector3(r[1], r[2], r[3])
    end
    setRespawnRotation = function (this, value)
      SlipeMtaDefinitions.MtaServer.SetVehicleRespawnRotation(this.element, value.X, value.Y, value.Z)
    end
    setIdleRespawnDelay = function (this, value)
      SlipeMtaDefinitions.MtaServer.SetVehicleIdleRespawnDelay(this.element, value)
    end
    -- <summary>
    -- Blow up this vehicle
    -- </summary>
    Blow = function (this, explode)
      return SlipeMtaDefinitions.MtaServer.BlowVehicle(this.element, explode)
    end
    -- <summary>
    -- This function gets the player sitting/trying to enter this vehicle.
    -- </summary>
    GetOccupant = function (this, seat)
      return SlipeSharedElements.ElementManager.getInstance():GetElement(SlipeMtaDefinitions.MtaShared.GetVehicleOccupant(this.element, seat), SlipeServerPeds.Player)
    end
    -- <summary>
    -- Resets the vehicle explosion time. This is the point in time at which the vehicle last exploded: at this time plus the vehicle's respawn delay, the vehicle is respawned. You can use this function to prevent the vehicle from respawning.
    -- </summary>
    ResetExplosionTime = function (this)
      return SlipeMtaDefinitions.MtaServer.ResetVehicleExplosionTime(this.element)
    end
    -- <summary>
    -- Resets the vehicle idle time
    -- </summary>
    ResetIdleTime = function (this)
      return SlipeMtaDefinitions.MtaServer.ResetVehicleIdleTime(this.element)
    end
    -- <summary>
    -- Spawns the vehicle at a different position and rotation
    -- </summary>
    Spawn = function (this, position, rotation)
      return SlipeMtaDefinitions.MtaServer.SpawnVehicle(this.element, position.X, position.Y, position.Z, rotation.X, rotation.Y, rotation.Z)
    end
    -- <summary>
    -- Spawns the vehicle at a different position
    -- </summary>
    Spawn1 = function (this, position)
      return Spawn(this, position:__clone__(), SystemNumerics.Vector3.getZero())
    end
    -- <summary>
    -- Respawns the vehicle
    -- </summary>
    Respawn = function (this)
      return SlipeMtaDefinitions.MtaServer.RespawnVehicle(this.element)
    end
    class = {
      __inherits__ = function (out)
        return {
          out.Slipe.Shared.Vehicles.SharedVehicle
        }
      end,
      getControler = getControler,
      getOccupants = getOccupants,
      getSirens1 = getSirens1,
      setSirens1 = setSirens1,
      getVariant1 = getVariant1,
      setVariant1 = setVariant1,
      setRespawnEnabled = setRespawnEnabled,
      setRespawnDelay = setRespawnDelay,
      getRespawnPosition = getRespawnPosition,
      setRespawnPosition = setRespawnPosition,
      getRespawnRotation = getRespawnRotation,
      setRespawnRotation = setRespawnRotation,
      setIdleRespawnDelay = setIdleRespawnDelay,
      Blow = Blow,
      GetOccupant = GetOccupant,
      ResetExplosionTime = ResetExplosionTime,
      ResetIdleTime = ResetIdleTime,
      Spawn = Spawn,
      Spawn1 = Spawn1,
      Respawn = Respawn,
      __ctor__ = {
        __ctor1__,
        __ctor2__
      },
      __metadata__ = function (out)
        return {
          fields = {
            { "s_sirens", 0x1, out.Slipe.Server.Vehicles.Sirens }
          },
          properties = {
            { "Controler", 0x206, out.Slipe.Server.Peds.Player, getControler },
            { "IdleRespawnDelay", 0x306, System.Int32, setIdleRespawnDelay },
            { "Occupants", 0x206, System.Dictionary(System.Int32, out.Slipe.Server.Peds.Player), getOccupants },
            { "RespawnDelay", 0x306, System.Int32, setRespawnDelay },
            { "RespawnEnabled", 0x306, System.Boolean, setRespawnEnabled },
            { "RespawnPosition", 0x106, System.Numerics.Vector3, getRespawnPosition, setRespawnPosition },
            { "RespawnRotation", 0x106, System.Numerics.Vector3, getRespawnRotation, setRespawnRotation },
            { "Sirens", 0x106, out.Slipe.Server.Vehicles.Sirens, getSirens1, setSirens1 },
            { "Variant", 0x106, System.Tuple, getVariant1, setVariant1 }
          },
          methods = {
            { ".ctor", 0x106, __ctor1__, out.Slipe.MtaDefinitions.MtaElement },
            { ".ctor", 0x603, __ctor2__, out.Slipe.Server.Vehicles.VehicleModel, System.Numerics.Vector3, System.Numerics.Vector3, System.String, System.Int32, System.Int32 },
            { "Blow", 0x186, Blow, System.Boolean, System.Boolean },
            { "GetOccupant", 0x186, GetOccupant, System.Int32, out.Slipe.Server.Peds.Player },
            { "ResetExplosionTime", 0x86, ResetExplosionTime, System.Boolean },
            { "ResetIdleTime", 0x86, ResetIdleTime, System.Boolean },
            { "Respawn", 0x86, Respawn, System.Boolean },
            { "Spawn", 0x286, Spawn, System.Numerics.Vector3, System.Numerics.Vector3, System.Boolean },
            { "Spawn", 0x186, Spawn1, System.Numerics.Vector3, System.Boolean }
          },
          events = {
            { "OnDamage", 0x6, System.Delegate(class, out.Slipe.Server.Vehicles.Events.OnDamageEventArgs, System.Void) },
            { "OnCollisionShapeHit", 0x6, System.Delegate(class, out.Slipe.Shared.Elements.Events.OnCollisionShapeHitEventArgs, System.Void) },
            { "OnCollisionShapeLeave", 0x6, System.Delegate(class, out.Slipe.Shared.Elements.Events.OnCollisionShapeLeaveEventArgs, System.Void) },
            { "OnEnter", 0x6, System.Delegate(class, out.Slipe.Server.Vehicles.Events.OnEnterEventArgs, System.Void) },
            { "OnExit", 0x6, System.Delegate(class, out.Slipe.Server.Vehicles.Events.OnExitEventArgs, System.Void) },
            { "OnStartEnter", 0x6, System.Delegate(class, out.Slipe.Server.Vehicles.Events.OnStartEnterEventArgs, System.Void) },
            { "OnStartExit", 0x6, System.Delegate(class, out.Slipe.Server.Vehicles.Events.OnStartExitEventArgs, System.Void) },
            { "OnExplode", 0x6, System.Delegate(class, out.Slipe.Server.Vehicles.Events.OnExplodeEventArgs, System.Void) },
            { "OnRespawn", 0x6, System.Delegate(class, out.Slipe.Server.Vehicles.Events.OnRespawnEventArgs, System.Void) }
          },
          class = { 0x6 }
        }
      end
    }
    return class
  end)
end)
