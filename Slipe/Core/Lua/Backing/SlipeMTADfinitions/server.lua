System.define("Slipe.MtaDefinitions.MtaServer", {
	AddAccount = function(...) local results = {addAccount(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetAccountPlayer = function(...) local results = {getAccountPlayer(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetAccountsBySerial = function(...) local results = {getAccountsBySerial(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetAccount = function(...) local results = {getAccount(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetAccountSerial = function(...) local results = {getAccountSerial(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetAllAccountData = function(...) local results = {getAllAccountData(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetPlayerAccount = function(...) local results = {getPlayerAccount(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetAccountData = function(...) local results = {getAccountData(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	CopyAccountData = copyAccountData,
	IsGuestAccount = isGuestAccount,
	LogIn = logIn,
	SetAccountData = setAccountData,
	GetAccountName = function(...) local results = {getAccountName(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	RemoveAccount = removeAccount,
	LogOut = logOut,
	SetAccountPassword = setAccountPassword,
	GetAccounts = function(...) local results = {getAccounts(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetAccountIP = function(...) local results = {getAccountIP(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetAccountByID = function(...) local results = {getAccountByID(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AclDestroy = aclDestroy,
	GetAccountsByData = function(...) local results = {getAccountsByData(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetAccountID = function(...) local results = {getAccountID(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	SetAccountName = setAccountName,
	GetAccountsByIP = function(...) local results = {getAccountsByIP(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AclCreateGroup = function(...) local results = {aclCreateGroup(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AclDestroyGroup = aclDestroyGroup,
	AclGet = function(...) local results = {aclGet(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AclCreate = function(...) local results = {aclCreate(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AclGetGroup = function(...) local results = {aclGetGroup(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AclGroupAddACL = aclGroupAddACL,
	AclGetName = function(...) local results = {aclGetName(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AclGetRight = aclGetRight,
	AclGroupGetName = function(...) local results = {aclGroupGetName(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AclGroupListACL = function(...) local results = {aclGroupListACL(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AclGroupAddObject = aclGroupAddObject,
	AclGroupList = function(...) local results = {aclGroupList(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AclList = function(...) local results = {aclList(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AclGroupRemoveACL = aclGroupRemoveACL,
	AclGroupListObjects = function(...) local results = {aclGroupListObjects(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AclReload = aclReload,
	AclListRights = function(...) local results = {aclListRights(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AclRemoveRight = aclRemoveRight,
	AclGroupRemoveObject = aclGroupRemoveObject,
	AclSave = aclSave,
	AddBan = function(...) local results = {addBan(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	IsObjectInACLGroup = isObjectInACLGroup,
	GetBanAdmin = function(...) local results = {getBanAdmin(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	HasObjectPermissionTo = hasObjectPermissionTo,
	AclSetRight = aclSetRight,
	IsBan = isBan,
	GetBanNick = function(...) local results = {getBanNick(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetBanReason = function(...) local results = {getBanReason(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetUnbanTime = function(...) local results = {getUnbanTime(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetBanIP = function(...) local results = {getBanIP(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetBanSerial = function(...) local results = {getBanSerial(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	BanPlayer = function(...) local results = {banPlayer(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetBanUsername = function(...) local results = {getBanUsername(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	ReloadBans = reloadBans,
	GetBans = function(...) local results = {getBans(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetBanTime = function(...) local results = {getBanTime(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	SetBanNick = setBanNick,
	SetBanAdmin = setBanAdmin,
	SetBanReason = setBanReason,
	RemoveBan = removeBan,
	SetUnbanTime = setUnbanTime,
	KickPlayer = kickPlayer,
	GetRuleValue = function(...) local results = {getRuleValue(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	SetRuleValue = setRuleValue,
	RemoveRuleValue = removeRuleValue,
	SetGameType = setGameType,
	GetGameType = function(...) local results = {getGameType(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetMapName = function(...) local results = {getMapName(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	CreateBlip = function(...) local results = {createBlip(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	PlaySoundFrontEnd = playSoundFrontEnd,
	CreateBlipAttachedTo = function(...) local results = {createBlipAttachedTo(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	SetMapName = setMapName,
	GetCameraInterior = function(...) local results = {getCameraInterior(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	FadeCamera = fadeCamera,
	GetCameraTarget = function(...) local results = {getCameraTarget(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	SetCameraInterior = setCameraInterior,
	GetCameraMatrix = function(...) return System.tuple(getCameraMatrix(...)) end,
	SetCameraTarget = setCameraTarget,
	SetCameraMatrix = setCameraMatrix,
	IsCursorShowing = isCursorShowing,
	ClearElementVisibleTo = clearElementVisibleTo,
	ShowCursor = showCursor,
	CloneElement = function(...) local results = {cloneElement(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetElementByIndex = function(...) local results = {getElementByIndex(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetAllElementData = function(...) local results = {getAllElementData(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetElementSyncer = function(...) local results = {getElementSyncer(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetElementZoneName = function(...) local results = {getElementZoneName(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetElementsByType = function(...) local results = {getElementsByType(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	IsElementVisibleTo = isElementVisibleTo,
	RemoveElementData = removeElementData,
	CancelEvent = cancelEvent,
	SetElementSyncer = setElementSyncer,
	GetCancelReason = function(...) local results = {getCancelReason(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	SetElementVisibleTo = setElementVisibleTo,
	GetLatentEventStatus = function(...) local results = {getLatentEventStatus(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	CancelLatentEvent = cancelLatentEvent,
	GetLatentEventHandles = function(...) local results = {getLatentEventHandles(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	TriggerLatentClientEvent = triggerLatentClientEvent,
	CreateExplosion = createExplosion,
	TriggerClientEvent = triggerClientEvent,
	AddCommandHandler = function(command, callback, ...) addCommandHandler(command, function(source, command, ...) callback(source, command, System.arrayFromTable({...}, 'System.String')) end, ...) end,
	BindKey = bindKey,
	-- Removed because of deprecation
	-- GetControlState = getControlState,
	GetFunctionsBoundToKey = function(...) local results = {getFunctionsBoundToKey(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	IsControlEnabled = isControlEnabled,
	GetKeyBoundToFunction = function(...) local results = {getKeyBoundToFunction(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	ExecuteCommandHandler = executeCommandHandler,
	IsKeyBound = isKeyBound,
	ToggleAllControls = toggleAllControls,
	ToggleControl = toggleControl,
	LoadMapData = function(...) local results = {loadMapData(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	SaveMapData = saveMapData,
	UnbindKey = unbindKey,
	CreateMarker = function(...) local results = {createMarker(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	ResetMapInfo = resetMapInfo,
	GetModuleInfo = function(...) local results = {getModuleInfo(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetLoadedModules = function(...) local results = {getLoadedModules(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	ShowChat = showChat,
	OutputConsole = outputConsole,
	ClearChatBox = clearChatBox,
	OutputServerLog = outputServerLog,
	OutputChatBox = outputChatBox,
	CreatePed = function(...) local results = {createPed(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetPedGravity = function(...) local results = {getPedGravity(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	ReloadPedWeapon = reloadPedWeapon,
	SetPedArmor = setPedArmor,
	SetPedChoking = setPedChoking,
	SetPedFightingStyle = setPedFightingStyle,
	SetPedGravity = setPedGravity,
	SetPedWearingJetpack = setPedWearingJetpack,
	GetPickupRespawnInterval = function(...) local results = {getPickupRespawnInterval(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	SetPickupRespawnInterval = setPickupRespawnInterval,
	IsPickupSpawned = isPickupSpawned,
	ForcePlayerMap = forcePlayerMap,
	GetAlivePlayers = function(...) local results = {getAlivePlayers(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetPlayerIdleTime = function(...) local results = {getPlayerIdleTime(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetPlayerBlurLevel = function(...) local results = {getPlayerBlurLevel(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetDeadPlayers = function(...) local results = {getDeadPlayers(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetPlayerAnnounceValue = function(...) local results = {getPlayerAnnounceValue(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetPlayerCount = function(...) local results = {getPlayerCount(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetPlayerACInfo = function(...) local results = {getPlayerACInfo(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetPlayerIP = function(...) local results = {getPlayerIP(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetPlayerMoney = function(...) local results = {getPlayerMoney(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetPlayerSerial = function(...) local results = {getPlayerSerial(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetPlayerVersion = function(...) local results = {getPlayerVersion(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	IsPlayerMuted = isPlayerMuted,
	GetPlayerWantedLevel = function(...) local results = {getPlayerWantedLevel(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetRandomPlayer = function(...) local results = {getRandomPlayer(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	SetPlayerMoney = setPlayerMoney,
	GivePlayerMoney = givePlayerMoney,
	SetPlayerAnnounceValue = setPlayerAnnounceValue,
	ResendPlayerACInfo = resendPlayerACInfo,
	RedirectPlayer = redirectPlayer,
	IsPlayerMapForced = isPlayerMapForced,
	SetPlayerBlurLevel = setPlayerBlurLevel,
	SetPlayerMuted = setPlayerMuted,
	ResendPlayerModInfo = resendPlayerModInfo,
	SetPlayerName = setPlayerName,
	SetPlayerHudComponentVisible = setPlayerHudComponentVisible,
	SetPlayerTeam = setPlayerTeam,
	SetPlayerVoiceIgnoreFrom = setPlayerVoiceIgnoreFrom,
	SetPlayerVoiceBroadcastTo = setPlayerVoiceBroadcastTo,
	SetPlayerWantedLevel = setPlayerWantedLevel,
	SpawnPlayer = spawnPlayer,
	TakePlayerScreenShot = takePlayerScreenShot,
	DetonateSatchels = detonateSatchels,
	TakePlayerMoney = takePlayerMoney,
	AddResourceConfig = function(...) local results = {addResourceConfig(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	AddResourceMap = function(...) local results = {addResourceMap(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	CreateResource = function(...) local results = {createResource(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	CallRemote = callRemote,
	CopyResource = function(...) local results = {copyResource(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	DeleteResource = deleteResource,
	GetResourceACLRequests = function(...) local results = {getResourceACLRequests(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetResourceInfo = function(...) local results = {getResourceInfo(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetResourceLastStartTime = function(...) local results = {getResourceLastStartTime(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetResourceLoadFailureReason = function(...) local results = {getResourceLoadFailureReason(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetResourceLoadTime = function(...) local results = {getResourceLoadTime(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetResourceMapRootElement = function(...) local results = {getResourceMapRootElement(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetResources = function(...) local results = {getResources(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	RestartResource = restartResource,
	RefreshResources = refreshResources,
	GetResourceOrganizationalPath = function(...) local results = {getResourceOrganizationalPath(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	RemoveResourceFile = removeResourceFile,
	IsResourceArchived = isResourceArchived,
	RenameResource = renameResource,
	StartResource = startResource,
	SetResourceInfo = setResourceInfo,
	GetServerHttpPort = function(...) local results = {getServerHttpPort(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	StopResource = stopResource,
	GetServerPassword = function(...) local results = {getServerPassword(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	UpdateResourceACLRequest = updateResourceACLRequest,
	GetServerName = function(...) local results = {getServerName(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetMaxPlayers = function(...) local results = {getMaxPlayers(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	SetMaxPlayers = setMaxPlayers,
	GetServerPort = function(...) local results = {getServerPort(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	SetGlitchEnabled = setGlitchEnabled,
	IsGlitchEnabled = isGlitchEnabled,
	Shutdown = shutdown,
	SetServerPassword = setServerPassword,
	Set = set,
	DbConnect = function(...) local results = {dbConnect(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	Get = function(...) local results = {get(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	DbExec = dbExec,
	ExecuteSQLQuery = function(...) local results = {executeSQLQuery(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	DbPrepareString = function(...) local results = {dbPrepareString(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	DbPoll = function(...) local results = {dbPoll(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	CreateTeam = function(...) local results = {createTeam(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	DbQuery = function(...) local results = {dbQuery(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	DbFree = dbFree,
	SetTeamColor = setTeamColor,
	SetTeamFriendlyFire = setTeamFriendlyFire,
	SetTeamName = setTeamName,
	TextDestroyDisplay = textDestroyDisplay,
	TextCreateDisplay = function(...) local results = {textCreateDisplay(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	TextCreateTextItem = function(...) local results = {textCreateTextItem(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	TextDisplayAddObserver = function(...) local results = {textDisplayAddObserver(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	TextDestroyTextItem = function(...) local results = {textDestroyTextItem(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	TextDisplayAddText = function(...) local results = {textDisplayAddText(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	TextDisplayIsObserver = textDisplayIsObserver,
	TextDisplayGetObservers = function(...) local results = {textDisplayGetObservers(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	TextDisplayRemoveText = function(...) local results = {textDisplayRemoveText(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	TextDisplayRemoveObserver = textDisplayRemoveObserver,
	TextItemGetPosition = function(...) return System.tuple(textItemGetPosition(...)) end,
	TextItemGetColor = function(...) return System.tuple(textItemGetColor(...)) end,
	TextItemGetText = function(...) local results = {textItemGetText(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	TextItemGetScale = function(...) local results = {textItemGetScale(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	TextItemGetPriority = function(...) local results = {textItemGetPriority(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	TextItemSetColor = textItemSetColor,
	TextItemSetPriority = function(...) local results = {textItemSetPriority(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	TextItemSetScale = textItemSetScale,
	TextItemSetPosition = textItemSetPosition,
	TextItemSetText = function(...) local results = {textItemSetText(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetNetworkStats = function(...) local results = {getNetworkStats(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetServerConfigSetting = function(...) local results = {getServerConfigSetting(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	SetServerConfigSetting = setServerConfigSetting,
	CreateVehicle = function(...) local results = {createVehicle(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	BlowVehicle = blowVehicle,
	AddVehicleSirens = addVehicleSirens,
	GetModelHandling = function(...) local results = {getModelHandling(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	GetVehicleRespawnRotation = function(...) return System.tuple(getVehicleRespawnRotation(...)) end,
	GetVehicleRespawnPosition = function(...) return System.tuple(getVehicleRespawnPosition(...)) end,
	GetVehiclesOfType = function(...) local results = {getVehiclesOfType(...)} if results[1] == false then System.throw(Slipe.MtaDefinitions.MtaException()) return end return unpack(results) end,
	ResetVehicleExplosionTime = resetVehicleExplosionTime,
	ResetVehicleIdleTime = resetVehicleIdleTime,
	RemoveVehicleSirens = removeVehicleSirens,
	RespawnVehicle = respawnVehicle,
	SetVehicleIdleRespawnDelay = setVehicleIdleRespawnDelay,
	SetModelHandling = setModelHandling,
	SetVehicleRespawnDelay = setVehicleRespawnDelay,
	ToggleVehicleRespawn = toggleVehicleRespawn,
	SetVehicleRespawnRotation = setVehicleRespawnRotation,
	SpawnVehicle = spawnVehicle,
	SetVehicleRespawnPosition = setVehicleRespawnPosition,
	SetVehicleVariant = setVehicleVariant,
	GiveWeapon = giveWeapon,
	GetJetpackWeaponEnabled = getJetpackWeaponEnabled,
	SetJetpackWeaponEnabled = setJetpackWeaponEnabled,
	TakeWeapon = takeWeapon,
	TakeAllWeapons = takeAllWeapons,
})