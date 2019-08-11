-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
local SlipeSharedUtilities
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedUtilities = Slipe.Shared.Utilities
end)
System.namespace("Slipe.Client.Gui", function (namespace)
  -- <summary>
  -- Represents a single item in a Gui gridlist
  -- </summary>
  namespace.class("GridItem", function (namespace)
    local getColor, setColor, getContent, setContent, getData, setData, SetSection, __ctor__
    -- <summary>
    -- Create a new item handle
    -- </summary>
    __ctor__ = function (this, column, row, gridList)
      this.Column = column
      this.Row = row
      this.glist = gridList
    end
    getColor = function (this)
      local color = SlipeMtaDefinitions.MtaClient.GuiGridListGetItemColor(this.glist:getMTAElement(), this.Row.ID, this.Column.ID)
      return System.new(SlipeSharedUtilities.Color, 3, System.toByte(color[1]), System.toByte(color[2]), System.toByte(color[3]), System.toByte(color[4]))
    end
    setColor = function (this, value)
      SlipeMtaDefinitions.MtaClient.GuiGridListSetItemColor(this.glist:getMTAElement(), this.Row.ID, this.Column.ID, value:getR(), value:getG(), value:getB(), value:getA())
    end
    getContent = function (this)
      return SlipeMtaDefinitions.MtaClient.GuiGridListGetItemText(this.glist:getMTAElement(), this.Row.ID, this.Column.ID)
    end
    setContent = function (this, value)
      SlipeMtaDefinitions.MtaClient.GuiGridListSetItemText(this.glist:getMTAElement(), this.Row.ID, this.Column.ID, value, false, false)
    end
    getData = function (this)
      if System.String.IsNullOrEmpty(getContent(this)) then
        setContent(this, "")
      end
      return SlipeMtaDefinitions.MtaClient.GuiGridListGetItemData(this.glist:getMTAElement(), this.Row.ID, this.Column.ID)
    end
    setData = function (this, value)
      if System.String.IsNullOrEmpty(getContent(this)) then
        setContent(this, "")
      end
      SlipeMtaDefinitions.MtaClient.GuiGridListSetItemData(this.glist:getMTAElement(), this.Row.ID, this.Column.ID, value)
    end
    -- <summary>
    -- Set this item as a section while setting the text
    -- </summary>
    SetSection = function (this, content)
      return SlipeMtaDefinitions.MtaClient.GuiGridListSetItemText(this.glist:getMTAElement(), this.Row.ID, this.Column.ID, content, true, false)
    end
    return {
      getColor = getColor,
      setColor = setColor,
      getContent = getContent,
      setContent = setContent,
      getData = getData,
      setData = setData,
      SetSection = SetSection,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          fields = {
            { "glist", 0x1, out.Slipe.Client.Gui.GridList }
          },
          properties = {
            { "Color", 0x106, out.Slipe.Shared.Utilities.Color, getColor, setColor },
            { "Column", 0x6, out.Slipe.Client.Gui.GridColumn },
            { "Content", 0x106, System.String, getContent, setContent },
            { "Data", 0x106, System.Object, getData, setData },
            { "Row", 0x6, out.Slipe.Client.Gui.GridRow }
          },
          methods = {
            { ".ctor", 0x306, nil, out.Slipe.Client.Gui.GridColumn, out.Slipe.Client.Gui.GridRow, out.Slipe.Client.Gui.GridList },
            { "SetSection", 0x186, SetSection, System.String, System.Boolean }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)