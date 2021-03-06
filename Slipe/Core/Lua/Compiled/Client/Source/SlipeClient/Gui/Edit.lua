-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientGui
local SlipeMtaDefinitions
System.import(function (out)
  SlipeClientGui = Slipe.Client.Gui
  SlipeMtaDefinitions = Slipe.MtaDefinitions
end)
System.namespace("Slipe.Client.Gui", function (namespace)
  -- <summary>
  -- A Cegui single line text field
  -- </summary>
  namespace.class("Edit", function (namespace)
    local getCaretIndex, setCaretIndex, getMaxLength, setMaxLength, getMasked, setMasked, getReadOnly, setReadOnly, 
    class, __ctor1__, __ctor2__
    __ctor1__ = function (this, element)
      SlipeClientGui.EditableGuiElement.__ctor__(this, element)
    end
    -- <summary>
    -- Create a new edit
    -- </summary>
    __ctor2__ = function (this, position, dimensions, defaultContent, relative, parent, masked, maxLength)
      local default = parent
      if default ~= nil then
        default = default:getMTAElement()
      end
      __ctor1__(this, SlipeMtaDefinitions.MtaClient.GuiCreateEdit(position.X, position.Y, dimensions.X, dimensions.Y, defaultContent, relative, default))
      setMasked(this, masked)
      setMaxLength(this, maxLength)
    end
    getCaretIndex = function (this)
      return SlipeMtaDefinitions.MtaClient.GuiEditGetCaretIndex(this.element)
    end
    setCaretIndex = function (this, value)
      SlipeMtaDefinitions.MtaClient.GuiEditSetCaretIndex(this.element, value)
    end
    getMaxLength = function (this)
      return SlipeMtaDefinitions.MtaClient.GuiEditGetMaxLength(this.element)
    end
    setMaxLength = function (this, value)
      SlipeMtaDefinitions.MtaClient.GuiEditSetMaxLength(this.element, value)
    end
    getMasked = function (this)
      return SlipeMtaDefinitions.MtaClient.GuiEditIsMasked(this.element)
    end
    setMasked = function (this, value)
      SlipeMtaDefinitions.MtaClient.GuiEditSetMasked(this.element, value)
    end
    getReadOnly = function (this)
      return SlipeMtaDefinitions.MtaClient.GuiEditIsReadOnly(this.element)
    end
    setReadOnly = function (this, value)
      SlipeMtaDefinitions.MtaClient.GuiEditSetReadOnly(this.element, value)
    end
    class = {
      __inherits__ = function (out)
        return {
          out.Slipe.Client.Gui.EditableGuiElement
        }
      end,
      getCaretIndex = getCaretIndex,
      setCaretIndex = setCaretIndex,
      getMaxLength = getMaxLength,
      setMaxLength = setMaxLength,
      getMasked = getMasked,
      setMasked = setMasked,
      getReadOnly = getReadOnly,
      setReadOnly = setReadOnly,
      __ctor__ = {
        __ctor1__,
        __ctor2__
      },
      __metadata__ = function (out)
        return {
          properties = {
            { "CaretIndex", 0x106, System.Int32, getCaretIndex, setCaretIndex },
            { "Masked", 0x106, System.Boolean, getMasked, setMasked },
            { "MaxLength", 0x106, System.Int32, getMaxLength, setMaxLength },
            { "ReadOnly", 0x106, System.Boolean, getReadOnly, setReadOnly }
          },
          methods = {
            { ".ctor", 0x106, __ctor1__, out.Slipe.MtaDefinitions.MtaElement },
            { ".ctor", 0x706, __ctor2__, System.Numerics.Vector2, System.Numerics.Vector2, System.String, System.Boolean, out.Slipe.Client.Gui.GuiElement, System.Boolean, System.Int32 }
          },
          events = {
            { "OnAccepted", 0x6, System.Delegate(class, out.Slipe.Client.Gui.Events.OnAcceptedEventArgs, System.Void) }
          },
          class = { 0x6, System.new(out.Slipe.Shared.Elements.DefaultElementClassAttribute, 2, 16 --[[ElementType.GuiEdit]]) }
        }
      end
    }
    return class
  end)
end)
