return {
	legkeres = {
		acceleration = 0.02,
		brakerate = 0.04,
		buildcostenergy = 62000,
		buildcostmetal = 2900,
		buildpic = "LEGKERES.DDS",
		buildtime = 65000,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "57 33 71",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "explosiont3",
		footprintx = 5,
		footprintz = 5,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 23000,
		maxslope = 16,
		speed = 48.0,
		maxwaterdepth = 20,
		movementclass = "HTANK4",
		nochasecategory = "VTOL",
		objectname = "Units/LEGKERES.s3o",
		script = "Units/LEGKERES.cob",
		seismicsignature = 0,
		selfdestructas = "explosiont3xl",
		name = "Keres",
		sightdistance = 650,
		trackoffset = 16,
		trackstrength = 7,
		tracktype = "armada_advancedconstructionvehicle_tracks",
		trackwidth = 70,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.7,
		turnrate = 220,
		customparams = {
			normaltex = "unittextures/cor_normal.dds",
			paralyzemultiplier = 0.5,
			model_author = "EnderRobo",
			techlevel = 3,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "1.73252868652 -0.81482236084 -0.546882629395",
				collisionvolumescales = "37.1564331055 16.4705352783 33.7862091064",
				collisionvolumetype = "Box",
				damage = 20000,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 25,
				hitdensity = 100,
				metal = 1500,
				object = "Units/legkeres_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumeoffsets = "-1.01699066162 -0.66435255127 0.0775146484375",
				collisionvolumescales = "23.8865509033 22.2328948975 29.3510131836",
				collisionvolumetype = "Box",
				damage = 8000,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				hitdensity = 100,
				metal = 800,
				object = "Units/cor4X4C.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-small",
				[2] = "custom:barrelshot-tiny",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
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
				[1] = "tcormove",
			},
			select = {
				[1] = "tcorsel",
			},
		},
		weapondefs = {
			legkeres_cannon = {
				areaofeffect = 160,
				avoidfeature = false,
				burnblow = true,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.9,
				explosiongenerator = "custom:genericshellexplosion-large",
				impulsefactor = 2.4,
				impulseboost = 2.4,
				name = "Heavy riot cannon",
				noselfdamage = true,
				range = 450,
				reloadtime = 1.4,
				rgbcolor = "1 0.7 0.25",
				soundhit = "xplomed1",
				soundhitwet = "splslrg",
				soundstart = "largegun",
				soundhitvolume = 14,
				soundstartvolume = 13.0,
				separation = 2.0,
				nogap = false,
				size = 4,
				sizeDecay = 0.06,
				stages = 9,
				alphaDecay = 0.10,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 650,
				damage = {
					bombers = 50,
					default = 330,
					fighters = 50,
					subs = 150,
					vtol = 50,
				},
			},
			legkeres_gatling = {
				accuracy = 2,
				areaofeffect = 16,
				avoidfeature = false,
				burst = 8,
				burstrate = 0.075,
				burnblow = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.038,
				edgeeffectiveness = 0.85,
				explosiongenerator = "custom:plasmahit-sparkonly",
				fallOffRate = 0.2,
				firestarter = 0,
				impulseboost = 0.4,
				impulsefactor = 1.5,
				intensity = 0.8,
				name = "Heavy rotary cannon",
				noselfdamage = true,
				ownerExpAccWeight = 4.0,
				proximitypriority = 3,
				range = 481,--400,
				reloadtime = 1,
				rgbcolor = "1 0.95 0.4",
				--size = 2.25,
				soundhit = "bimpact3",
				soundhitwet = "splshbig",
				soundstart = "minigun3",
				soundstartvolume = 3,
				sprayangle = 1200,
				thickness = 0.91,
				tolerance = 6000,
				turret = true,
				--weapontimer = 1,
				weapontype = "LaserCannon",
				weaponvelocity = 900,
				damage = {
					default = 18,
				},
			},
		},
		weapons = {
			[1] = {
				def = "LEGKERES_CANNON",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "LEGKERES_GATLING",
				onlytargetcategory = "NOTSUB",
				slaveTo = 1,
			},
			[3] = {
				def = "LEGKERES_GATLING",
				onlytargetcategory = "NOTSUB",
				slaveTo = 1,
			},
		},
	},
}
