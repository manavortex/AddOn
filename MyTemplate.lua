MyTemplate = {}

local defaults = {

	"useGlobalSettings" = false,
	
}

function MyTemplate_Initialize(eventCode, addonName)

	if addonName ~="MyTemplate" then return end

	EVENT_MANAGER:UnregisterForEvent("MyTemplate", EVENT_ADD_ON_LOADED)
	
	MyTemplate.settings = ZO_SavedVars:New("MyTemplate_Settings", 0.2, nil, defaults)
	MyTemplate.globalSettings = ZO_SavedVars:NewAccountWide("MyTemplate_Globals", 0.2, "MyTemplate_Global", defaults)
	
	MyTemplate.CreateMenu(MyTemplate.settings, defaults)

end

EVENT_MANAGER:RegisterForEvent("MyTemplate", EVENT_ADD_ON_LOADED, MyTemplate_Initialize)
