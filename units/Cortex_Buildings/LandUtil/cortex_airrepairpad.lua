return {
	cortex_airrepairpad = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 0,
		energycost = 4400,
		metalcost = 400,
		builddistance = 136,
		builder = true,
		buildpic = "cortex_airrepairpad.DDS",
		buildtime = 9300,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -9 0",
		collisionvolumescales = "135 27 135",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 9,
		footprintz = 9,
		idleautoheal = 5,
		idletime = 1800,
		mass = 200000,
		health = 1780,
		maxslope = 10,
		maxwaterdepth = 1,
		objectname = "Units/cortex_airrepairpad.s3o",
		onoffable = true,
		script = "Units/cortex_airrepairpad.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 357.5,
		terraformspeed = 5000,
		workertime = 1000,
		yardmap = "ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/cortex_airrepairpad_aoplane.dds",
			buildinggrounddecalsizey = 11,
			buildinggrounddecalsizex = 11,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'buildert2',
			isairbase = true,
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
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "135 20 135",
				collisionvolumetype = "Box",
				damage = 1143,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 377,
				object = "Units/cortex_airrepairpad_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 572,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 131,
				object = "Units/cortex_4x4C.s3o",
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
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "pairactv",
			},
		},
	},
}
