-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Client.Rendering", function (namespace)
  -- <summary>
  -- Represents Dx draw blendmodes
  -- </summary>
  namespace.enum("BlendMode", function ()
    return {
      blend = 0,
      add = 1,
      modulate_add = 2,
      overwrite = 3
    }
  end)

  -- <summary>
  -- Represents dx testmodes to simulate different memory states
  -- </summary>
  namespace.enum("TestMode", function ()
    return {
      none = 0,
      no_mem = 1,
      low_mem = 2,
      no_shader = 3
    }
  end)
end)