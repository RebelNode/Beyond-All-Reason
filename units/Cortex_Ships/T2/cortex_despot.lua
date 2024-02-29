return {
	cortex_despot = {
		maxacc = 0.01427,
		maxdec = 0.01427,
		buildangle = 16000,
		energycost = 23000,
		metalcost = 3400,
		buildpic = "cortex_despot.DDS",
		buildtime = 36000,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON SHIP NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -15 2",
		collisionvolumescales = "62 62 148",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		explodeas = "hugeexplosiongeneric",
		floater = true,
		footprintx = 7,
		footprintz = 7,
		idleautoheal = 5,
		idletime = 1800,
		health = 11100,
		speed = 53.1,
		minwaterdepth = 15,
		movementclass = "BOAT8",
		nochasecategory = "VTOL",
		objectname = "Units/cortex_despot.s3o",
		script = "Units/cortex_despot.cob",
		seismicsignature = 0,
		selfdestructas = "hugeexplosiongenericSelfD",
		sightdistance = 600,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 177,
		waterline = 0,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "cortex_ships/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "23.5594024658 -0.0818865356445 0.388328552246",
				collisionvolumescales = "86.1555786133 65.6982269287 150.99382019",
				collisionvolumetype = "Box",
				damage = 13662,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 6,
				footprintz = 6,
				height = 4,
				hitdensity = 100,
				metal = 1650,
				object = "Units/cortex_despot_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 4032,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 825,
				object = "Units/cortex_6x6C.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-large",
				[2] = "custom:waterwake-large",
				[3] = "custom:bowsplash-large",
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
				[1] = "shcormov",
			},
			select = {
				[1] = "shcorsel",
			},
		},
		weapondefs = {
			cor_bats = {
				accuracy = 400,
				areaofeffect = 140,
				avoidfeature = false,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-large",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "BattleshipCannon",
				noselfdamage = true,
				range = 950,
				reloadtime = 4,
				soundhit = "xplomed2",
				soundhitwet = "splsmed",
				soundstart = "cannhvy1",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 422.13742,
				damage = {
					default = 450,
					vtol = 65,
				},
			},
			cor_batslaser = {
				areaofeffect = 8,
				avoidfeature = false,
				beamtime = 0.2,
				corethickness = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 125,
				explosiongenerator = "custom:laserhit-medium-green",
				firestarter = 90,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 12.1,
				name = "HighEnergyLaser",
				noselfdamage = true,
				range = 700,
				reloadtime = 0.95,
				rgbcolor = "0 1 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "Lasrmas2",
				soundtrigger = 1,
				targetmoveerror = 0.2,
				thickness = 3,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 700,
				damage = {
					default = 300,
					vtol = 65,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "COR_BATS",
				onlytargetcategory = "SURFACE",
				fastautoretargeting = true,
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "COR_BATS",
				onlytargetcategory = "SURFACE",
				fastautoretargeting = true,
				slaveto = 1,
			},
			[3] = {
				badtargetcategory = "VTOL",
				def = "COR_BATS",
				onlytargetcategory = "SURFACE",
				fastautoretargeting = true,
				slaveto = 1,
			},
			[4] = {
				def = "COR_BATSLASER",
				maindir = "0 0 1",
				maxangledif = 350,
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
