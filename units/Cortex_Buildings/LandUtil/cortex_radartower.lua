return {
	cortex_radartower = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 16000,
		energycost = 630,
		metalcost = 60,
		buildpic = "cortex_radartower.DDS",
		buildtime = 1140,
		canattack = false,
		canrepeat = false,
		cantbetransported = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -12 0",
		collisionvolumescales = "32 99 32",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "smallBuildingexplosiongeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		sightemitheight = 72,
		mass = 5100,
		health = 90,
		maxslope = 10,
		maxwaterdepth = 0,
		objectname = "Units/cortex_radartower.s3o",
		onoffable = false,
		radardistance = 2100,
		radaremitheight = 72,
		script = "Units/cortex_radartower.cob",
		seismicsignature = 0,
		selfdestructas = "smallBuildingExplosionGenericSelfd",
		sightdistance = 680,
		yardmap = "oooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/cortex_radartower_aoplane.dds",
			buildinggrounddecalsizey = 4,
			buildinggrounddecalsizex = 4,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'util',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "cortex_buildings/landutil",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.353988647461 -0.0323567626953 1.37395477295",
				collisionvolumescales = "34.8413696289 57.1648864746 30.8629608154",
				collisionvolumetype = "Box",
				damage = 49,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 36,
				object = "Units/cortex_radartower_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 25,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 14,
				object = "Units/cortex_2x2D.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:radarpulse_t1_slow",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
			},
		},
		sounds = {
			activate = "cmd-on",
			canceldestruct = "cancel2",
			deactivate = "cmd-off",
			underattack = "warning1",
			working = "cmd-on",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "radarselect",
			},
		},
	},
}
