local AddOn = AddOn

function AddOn.CreateMenu(savedVars, defaults)

	local LAM = LibStub:GetLibrary("LibAddonMenu-2.0")
	local panelData = {
		type = "panel",
		name = AddOn.name,
		displayName = name,
	 	author = AddOn.author,
		version = AddOn.version,
		registerForRefresh = true,
		slashCommand = "/AddOn",	}

	LAM:RegisterAddonPanel("AddOn_OptionsPanel", panelData)

	local optionsData = { -- optionsData 
		
	},
	LAM:RegisterOptionControls("AddOn_OptionsPanel", optionsData)

end
