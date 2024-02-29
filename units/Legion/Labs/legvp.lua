return {
	legvp = {
		maxacc = 0,
		maxdec = 0,
		buildangle = 2048,
		energycost = 1800,
		metalcost = 720,
		builder = true,
		buildpic = "LEGVP.DDS",
		buildtime = 7200,
		canmove = true,
		category = "ALL NOTLAND NOWEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "3 15 2",
		collisionvolumescales = "101 40 106",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energystorage = 100,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 7,
		footprintz = 7,
		idleautoheal = 5,
		idletime = 1800,
		levelground = false,
		health = 3000,
		maxslope = 15,
		maxwaterdepth = 0,
		metalstorage = 100,
		objectname = "Units/cortex_vehicleplant.s3o",
		radardistance = 50,
		script = "Units/cortex_vehicleplant.lua",
		seismicsignature = 0,
		selfdestructas = "largeBuildingexplosiongenericSelfd",
		sightdistance = 279,
		terraformspeed = 500,
		workertime = 100,
		yardmap = "ooooooo ooooooo ooooooo oocccoo oocccoo oocccoo oocccoo",
		buildoptions = {
			[1] = "cortex_rascal",
			[2] = "legcv",
			[3] = "leghades",
			[4] = "leghelios",
			[5] = "leggat",
			[6] = "legbar",
			[7] = "legrail",
		},
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/cortex_vehicleplant_aoplane.dds",
			buildinggrounddecalsizey = 9,
			buildinggrounddecalsizex = 9,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'builder',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "cortex_buildings/landfactories",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -13 0",
				collisionvolumescales = "101 40 106",
				collisionvolumetype = "BOX",
				damage = 1590,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 7,
				footprintz = 7,
				height = 20,
				hitdensity = 100,
				metal = 470,
				object = "Units/cortex_vehicleplant_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 795,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 7,
				footprintz = 7,
				height = 4,
				hitdensity = 100,
				metal = 188,
				object = "Units/cortex_7x7B.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:WhiteLight",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			unitcomplete = "unitready",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "vehplantselect",
			},
		},
	},
}
