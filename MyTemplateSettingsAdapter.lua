local MyTemplate = MyTemplate or {}

local function getSettings()
	if MyTemplate.settings.useGlobalSettings then return MyTemplate.globalSettings end
	return MyTemplate.settings
end

 function MyTemplate.button1() 

 end
 

 function MyTemplate.get(key)
 	if nil == key then return end
 	return getSettings()[key]
 end

 function MyTemplate.set(key, value)
 	if nil == key then return end
 	getSettings()[key] = value
 end