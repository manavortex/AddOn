local MyTemplate = MyTemplate

function MyTemplate.CreateMenu(savedVars, defaults)

	local LAM = LibStub:GetLibrary("LibAddonMenu-2.0")
	local panelData = {
		type = "panel",
		name = MyTemplate.name,
		displayName = name,
	 	author = MyTemplate.author,
		version = MyTemplate.version,
		registerForRefresh = true,
		slashCommand = "/MyTemplate",	}

	LAM:RegisterAddonPanel("MyTemplate_OptionsPanel", panelData)

	local optionsData = { -- optionsData 
		
	},
	LAM:RegisterOptionControls("MyTemplate_OptionsPanel", optionsData)

end
