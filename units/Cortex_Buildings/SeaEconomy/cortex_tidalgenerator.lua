return {
	cortex_tidalgenerator = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 4096,
		energycost = 250,
		metalcost = 85,
		buildpic = "cortex_tidalgenerator.DDS",
		buildtime = 2100,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "-3 2 -1",
		collisionvolumescales = "28 30 33",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energystorage = 50,
		explodeas = "tidal",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		health = 395,
		maxslope = 10,
		minwaterdepth = 20,
		objectname = "Units/cortex_tidalgenerator.s3o",
		onoffable = false,
		script = "Units/cortex_tidalgenerator.cob",
		seismicsignature = 0,
		selfdestructas = "tidalSelfd",
		sightdistance = 130,
		tidalgenerator = 1,
		waterline = 7,
		yardmap = "wwwwwwwww",
		customparams = {
			unitgroup = 'energy',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "cortex_buildings/seaeconomy",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.0854949951172 0.00585021972656 -1.6875",
				collisionvolumescales = "43.4789733887 28.4617004395 39.825012207",
				collisionvolumetype = "Box",
				damage = 145,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 4,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 53,
				object = "Units/cortex_tidalgenerator_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 185,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 17,
				object = "Units/cortex_2x2D.s3o",
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
			canceldestruct = "cancel2",
			underattack = "warning1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "tidegen2",
			},
		},
	},
}
