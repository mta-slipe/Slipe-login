-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Client.Browsers.Events", function (namespace)
  namespace.class("OnDocumentReadEventArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, url)
      this.Url = System.cast(System.String, url)
    end
    return {
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "Url", 0x6, System.String }
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
