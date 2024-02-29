return {
	armada_beaver = {
		maxacc = 0.01842,
		maxdec = 0.11052,
		energycost = 3100,
		metalcost = 150,
		builddistance = 112,
		builder = true,
		buildpic = "armada_beaver.DDS",
		buildtime = 6700,
		canmove = true,
		category = "ALL TANK PHIB NOTSUB  NOWEAPON NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "34 22 41",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energymake = 8,
		energystorage = 50,
		explodeas = "mediumexplosiongeneric-phib",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 1030,
		maxslope = 16,
		speed = 42.0,
		maxwaterdepth = 255,
		movementclass = "ATANK3",
		objectname = "Units/armada_beaver.s3o",
		script = "Units/armada_beaver.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd-phib",
		sightdistance = 266,
		terraformspeed = 400,
		trackstrength = 5,
		tracktype = "armada_pincer_tracks",
		trackwidth = 34,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.9834,
		turnrate = 311,
		workertime = 80,
		buildoptions = {
			[1] = "armada_solarcollector",
			[2] = "armada_advancedsolarcollector",
			[3] = "armada_windturbine",
			[4] = "armada_geothermalpowerplant",
			[5] = "armada_metalstorage",
			[6] = "armada_energystorage",
			[7] = "armada_metalextractor",
			[8] = "armada_twilight",
			[9] = "armada_energyconverter",
			[10] = "armada_botlab",
			[11] = "armada_vehicleplant",
			[12] = "armada_aircraftplant",
			[13] = "armada_hovercraftplatform",
			[14] = "armada_advancedvehicleplant",
			[15] = "armada_constructionturret",
			[16] = "armada_navalconstructionturret",
			[17] = "armada_beholder",
			[18] = "armada_radartower",
			[19] = "armada_dragonsteeth",
			[20] = "armada_dragonsclaw",
			[21] = "armada_sentry",
			[22] = "armada_beamer",
			[23] = "armada_overwatch",
			[24] = "armada_gauntlet",
			[25] = "armada_nettle",
			[26] = "armada_ferret",
			[27] = "armada_chainsaw",
			[28] = "armada_juno",
			[29] = "armada_anemone",
			[30] = "armada_sneakypete",
			[31] = "armada_navalhovercraftplatform",
			[32] = "armada_shipyard",
			[33] = "armada_tidalgenerator",
			[34] = "armada_navalenergyconverter",
			[35] = "armada_navalmetalstorage",
			[36] = "armada_navalenergystorage",
			[37] = "armada_amphibiouscomplex",
			[38] = "armada_seaplaneplatform",
			[39] = "armada_sharksteeth",
			[40] = "armada_navalradarsonar",
			[41] = "armada_manta",
			[42] = "armada_navalnettle",
			[43] = "armada_harpoon2",
			[44] = "armada_geothermalpowerplant",
		},
		customparams = {
			unitgroup = 'builder',
			area_mex_def = "armada_metalextractor",
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armada_vehicles",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.732467651367 -1.39770507808e-05 0.332275390625",
				collisionvolumescales = "34.8473205566 22.7869720459 36.573059082",
				collisionvolumetype = "Box",
				damage = 555,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 92,
				object = "Units/armada_beaver_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 278,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 37,
				object = "Units/armada_3x3C.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "tnkt1canamphok",
			},
			select = {
				[1] = "tnkt1canamphsel",
			},
		},
	},
}
