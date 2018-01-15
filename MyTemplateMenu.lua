local MyTemplate = MyTemplate or {}

function MyTemplate.CreateMenu(savedVars, defaults)

	local LAM = LibStub:GetLibrary("LibAddonMenu-2.0")

	local panelData = {
		type = "panel",
		name = MyTemplate.name,
		displayName = name,
	 	author = MyTemplate.author,
		version = MyTemplate.version,
		registerForRefresh = true,
		registerForDefaults = true,
		slashCommand = "/MyTemplate",	
	}

	LAM:RegisterAddonPanel("MyTemplate_OptionsPanel", panelData)

	local optionsData = { -- optionsData 
		{	-- checkbox: use global settings
			type 	= "checkbox",
			name 	= "use global settings",
			getFunc = function() return MyTemplate.settings.useGlobalSettings end,
			setFunc = function(value) MyTemplate.set("useGlobalSettings", value, true) end,
		},	

		--[[
		{	-- button 1
			type = "button",
			name = "button1",
			func = MyTemplate.button1,
		},

		{	-- checkbox 1
			type 	= "checkbox",
			name 	= "checkbox1",
			getFunc = function() return MyTemplate.get("checkbox1") end,
			setFunc = function(value) MyTemplate.set("checkbox1", value) end,
		},
		]]

	}

	LAM:RegisterOptionControls("MyTemplate_OptionsPanel", optionsData)

end
