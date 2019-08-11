-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
local SlipeServerVehicles
local SystemNumerics
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeServerVehicles = Slipe.Server.Vehicles
  SystemNumerics = System.Numerics
end)
System.namespace("Slipe.Server.Vehicles", function (namespace)
  -- <summary>
  -- Represents vehicles with a turret (firetrucks, rhino etc)
  -- </summary>
  namespace.class("TurretedVehicle", function (namespace)
    local getTurretPosition, setTurretPosition, op_Explicit1, class, __ctor1__, __ctor2__, __ctor3__
    __ctor1__ = function (this, element)
      SlipeServerVehicles.BaseVehicle.__ctor__[1](this, element)
    end
    -- <summary>
    -- Create a plane from a model at a position
    -- </summary>
    __ctor2__ = function (this, model, position)
      __ctor3__(this, model, position:__clone__(), SystemNumerics.Vector3.getZero(), "", 1, 1)
    end
    -- <summary>
    -- Create a plane using all createVehicle arguments
    -- </summary>
    __ctor3__ = function (this, model, position, rotation, numberplate, variant1, variant2)
      SlipeServerVehicles.BaseVehicle.__ctor__[2](this, model, position:__clone__(), rotation:__clone__(), numberplate, variant1, variant2)
    end
    getTurretPosition = function (this)
      local r = SlipeMtaDefinitions.MtaShared.GetVehicleTurretPosition(this.element)
      return SystemNumerics.Vector2(r[1], r[2])
    end
    setTurretPosition = function (this, value)
      SlipeMtaDefinitions.MtaShared.SetVehicleTurretPosition(this.element, value.X, value.Y)
    end
    op_Explicit1 = function (vehicle)
      if System.is(SlipeServerVehicles.VehicleModel.FromId(vehicle:getModel()), SlipeServerVehicles.TurretedModel) then
        return class(vehicle:getMTAElement())
      end

      System.throw((System.InvalidCastException("The vehicle is not a turreted vehicle")))
    end
    class = {
      __inherits__ = function (out)
        return {
          out.Slipe.Server.Vehicles.BaseVehicle
        }
      end,
      getTurretPosition = getTurretPosition,
      setTurretPosition = setTurretPosition,
      op_Explicit1 = op_Explicit1,
      __ctor__ = {
        __ctor1__,
        __ctor2__,
        __ctor3__
      },
      __metadata__ = function (out)
        return {
          properties = {
            { "TurretPosition", 0x106, System.Numerics.Vector2, getTurretPosition, setTurretPosition }
          },
          methods = {
            { ".ctor", 0x106, __ctor1__, out.Slipe.MtaDefinitions.MtaElement },
            { ".ctor", 0x206, __ctor2__, out.Slipe.Server.Vehicles.TurretedModel, System.Numerics.Vector3 },
            { ".ctor", 0x606, __ctor3__, out.Slipe.Server.Vehicles.TurretedModel, System.Numerics.Vector3, System.Numerics.Vector3, System.String, System.Int32, System.Int32 }
          },
          class = { 0x6 }
        }
      end
    }
    return class
  end)

  -- <summary>
  -- Represents vehicle models that have a turret
  -- </summary>
  namespace.class("TurretedModel", function (namespace)
    local __ctor__
    __ctor__ = function (this, id)
      SlipeServerVehicles.VehicleModel.__ctor__(this, id)
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Server.Vehicles.VehicleModel
        }
      end,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          methods = {
            { ".ctor", 0x104, nil, System.Int32 }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
