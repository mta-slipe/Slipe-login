-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Client.Browsers", function (namespace)
  -- <summary>
  -- The reason why the resource was blocked
  -- </summary>
  namespace.enum("BlockReason", function ()
    return {
      NotAllowedYet = 0,
      Blacklisted = 1,
      BlockedProtocolScheme = 2
    }
  end)
end)
