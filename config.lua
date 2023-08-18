Config               = {}

Config.Locale = GetConvar('esx:locale', 'hu')

Config.LicenseEnable = true -- enable air license? Requires esx_license
Config.LicensePrice  = 50000

Config.MarkerType    = 2
Config.DrawDistance  = 10.0

Config.Marker = {
	r = 50, g = 205, b = 50, -- blue-ish color
	x = 0.3, y = 0.2, z = 0.15  -- standard size circle
}

Config.StoreMarker = {
	r = 50, g = 205, b = 50,     -- red color
	x = 0.3, y = 0.2, z = 0.15  -- big circle for storing air
}

Config.Zones = {

	Garages = {
		{ -- Shank St, nearby campaign air garage
			GaragePos  = vector3(-1054.430786, -2956.087891, 13.963379),
			SpawnPoint = vector4(-1054.430786, -2956.087891, 13.963379, 184.251968),
			StorePos   = vector3(-1052.729614, -2974.602295, 13.946533),
			StoreTP    = vector4(-1052.729614, -2974.602295, 13.946533, 133.228333)
		}
	},

	AirShops = {
		{ -- Shank St, nearby campaign air garage
			Outside = vector3(-976.048340, -2967.046143, 13.929688),
			Inside = vector4(-976.048340, -2967.046143, 13.929688, 144.566910)
		}
	}

}

Config.Vehicles = {
	{model = 'polmav', label = 'Police Maverick', price = 7500}
}

exports('getGarages', function()
	return Config.Zones.Garages
end)
