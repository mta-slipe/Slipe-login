-- Generated by CSharp.lua Compiler
local System = System
local WpfRendererCegui
System.import(function (out)
  WpfRendererCegui = WpfRenderer.Cegui
end)
System.namespace("WpfRenderer.Cegui.Elements", function (namespace)
  namespace.class("WpfGuiDummy", function (namespace)
    local __ctor__
    __ctor__ = function (this, element, parent)
      WpfRendererCegui.GuiWpfHelper.AttachHandlers(parent, element)

      WpfRendererCegui.GuiWpfHelper.CreateChildren(parent, element)
    end
    return {
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          methods = {
            { ".ctor", 0x206, nil, System.Windows.FrameworkElement, out.Slipe.Client.Gui.GuiElement }
          },
          class = { 0x4 }
        }
      end
    }
  end)
end)
