-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Client.Sounds.Events", function (namespace)
  namespace.class("OnDownloadFinishedEventArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, l)
      this.Length = System.cast(System.Int32, l)
    end
    return {
      Length = 0,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "Length", 0x6, System.Int32 }
          },
          methods = {
            { ".ctor", 0x104, nil, System.Object }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
