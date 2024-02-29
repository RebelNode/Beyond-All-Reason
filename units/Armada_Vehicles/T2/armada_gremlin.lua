return {
	armada_gremlin = {
		maxacc = 0.0697,
		maxdec = 0.13939,
		energycost = 3700,
		metalcost = 230,
		buildpic = "armada_gremlin.DDS",
		buildtime = 6700,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		cloakcost = 5,
		cloakcostmoving = 20,
		collisionvolumeoffsets = "0 1 0",
		collisionvolumescales = "24 13 39",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "smallexplosiongeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = false,
		health = 1060,
		maxslope = 12,
		speed = 70.5,
		maxwaterdepth = 0,
		mincloakdistance = 65,
		movementclass = "TANK3",
		nochasecategory = "VTOL",
		objectname = "Units/armada_gremlin.s3o",
		script = "Units/armada_gremlin.cob",
		seismicsignature = 4,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 494,
		stealth = true,
		trackstrength = 6,
		tracktype = "armada_gremlin_tracks",
		trackwidth = 29,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.64802,
		turnrate = 701.79999,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			cannon1name = "barrel",
			driftratio = "0.1",
			firingceg = "barrelshot-small",
			flare1name = "flare",
			kickback = "-0.65",
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			paralyzemultiplier = 0.2,
			restoretime = "3000",
			rockstrength = "3",
			sleevename = "turret",
			subfolder = "armada_vehicles/t2",
			techlevel = 2,
			turretname = "turret",
			wpn1turretx = "200",
			wpn1turrety = "200",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 1 0",
				collisionvolumescales = "24 13 39",
				collisionvolumetype = "Box",
				damage = 800,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 15,
				hitdensity = 100,
				metal = 138,
				object = "Units/armada_gremlin_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 700,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 55,
				object = "Units/armada_2x2B.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-small",
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
				[1] = "tarmmove",
			},
			select = {
				[1] = "tarmsel",
			},
		},
		weapondefs = {
			armada_gremlin_gauss = {
				areaofeffect = 8,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-medium",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Light close-quarters gauss cannon",
				noselfdamage = true,
				range = 220,
				reloadtime = 3,
				soundhit = "xplomed2",
				soundhitwet = "splshbig",
				soundstart = "cannhvy1",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 450,
				damage = {
					default = 262.5,
					vtol = 24,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "armada_gremlin_GAUSS",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
