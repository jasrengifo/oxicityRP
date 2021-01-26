Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.SecurityStations = {

	Security = {

		Blip = {
			Pos     = { x = -5.126, y = -691.325, z = 16.130 },
			Sprite  = 120,
			Display = 4,
			Scale   = 1.2,
			Colour  = 59,
		},

		-- https://wiki.rage.mp/index.php?title=Weapons
		AuthorizedWeapons = {
			{ name = 'weapon_knife',       price = 0 },
			{ name = 'weapon_flashlight',       price = 0 },
			{ name = 'weapon_stungun',      price = 0 },
			{ name = 'weapon_pistol50',     price = 0 },
			{ name = 'WEAPON_SPECIALCARBINE',       price = 0 },
			{ name = 'WEAPON_SNIPERRIFLE',          price = 0 },
		},

		Cloakrooms = {
			{ x = -9.746, y = -692.164, z = 15.130 },
			{ x = -1581.619, y = -3018.643, z = -80.005 },
			{ x = -127.688, y = -633.300, z = 167.820 },
		},

		Armories = {
			{ x = -14.250, y = -696.874, z = 15.130 },
		},

		Vehicles = {
			{
				Spawner    = { x = -12.441, y = -669.398, z = 31.442 },
				SpawnPoint = { x = -5.719, y = -669.686, z = 31.338 },
				Heading    = 184.677
			}

		},

		Helicopters = {
			{
				Spawner    = { x = -138.826, y = -586.031, z = 205.916 },
				SpawnPoint = { x = -144.542, y = -593.211, z = 211.775 },
				Heading    = 320.01
			}
		},

		VehicleDeleters = {
			{ x = -19.699, y = -670.683, z = 31.338 }
		},

		BossActions = {
			{ x = -125.739, y = -640.697, z = 167.835 }
		},

	},

}

-- https://wiki.rage.mp/index.php?title=Vehicles
Config.AuthorizedVehicles = {
	Shared = {
	},

	recruit = {
		{
			model = 'stockade',
			label = 'Fourgons Blindé'
		},
		{
			model = 'xls2',
			label = 'XLS Blindé'
		},
		{
			model = 'mesa3',
			label = 'Mesa Transport'
		},
	},

	officer = {
	    {
			model = 'stockade',
			label = 'Fourgons Blindé'
		},
		{
			model = 'xls2',
			label = 'XLS Blindé'
		},
		{
			model = 'mesa3',
			label = 'Mesa Transport'
		},
	},

	sergeant = {
		{
			model = 'stockade',
			label = 'Fourgons Blindé'
		},
		{
			model = 'xls2',
			label = 'XLS Blindé'
		},
		{
			model = 'mesa3',
			label = 'Mesa Transport'
		},
	},

	lieutenant = {
		{
			model = 'stockade',
			label = 'Fourgons Blindé'
		},
		{
			model = 'xls2',
			label = 'XLS Blindé'
		},
		{
			model = 'mesa3',
			label = 'Mesa Transport'
		},
		{
			model = 'baller6',
			label = 'Baller Blindé 4x4'
		},
		{
			model = 'insurgent2',
			label = 'Insurgent Anti-Emeute'
		},
	},

	boss = {
		{
			model = 'stockade',
			label = 'Fourgons Blindé'
		},
		{
			model = 'xls2',
			label = 'XLS Blindé'
		},
		{
			model = 'mesa3',
			label = 'Mesa Transport'
		},
		{
			model = 'baller6',
			label = 'Baller Blindé 4x4'
		},
		{
			model = 'insurgent2',
			label = 'Insurgent Anti-Emeute'
		},
		{
			model = 'silv',
			label = 'Pick-up Gyro'
		},
	},
}


-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	boss_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 32,  ['tshirt_2'] = 2,
			['torso_1'] = 32,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 12,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['glasses_1'] = 4,	['glasses_2'] = 2,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 160,  ['tshirt_2'] = 0,
			['torso_1'] = 170,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 15,
			['pants_1'] = 25,   ['pants_2'] = 3,
			['shoes_1'] = 8,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 16,  ['bproof_2'] = 2
		},
		female = {
			['bproof_1'] = 17,  ['bproof_2'] = 2
		}
	},
	bullet_bodyguard_wear = {
		male = {
			['bproof_1'] = 3,  ['bproof_2'] = 1
		},
		female = {
			['bproof_1'] = 4,  ['bproof_2'] = 1
		}
	},
	videur_wear = {
		male = {
			['tshirt_1'] = 10,  ['tshirt_2'] = 2,
			['torso_1'] = 4,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 4,
			['pants_1'] = 10,   ['pants_2'] = 0,
			['shoes_1'] = 21,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 38,    ['chain_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0,
			['glasses_1'] = 9,	['glasses_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 2,
			['torso_1'] = 7,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 7,
			['pants_1'] = 37,   ['pants_2'] = 0,
			['shoes_1'] = 42,   ['shoes_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 22,    ['chain_2'] = 0,
			['glasses_1'] = 24,	['glasses_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	bodyguard_wear = {
		male = {
			['tshirt_1'] = 11,  ['tshirt_2'] = 0,
			['torso_1'] = 4,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 2,
			['arms'] = 12,
			['pants_1'] = 10,   ['pants_2'] = 0,
			['shoes_1'] = 11,   ['shoes_2'] = 12,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['glasses_1'] = 7,	['glasses_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 39,  ['tshirt_2'] = 0,
			['torso_1'] = 7,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 7,
			['pants_1'] = 6,   ['pants_2'] = 0,
			['shoes_1'] = 6,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0,
			['glasses_1'] = 24,	['glasses_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	op_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 50,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 17,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = -1, ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = 129,   ['mask_2'] = 1,
			['glasses_1'] = 0,	['glasses_2'] = 0
		},
		female = {
			['tshirt_1'] = 14,  ['tshirt_2'] = 0,
			['torso_1'] = 43,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 18,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = 129,   ['mask_2'] = 1,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	}

}