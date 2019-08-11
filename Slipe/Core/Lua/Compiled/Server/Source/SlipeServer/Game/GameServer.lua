-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
local SlipeServerGame
local SlipeServerIO
local SlipeSharedHelpers
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeServerGame = Slipe.Server.Game
  SlipeServerIO = Slipe.Server.IO
  SlipeSharedHelpers = Slipe.Shared.Helpers
end)
System.namespace("Slipe.Server.Game", function (namespace)
  -- <summary>
  -- Static class for functionality of the actual server process
  -- </summary>
  namespace.class("GameServer", function (namespace)
    local getPassword, setPassword, getMaxPlayers, setMaxPlayers, getFPSLimit, setFPSLimit, getPort, getHTTPPort, 
    getName, getIsVoiceEnabled, config, getConfig, getTickCount, version, getVersion, console, 
    getConsole, debug, getDebug, log, getLog, announcement, getAnnouncement, getFpsLimit, 
    setFpsLimit, SetGlitchEnabled, IsGlitchEnabled, Shutdown
    getPassword = function ()
      return SlipeMtaDefinitions.MtaServer.GetServerPassword()
    end
    setPassword = function (value)
      SlipeMtaDefinitions.MtaServer.SetServerPassword(value)
    end
    getMaxPlayers = function ()
      return SlipeMtaDefinitions.MtaServer.GetMaxPlayers()
    end
    setMaxPlayers = function (value)
      SlipeMtaDefinitions.MtaServer.SetMaxPlayers(value)
    end
    getFPSLimit = function ()
      return SlipeMtaDefinitions.MtaShared.GetFPSLimit()
    end
    setFPSLimit = function (value)
      SlipeMtaDefinitions.MtaShared.SetFPSLimit(value)
    end
    getPort = function ()
      return SlipeMtaDefinitions.MtaServer.GetServerPort()
    end
    getHTTPPort = function ()
      return SlipeMtaDefinitions.MtaServer.GetServerHttpPort()
    end
    getName = function ()
      return SlipeMtaDefinitions.MtaServer.GetServerName()
    end
    getIsVoiceEnabled = function ()
      return SlipeMtaDefinitions.MtaShared.IsVoiceEnabled()
    end
    getConfig = function ()
      if config == nil then
        config = SlipeServerGame.Config()
      end
      return config
    end
    getTickCount = function ()
      return SlipeMtaDefinitions.MtaShared.GetTickCount()
    end
    getVersion = function ()
      if version == nil then
        version = SlipeSharedHelpers.SystemVersion()
      end
      return version
    end
    getConsole = function ()
      if console == nil then
        console = SlipeServerIO.MtaConsole()
      end
      return console
    end
    getDebug = function ()
      if debug == nil then
        debug = SlipeServerIO.MtaDebug()
      end
      return debug
    end
    getLog = function ()
      if log == nil then
        log = SlipeServerIO.ServerLog()
      end
      return log
    end
    getAnnouncement = function ()
      if announcement == nil then
        announcement = SlipeServerGame.Announcement()
      end
      return announcement
    end
    getFpsLimit = function ()
      return SlipeMtaDefinitions.MtaShared.GetFPSLimit()
    end
    setFpsLimit = function (value)
      SlipeMtaDefinitions.MtaShared.SetFPSLimit(value)
    end
    -- <summary>
    -- Enable or disable a certain known GTA glitch
    -- </summary>
    SetGlitchEnabled = function (glitch, enabled)
      return SlipeMtaDefinitions.MtaServer.SetGlitchEnabled(glitch:ToEnumString(SlipeServerGame.Glitch):ToLower(), enabled)
    end
    -- <summary>
    -- Check if a certain GTA glitch is enabled
    -- </summary>
    IsGlitchEnabled = function (glitch)
      return SlipeMtaDefinitions.MtaServer.IsGlitchEnabled(glitch:ToEnumString(SlipeServerGame.Glitch):ToLower())
    end
    -- <summary>
    -- Terminates the server process
    -- </summary>
    Shutdown = function (reason)
      SlipeMtaDefinitions.MtaServer.Shutdown(reason)
    end
    return {
      getPassword = getPassword,
      setPassword = setPassword,
      getMaxPlayers = getMaxPlayers,
      setMaxPlayers = setMaxPlayers,
      getFPSLimit = getFPSLimit,
      setFPSLimit = setFPSLimit,
      getPort = getPort,
      getHTTPPort = getHTTPPort,
      getName = getName,
      getIsVoiceEnabled = getIsVoiceEnabled,
      getConfig = getConfig,
      getTickCount = getTickCount,
      getVersion = getVersion,
      getConsole = getConsole,
      getDebug = getDebug,
      getLog = getLog,
      getAnnouncement = getAnnouncement,
      getFpsLimit = getFpsLimit,
      setFpsLimit = setFpsLimit,
      SetGlitchEnabled = SetGlitchEnabled,
      IsGlitchEnabled = IsGlitchEnabled,
      Shutdown = Shutdown,
      __metadata__ = function (out)
        return {
          properties = {
            { "Announcement", 0x20E, out.Slipe.Server.Game.Announcement, getAnnouncement },
            { "Config", 0x20E, out.Slipe.Server.Game.Config, getConfig },
            { "Console", 0x20E, out.Slipe.Server.IO.MtaConsole, getConsole },
            { "Debug", 0x20E, out.Slipe.Server.IO.MtaDebug, getDebug },
            { "FpsLimit", 0x10E, System.Int32, getFpsLimit, setFpsLimit },
            { "FPSLimit", 0x10E, System.Int32, getFPSLimit, setFPSLimit },
            { "HTTPPort", 0x20E, System.Int32, getHTTPPort },
            { "IsVoiceEnabled", 0x20E, System.Boolean, getIsVoiceEnabled },
            { "Log", 0x20E, out.Slipe.Server.IO.ServerLog, getLog },
            { "MaxPlayers", 0x10E, System.Int32, getMaxPlayers, setMaxPlayers },
            { "Name", 0x20E, System.String, getName },
            { "Password", 0x10E, System.String, getPassword, setPassword },
            { "Port", 0x20E, System.Int32, getPort },
            { "TickCount", 0x20E, System.Int32, getTickCount },
            { "Version", 0x20E, out.Slipe.Shared.Helpers.SystemVersion, getVersion }
          },
          fields = {
            { "announcement", 0x9, out.Slipe.Server.Game.Announcement },
            { "config", 0x9, out.Slipe.Server.Game.Config },
            { "console", 0x9, out.Slipe.Server.IO.MtaConsole },
            { "debug", 0x9, out.Slipe.Server.IO.MtaDebug },
            { "log", 0x9, out.Slipe.Server.IO.ServerLog },
            { "version", 0x9, out.Slipe.Shared.Helpers.SystemVersion }
          },
          methods = {
            { "IsGlitchEnabled", 0x18E, IsGlitchEnabled, System.Int32, System.Boolean },
            { "SetGlitchEnabled", 0x28E, SetGlitchEnabled, System.Int32, System.Boolean, System.Boolean },
            { "Shutdown", 0x10E, Shutdown, System.String }
          },
          events = {
            { "OnPreStart", 0xE, System.Delegate(out.Slipe.Server.Elements.ResourceRootElement, out.Slipe.Server.Game.Events.OnPreStartEventArgs, System.Void) },
            { "OnStart", 0xE, System.Delegate(out.Slipe.Server.Elements.ResourceRootElement, out.Slipe.Server.Game.Events.OnStartEventArgs, System.Void) },
            { "OnStop", 0xE, System.Delegate(out.Slipe.Server.Elements.ResourceRootElement, out.Slipe.Server.Game.Events.OnStopEventArgs, System.Void) },
            { "OnPlayerConnect", 0xE, System.Delegate(out.Slipe.Server.Elements.RootElement, out.Slipe.Server.Game.Events.OnPlayerConnectEventArgs, System.Void) },
            { "OnSettingChange", 0xE, System.Delegate(out.Slipe.Server.Elements.RootElement, out.Slipe.Server.Game.Events.OnSettingChangeEventArgs, System.Void) }
          },
          class = { 0xE }
        }
      end
    }
  end)
end)
