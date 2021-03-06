-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Shared.GameWorld", function (namespace)
  -- <summary>
  -- Class representing a game time, contrary to real time
  -- </summary>
  namespace.struct("GameTime", function (namespace)
    local __ctor1__, __ctor2__
    -- <summary>
    -- Create a game time from hours and minutes
    -- </summary>
    __ctor1__ = function (this, hour, minute)
      if hour == nil then
        return
      end
      this.Hour = math.Clamp(hour, 0, 23)
      this.Minute = math.Clamp(minute, 0, 59)
    end
    -- <summary>
    -- Create a game time from a datetime
    -- </summary>
    __ctor2__ = function (this, time)
      this.Hour = time:getHour()
      this.Minute = time:getMinute()
    end
    return {
      Hour = 0,
      Minute = 0,
      __ctor__ = {
        __ctor1__,
        __ctor2__
      },
      __metadata__ = function (out)
        return {
          properties = {
            { "Hour", 0x6, System.Int32 },
            { "Minute", 0x6, System.Int32 }
          },
          methods = {
            { ".ctor", 0x206, __ctor1__, System.Int32, System.Int32 },
            { ".ctor", 0x106, __ctor2__, System.DateTime }
          }
        }
      end
    }
  end)
end)
