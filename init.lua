function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 5.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = true

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target
Config.OpenKey = 'LMENU' -- Left Alt
Config.OpenControlKey = 19 -- Control for keypress detection also Left Alt for the eye itself, controls are found here https://docs.fivem.net/docs/game-references/controls/

-- Key to open the menu
Config.MenuControlKey = 238 -- Control for keypress detection on the context menu, this is the Right Mouse Button, controls are found here https://docs.fivem.net/docs/game-references/controls/

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {


}

Config.BoxZones = {
	  ["fingerprint"] = {
        name = "fingerprint",
        coords = vector3(460.9667, -989.180, 24.92),
        length = 0.6,
        width = 0.6,
        heading = 6.39,
        debugPoly = false,
        minZ = 24.79,
        maxZ = 34.04,
        options = {
            {
                type = "client",
                event = "police:client:fingerprint",
                icon = "fas fa-fingerprint",
                label = "Huella dactilar",
                job = "police",
            },
        },
        distance = 1.5
      },
	--       ["BankLegion"] = {
    --     name = "BankLogin",
    --     coords = vector3(149.70, -1041.33, 29.37),
    --     length = 2.0,
    --     width = 0.45,
    --     heading = 250.0,
    --     debugPoly = true,
    --     minZ = 28.5,
    --     maxZ = 30.4,
    --     options = {
    --         {
    --           type = "client",
    --           event = "qb-banking:openBankScreen",
    --           icon = "fas fa-sign-in-alt",
    --           label = "Start Banking",
    --         },
    --     },
    --     distance = 2.5
    -- },
	--   ["hospitalCheckin"] = {
    --     name = "hospitalCheckin",
    --     coords = vector3(307.54, -595.3, 43.28),
    --     length = 0.5,
    --     width = 0.35,
    --     heading = 337,
    --     debugPoly = true,
    --     minZ=43.08,
    --     maxZ=43.18,
    --     options = {
    --         {
    --             type = "client",
    --             event = "ambulance:client:checkin",
    --             icon = "fas fa-sign-in-alt",
    --             label = "Check In",
    --         },
    --     },
    --     distance = 2.0
    -- },

}

Config.PolyZones = {

}

Config.TargetBones = {

}

Config.TargetEntities = {

}

Config.TargetModels = {
	["atms"] = {
        models = {
            'prop_atm_01',
            'prop_atm_02',
            'prop_atm_03',
            'prop_fleeca_atm',
        },
        options = {
            {
                type = "command",
                event = "atm",
                icon = "fas fa-clipboard",
                label = "Acceder al cajero",
            },
        },
        distance = 1.5
    },
	["shops"] = {
        models = {
            'prop_till_01',
        },
        options = {
            {
                type = "client",
                event = "qb-shops:marketshop",
                icon = "fas fa-clipboard",
                label = "Comprar",
            },
        },
        distance = 1.5
    },
	["banco"] = {
        models = {
            'ig_molly',
        },
        options = {
            {
                type = "client",
                event = "qb-banking:openBankScreen",
                icon = "fas fa-university",
                label = "Acceder",
            },
        },
        distance = 1.5
    },
	["trashsearch"] = {
        models = {
			-1096777189,--normal small
			666561306,--big
			1437508529,--small circle
			-1426008804,--small open circle
			-228596739,--open small circle
			161465839,--werid blue small circle
			651101403,--open medium circle

        },
        options = {
            {
                type = "client",
                event = "qb-trashsearch:client:searchtrash",
                icon = "fas fa-pencil-ruler",
                label = "Buscar basura",
            },
        },
        distance = 2.1
    },
    ["VehicleRental"] = {
        models = {
            `a_m_y_business_03`,
        },
        options = {
            {
                type = "client",
                event = "qb-rental:openMenu",
                icon = "fas fa-car",
                label = "Rentar un vehiculo",
            },
        },
        distance = 4.0
    },
	["burgershotgarage"] = {
		models = {
			"ig_floyd",
		},
		options = {
			{
				type = "client",
				event = "garage:BurgerShotGarage",
				icon = "fas fa-car",
				label = "BurgerShot Garage",
				job = "burgershot",
			}
		},
		distance = 2.5,
	},

}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {

}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {

}
-- banco cubitos
Config.Peds = {
	["Comisaria"] = {
		model = 'csb_cop', 
		coords = vector4(454.05, -979.96, 30.69, 88.11),
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true,
		target = { 
			options = {
				{
					type = "client",
                	event = "police:openPDArmory",
                	icon = "fas fa-clipboard",
                	label = "Armeria",
                	job = "police",
				},{
					type = "client",
					event = "police:client:pstash",
					icon = "fas fa-university",
					label = "Almacenamiento",
					job = "police",
				},
			},
			distance = 2.5,
		},
		currentpednumber = 0,
	  },
	  ["herramientas"] = {
		model = 'ig_talcc', 
		coords = vector4(46.16, -1749.02, 29.63, 49.59),
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true,
		target = { 
			options = {
				{
				type = "client",
                event = "qb-shops:marketshop",
                icon = "fas fa-clipboard",
                label = "Comprar",
				},
			},
			distance = 1.5,
		},
		currentpednumber = 0,
	  },
	  ["herramientaspaleto"] = {
		model = 'ig_terry', 
		coords = vector4(-421.87, 6136.16, 31.88, 171.9),
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true,
		target = { 
			options = {
				{
				type = "client",
                event = "qb-shops:marketshop",
                icon = "fas fa-clipboard",
                label = "Comprar",
				},
			},
			distance = 1.5,
		},
		currentpednumber = 0,
	  },
	  ["herramientasyoutool"] = {
		model = 's_m_m_ccrew_01', 
		coords = vector4(2747.76, 3472.93, 55.67, 243.75),
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true,
		target = { 
			options = {
				{
				type = "client",
                event = "qb-shops:marketshop",
                icon = "fas fa-clipboard",
                label = "Comprar",
				},
			},
			distance = 1.5,
		},
		currentpednumber = 0,
	  },
	  ["GarbagePed"] = {
		model = 's_m_y_garbage', 
		coords = vector4(-349.96, -1569.92, 25.22, 296.46),
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true,
		target = { 
		  options = {
			 {
				 type = "server",
				 event = "garbage:server:getGarbageJob",
				 icon = "fas fa-sign-in-alt",
				 label = "Trabajar como basurero",
			 },
			 {
				 type = "client",
				 event = "garbage:getTruck",
				 icon = "fas fa-sign-in-alt",
				 label = "Pedir camion",
			 },
			 {
				 type = "server",
				 event = "garbagejob:server:PayShift",
				 icon = "fas fa-sign-in-alt",
				 label = "Cobrar",
			 },
		 },
		 distance = 1.5,
	 },
 },

}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function ItemCount() return true end
local function CitizenCheck() return true end

CreateThread(function()
	if not Config.Standalone then
		local QBCore = exports['qb-core']:GetCoreObject()
		local PlayerData = QBCore.Functions.GetPlayerData()

		ItemCount = function(item)
			for _, v in pairs(PlayerData.items) do
				if v.name == item then
					return v.amount
				end
			end
			return 0
		end

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return (citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid])
		end

		RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
			PlayerData = QBCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
			PlayerData = {}
		end)

		RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	else
		local firstSpawn = false
		AddEventHandler('playerSpawned', function()
			if not firstSpawn then
				SpawnPeds()
				firstSpawn = true
			end
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.item and ItemCount(data.item) < 1 then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end