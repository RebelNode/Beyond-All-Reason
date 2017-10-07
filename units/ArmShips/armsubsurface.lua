return {
	armsubsurface = {
		activatewhenbuilt = false,
		autoheal = 2,
		buildcostenergy = 0.8*4000,
		buildcostmetal = 0.8*700,
		buildpic = "ARMSUB.DDS",
		buildtime = 0.8*10983,
		canmove = true,
		onoffable = true,
		category = "NOTSUB ALL MOBILE WEAPON NOTLAND NOTAIR NOTHOVER",
		collisionvolumeoffsets = "0 -4 0",
		collisionvolumescales = "35 17 50",
		collisionvolumetype = "box",
		corpse = "DEAD",
		description = "Submarine",
		explodeas = "smallExplosionGeneric-uw",
		footprintx = 2,
		footprintz = 4,
		icontype = "sea",
		idleautoheal = 8,
		idletime = 900,
		maxdamage = 835,
		minwaterdepth = 15,
		movementclass = "BOAT42X4",
		name = "Lurker",
		nochasecategory = "VTOL",
		objectname = "ARMSUBSURFACE",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-uw",
		sightdistance = 400,
		sonardistance = 475,
		upright = true,
		waterline = 10,
		--move
		brakerate =  1.80/20,
		acceleration = 1.80/120,
		maxvelocity = 1.80,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.64*1.80,
		turnrate = 210,	
		--end move
		customparams = {
			
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-1.03743743896 -3.82080078154e-06 -0.269828796387",
				collisionvolumescales = "40.4452667236 15.0652923584 47.2016448975",
				collisionvolumetype = "Box",
				damage = 501,
				description = "Lurker Wreckage",
				energy = 0.8*0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 0.8*338,
				object = "ARMSUB_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Lurker Heap",
				energy = 0.8*0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 0.8*201,
				object = "3X3A",
                collisionvolumescales = "55.0 4.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
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
				[1] = "suarmmov",
			},
			select = {
				[1] = "suarmsel",
			},
		},
		weapondefs = {
			arm_torpedo = {
				areaofeffect = 64,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0,
				explosiongenerator = "custom:genericshellexplosion-large-uw",
				flighttime = 3,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "torpedo",
				name = "Torpedo",
				noselfdamage = true,
				predictboost = 0.7,
				range = 500,
				reloadtime = 2.5,
				soundhit = "xplodep1",
				soundstart = "torpedo1",
				startvelocity = 150,
				tolerance = 12000,
				turnrate = 1.5*12000,
				turret = false,
				waterweapon = true,
				weaponacceleration = 15,
				weapontimer = 3.25,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 240,
				damage = {
					commanders = 400,
					default = 433,
					subs = 100,
				},
			},
			janus_rocket = {
				areaofeffect = 128,
				avoidfeature = false,
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
				cegTag = "missiletrailsmall",
				explosiongenerator = "custom:genericshellexplosion-medium",
				firestarter = 70,
				impulsefactor = 1.015,
				model = "megamisl",
				name = "HeavyRocket",
				noselfdamage = true,
				range = 380,
				reloadtime = 7.5,
				smoketrail = false,
				soundhit = "xplosml2",
				soundhitvolume = 8,
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "rocklit1",
				soundstartvolume = 7,
				startvelocity = 100,
				texture1 = "trans",
				texture2 = "armsmoketrail",
				tracks = true,
				trajectoryheight = 0.4,
				turnrate = 22000,
				turret = true,
				weaponacceleration = 80,
				weapontimer = 3,
				weapontype = "MissileLauncher",
				weaponvelocity = 230,
				damage = {
					bombers = 35,
					default = 330,
					fighters = 35,
					subs = 5,
					vtol = 35,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "HOVER NOTSHIP",
				def = "ARM_TORPEDO",
				maindir = "0 0 1",
				maxangledif = 95,
				onlytargetcategory = "NOTHOVER",
			},
			
						[2] = {
				def = "JANUS_ROCKET",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
