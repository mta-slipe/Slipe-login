-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Client.Sounds", function (namespace)
  -- <summary>
  -- Represents different sound containers
  -- </summary>
  namespace.enum("SoundContainer", function ()
    return {
      feet = 0,
      genrl = 1,
      pain_a = 2,
      script = 3,
      spc_ea = 4,
      spc_fa = 5,
      spc_na = 6,
      spc_pa = 7
    }
  end)


  -- <summary>
  -- Represents interal GTA radio stations that are not the common ones
  -- </summary>
  namespace.enum("ExtraStations", function ()
    return {
      Adverts = 0,
      Ambience = 1,
      Police = 2,
      Custscene = 3,
      Beats = 4
    }
  end)
end)