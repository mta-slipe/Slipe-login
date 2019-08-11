-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
end)
System.namespace("Slipe.Client.Gui", function (namespace)
  -- <summary>
  -- Represents an item for a Cegui combo box
  -- </summary>
  namespace.class("ComboBoxItem", function (namespace)
    local getContent, setContent, __ctor__
    -- <summary>
    -- Create a combo box item assigned to a combo box
    -- </summary>
    __ctor__ = function (this, content, comboBox)
      this.ID = SlipeMtaDefinitions.MtaClient.GuiComboBoxAddItem(comboBox:getMTAElement(), content)
      this.comboBox = comboBox
    end
    getContent = function (this)
      return SlipeMtaDefinitions.MtaClient.GuiComboBoxGetItemText(this.comboBox:getMTAElement(), this.ID)
    end
    setContent = function (this, value)
      SlipeMtaDefinitions.MtaClient.GuiComboBoxSetItemText(this.comboBox:getMTAElement(), this.ID, value)
    end
    return {
      ID = 0,
      getContent = getContent,
      setContent = setContent,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          fields = {
            { "comboBox", 0x1, out.Slipe.Client.Gui.ComboBox }
          },
          properties = {
            { "Content", 0x106, System.String, getContent, setContent },
            { "ID", 0x6, System.Int32 }
          },
          methods = {
            { ".ctor", 0x206, nil, System.String, out.Slipe.Client.Gui.ComboBox }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
