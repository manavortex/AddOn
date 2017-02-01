AddOn = {}

local defaults = {}

function AddOn_Initialize(eventCode, addonName)

	if addonName ~="AddOn" then return end

	EVENT_MANAGER:UnregisterForEvent("AddOn", EVENT_ADD_ON_LOADED)
	
	AddOn.settings = ZO_SavedVars:New("AddOn_Settings", 0.2, nil, defaults)
	AddOn.globalSettings = ZO_SavedVars:NewAccountWide("AddOn_Globals", 0.2, "AddOn_Global", defaults)
	
	--DailyAutoShare.ActivateLocalDaily()
	AddOn.CreateMenu(AddOn.settings, defaults)

end

EVENT_MANAGER:RegisterForEvent("AddOn", EVENT_ADD_ON_LOADED, AddOn_Initialize)
