return {
	armada_amphibiouscomplex = {
		maxacc = 0,
		maxdec = 0,
		energycost = 5500,
		metalcost = 1200,
		builder = true,
		buildpic = "armada_amphibiouscomplex.DDS",
		buildtime = 11100,
		canmove = true,
		category = "ALL NOTSUB NOWEAPON NOTAIR NOTHOVER SURFACE UNDERWATER EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "118 40 119",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energystorage = 150,
		explodeas = "largeBuildingexplosiongeneric-uw",
		footprintx = 8,
		footprintz = 8,
		idleautoheal = 5,
		idletime = 1800,
		health = 2650,
		maxslope = 10,
		minwaterdepth = 25,
		objectname = "Units/armada_amphibiouscomplex.s3o",
		script = "Units/armada_amphibiouscomplex.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd-uw",
		sightdistance = 234,
		terraformspeed = 750,
		workertime = 150,
		yardmap = "oooooooooCCCCCCooCCCCCCooCCCCCCooCCCCCCooCCCCCCooCCCCCCooCCCCCCo",
		buildoptions = {
			[1] = "armada_beaver",
			[2] = "armada_pincer",
			[3] = "armada_turtle",
			[4] = "armada_crossbow",
			[5] = "armada_archangel",
			[6] = "armada_decoycommander",
		},
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armada_amphibiouscomplex_aoplane.dds",
			buildinggrounddecalsizey = 11,
			buildinggrounddecalsizex = 11,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'builder',
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armada_buildings/seafactories",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0 0 2",
				collisionvolumescales = "118 35 107",
				collisionvolumetype = "Box",
				damage = 1440,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 7,
				footprintz = 7,
				height = 5,
				hitdensity = 100,
				metal = 800,
				object = "Units/armada_amphibiouscomplex_dead.s3o",
				reclaimable = true,
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
				[1] = "pvehactv",
			},
		},
	},
}
