return {
	cortex_constructionbot = {
		maxacc = 0.5244,
		maxdec = 3.2775,
		energycost = 1750,
		metalcost = 120,
		builddistance = 130,
		builder = true,
		buildpic = "cortex_constructionbot.DDS",
		buildtime = 3550,
		canmove = true,
		category = "BOT MOBILE ALL NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 -1",
		collisionvolumescales = "25 31 25",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		energymake = 7,
		energystorage = 50,
		explodeas = "smallexplosiongeneric-builder",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		health = 660,
		maxslope = 20,
		speed = 34.5,
		maxwaterdepth = 25,
		movementclass = "BOT3",
		objectname = "Units/cortex_constructionbot.s3o",
		script = "Units/cortex_constructionbot.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-builder",
		sightdistance = 299,
		terraformspeed = 450,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.759,
		turnrate = 1201.75,
		upright = true,
		workertime = 80,
		buildoptions = {
			[1] = "cortex_solarcollector",
			[2] = "cortex_advancedsolarcollector",
			[3] = "cortex_windturbine",
			[4] = "cortex_geothermalpowerplant",
			[5] = "cortex_metalstorage",
			[6] = "cortex_energystorage",
			[7] = "cortex_metalextractor",
			[8] = "cortex_exploiter",
			[9] = "cortex_energyconverter",
			[10] = "cortex_advancedbotlab",
			[11] = "cortex_botlab",
			[12] = "cortex_vehicleplant",
			[13] = "cortex_aircraftplant",
			[14] = "cortex_hovercraftplatform",
			[15] = "cortex_constructionturret",
			[16] = "cortex_beholder",
			[17] = "cortex_radartower",
			[18] = "cortex_dragonsteeth",
			[19] = "cortex_dragonsmaw",
			[20] = "cortex_guard",
			[21] = "cortex_twinguard",
			[22] = "cortex_warden",
			[23] = "cortex_agitator",
			[24] = "cortex_thistle",
			[25] = "cortex_sam",
			[26] = "cortex_eradicator",
			[27] = "cortex_jellyfish",
			[28] = "cortex_castro",
			[29] = "cortex_juno",
			[30] = "cortex_shipyard",
		},
		customparams = {
			unitgroup = 'builder',
			area_mex_def = "cortex_metalextractor",
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "cortex_bots",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "30 15 30",
				collisionvolumetype = "Box",
				damage = 454,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 73,
				object = "Units/cortex_constructionbot_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 277,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 29,
				object = "Units/cortex_2x2F.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg3-builder",
				[2] = "deathceg2-builder",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture2",
			repair = "repair2",
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
				[1] = "kbcormov",
			},
			select = {
				[1] = "kbcorsel",
			},
		},
	},
}
