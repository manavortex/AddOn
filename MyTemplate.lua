MyTemplate = {}

-- will be used inside LibAddonMenu, so you might want to se tthose
MyTemplate.name     = "MyTemplate"
MyTemplate.author   = "you"
MyTemplate.version  = "1.0"

-- these are needed for the saved variables
local defaults = {
	"useGlobalSettings" = false,	
}

function MyTemplate_KeybindFunction()
	-- do something
end

function MyTemplate_Initialize(eventCode, addonName)

	if addonName ~="MyTemplate" then return end

	EVENT_MANAGER:UnregisterForEvent("MyTemplate", EVENT_ADD_ON_LOADED)
	
	MyTemplate.settings = ZO_SavedVars:New("MyTemplate_Settings", 0.2, nil, defaults)
	MyTemplate.globalSettings = ZO_SavedVars:NewAccountWide("MyTemplate_Globals", 0.2, "MyTemplate_Global", defaults)
	
	MyTemplate.CreateMenu(MyTemplate.settings, defaults)

end


ZO_CreateStringId("SI_BINDING_NAME_MY_TEMPLATE_KEYBIND", "My Template Keybinding")
EVENT_MANAGER:RegisterForEvent("MyTemplate", EVENT_ADD_ON_LOADED, MyTemplate_Initialize)
