local playerCountScale = 1
if Spring.Utilities.Gametype.IsScavengers() then
	playerCountScale = math.min(1, (#Spring.GetTeamList() - 2) / 8) -- -2 because scavs and gaia shouldn't count, divided by 8 because we use 8 player games as a baseline
end

local baseValues = { --format: {value, multiplier}

	--health related
	autoHeal = { 10 * playerCountScale, 1.15 },
	health = { math.min(800000 * playerCountScale, 10000000), 1.15 },

	--DPS related
	botCannonProjectiles = { 3 * playerCountScale, 1.15 },
	disintegratorBurst = { 1, 1.15 }, -- cannot be lower than 1
	minigunDamage = { 333 * playerCountScale, 1.15 },
	missileDamage = { 3500 * playerCountScale, 1.15 },
	shotgunDamage = { 600 * playerCountScale, 1.15 },
	topTurretsDamage = { 2000 * playerCountScale, 1.15 },
	torpedoDamage = { 1500 * playerCountScale, 1.15 },

	shotgunProjectiles = { 20, 1.15 },
	shotgunSprayAnglePercentageMultiplier = { 100, 1.15 },

	--AI Behaviors
	turboWeaponOffTime = {100, 1.4}, --{percentage, multiplier} Don't change the percentage. Changing multiplier will influence the difference in turbo weapon activation delay.
	turboWeaponOnTime = {100, 1.4}, --{percentage, multiplier} Don't change the percentage. Changing multiplier will influence the difference in turbo weapon activation duration.

	--non-damage weapon behavior
	turboShotgunArmBurst = { 2, 1.15 },
}

local difficultyParams = {}
local difficultyLevels = { "veryeasy", "easy", "normal", "hard", "veryhard", "epic" }
local levelMultipliers = { -- this defines the ^power for the multiplier values
	veryeasy = -2,
	easy = -1,
	normal = 0,
	hard = 1,
	veryhard = 2,
	epic = 3,
}

for _, level in pairs(difficultyLevels) do
	difficultyParams[level] = {}
	for key, pair in pairs(baseValues) do
		local base, individualMultiplier = pair[1], pair[2]
		difficultyParams[level][key] = math.floor(base * individualMultiplier ^ (levelMultipliers[level] or 0) + 0.5)
	end
end

local unitsTable = {}
for difficulty, stats in pairs(difficultyParams) do
	unitsTable["scavengerbossv4_" .. difficulty] = {
		maxacc = 0.01,
		activatewhenbuilt = true,
		autoheal = stats.autoHeal,--10,
		maxdec = 0.01,
		energycost = 5000000,
		metalcost = 500000,
		power = 16600000,
		builddistance = 750,
		builder = true,
		buildpic = "LEGCOM.DDS",
		buildtime = stats.health,
		cancapture = true,
		canmanualfire = true,
		canmove = true,
		capturable = false,
		capturespeed = 1800,
		category = "ALL WEAPON NOTSUB COMMANDER NOTSHIP NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 12 0",
		collisionvolumescales = "111 207 111",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		damageModifier = 0.5,
		energymake = 25,
		energystorage = 500,
		explodeas = "ScavComBossExplo",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
		holdsteady = true,
		idleautoheal = 5,
		idletime = 1800,
		sightemitheight = 40,
		mass = 9999999,
		health = stats.health, --4450,
		maxslope = 20,
		speed = 37.5, --1.65, --1.083,
		maxwaterdepth = 35,
		metalmake = 2,
		metalstorage = 500,
		mincloakdistance = 50,
		movementclass = "SCAVCOMMANDERBOT",
		nochasecategory = "ALL",
		objectname = "Units/scavboss/scavengerbossv4.s3o",
		pushresistant = true,
		radardistance = 2000,
		radaremitheight = 54,
		reclaimable = false,
		releaseheld  = true,
		script = "Units/scavboss/scavengerbossv4.cob",
		seismicsignature = 0,
		selfdestructas = "commanderexplosion",
		selfdestructcountdown = 5,
		showplayername = true,
		sightdistance = 1500,
		sonardistance = 1000,
		terraformspeed = 1500,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.825,
		turnrate = 300,
		upright = true,
		workertime = 1500,--400,
		customparams = {
			unitgroup = 'builder',
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			paralyzemultiplier = 0.025,
			subfolder = "",
			i18nfromunit = 'scavengerbossv4',
			stockpileLimit = 1,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "47 10 47",
				collisionvolumetype = "CylY",
				damage = 250000,
				featuredead = "HEAP",
				footprintx = 6,
				footprintz = 6,
				height = 20,
				metal = 3500,
				object = "Units/scavboss/armcomboss_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 125000,
				footprintx = 6,
				footprintz = 6,
				height = 4,
				metal = 1750,
				object = "Units/arm6X6A.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:com_sea_laser_bubbles",
				[2] = "custom:barrelshot-medium",
				[3] = "custom:footstep-medium",
				[4] = "custom:barrelshot-tiny",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			capture = "capture1",
			cloak = "kloak1",
			repair = "repair1",
			uncloak = "kloak1un",
			underattack = "warning2",
			unitcomplete = "armcomsel",
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
				[1] = "armcom1",
				[2] = "armcom2",
				[3] = "armcom3",
				[4] = "armcom4",
			},
			select = {
				[1] = "armcomsel",
			},
		},
		weapondefs = {
			machinegun = {
				accuracy = 80,
				areaofeffect = 10,
				avoidfeature = false,
				beamburst = true,
				beamdecay = 1,
				beamtime = 0.07,
				burst = 6,
				burstrate = 0.06667,
				camerashake = 200,
				corethickness = 0.35,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 1,
				explosiongenerator = "custom:laserhit-medium-red",
				firestarter = 10,
				impulseboost = 0,
				impulsefactor = 0,
				largebeamlaser = true,
				laserflaresize = 30,
				name = "Rapid-fire close quarters g2g armor-piercing laser",
				noselfdamage = true,
				pulsespeed =  q8,
				range = 800,
				reloadtime = 0.40,
				rgbcolor = "0.7 0.3 1.0",
				rgbcolor2 = "0.8 0.6 1.0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 20,
				soundstart = "lasfirerc",
				soundstartvolume = 20,
				soundtrigger = 1,
				sprayangle = 500,
				targetmoveerror = 0,
				targetborder = 0.2,
				thickness = 5.5,
				tolerance = 4500,
				turret = true,
				waterweapon = true,
				weapontype = "BeamLaser",
				weaponvelocity = 920,
				damage = {
					default = stats.minigunDamage,
					vtol = stats.minigunDamage/2,
				},
			},
			torpedo = {
				avoidfeature = false,
				avoidfriendly = false,
				avoidground = false,
				bouncerebound = 0.6,
				bounceslip = 0.6,
				burnblow = true,
				burst = 2,
				burstrate = 0.25,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-small-uw",
				flighttime = 1.75,
				groundbounce = true,
				gravityaffected = "true",
				mygravity = 0.2,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "cordepthcharge.s3o",
				name = "Depthcharge launcher",
				noselfdamage = true,
				numbounce = 1,
				range = 600,
				reloadtime = 0.75,
				soundhit = "xplodep2",
				soundhitwet = "splsmed",
				soundstart = "torpedo1",
				soundhitvolume = 3,
				soundhitwetvolume = 12,
				startvelocity = 190,
				tracks = true,
				trajectoryHeight = 0.60,
				turnrate = 64000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 75,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 600,
				damage = {
					default = stats.torpedoDamage,
				},
			},
			shotgunarm = {
				areaofeffect = 112,
				avoidfeature = false,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.65,
				explosiongenerator = "custom:genericshellexplosion-medium",
				impulseboost = 0.8,
				impulsefactor = 0.8,
				intensity = 0.2,
				mygravity = 1,
				name = "GaussCannon",
				noselfdamage = true,
				predictboost = 1,
				projectiles = stats.shotgunProjectiles,
				range = 1300,
				reloadtime = 12,
				rgbcolor = "0.8 0.4 1.0",
				size = 4,
				sizeDecay = 0.044,
				stages = 16,
				alphaDecay = 0.66,
				soundhit = "xplomed2xs",
				soundhitwet = "splsmed",
				soundstart = "kroggie2xs",
				sprayangle = (6000*stats.shotgunSprayAnglePercentageMultiplier/100),
				tolerance = 6000,
				turret = true,
				waterweapon = true,
				weapontimer = 2,
				weapontype = "Cannon",
				weaponvelocity = 900,
				damage = {
					default = stats.shotgunDamage,
					subs = stats.shotgunDamage/4,
				},
			},
			shoulderturrets = {
				accuracy = 500,
				areaofeffect = 100,
				avoidfeature = false,
				burst = 4,
				burstrate = 0.15,
				camerashake = 300,
				cegtag = "arty-heavy",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.45,
				explosiongenerator = "custom:genericshellexplosion-large",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				intensity = 1.1,
				mygravity = 0.03,
				name = "Long Range Plasma Cannon",
				noselfdamage = true,
				--proximitypriority = -1,
				range = 45250,
				reloadtime = 3,
				rgbcolor = "0.7 0.3 1.0",
				rgbcolor2 = "0.8 0.6 1.0",
				soundhit = "xplomed4",
				soundhitwet = "splslrg",
				soundstart = "cannhvy2",
				sprayangle = 300,
				turret = true,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 800,
				damage = {
					default = stats.topTurretsDamage,
					shields = stats.topTurretsDamage/2,
					subs = stats.topTurretsDamage/4,
				},
			},
            missilelauncher = {
				areaofeffect = 250,
				avoidfeature = false,
				burnblow = true,
				burst = 4,
				burstrate = 0.5,
				camerashake = 300,
				cegtag = "missiletraillarge-red",
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.55,
				explosiongenerator = "custom:genericshellexplosion-large-bomb",
				firestarter = 20,
				flighttime = 2.33,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "banishermissile.s3o",
				name = "Missile Launcher",
				noselfdamage = true,
				--projectiles = 4,
				range = 1200,
				reloadtime = 4,
				smoketrail = true,
				smokePeriod = 7,
				smoketime = 48,
				smokesize = 11.3,
				smokecolor = 0.82,
				smokeTrailCastShadow = false,
				soundhit = "corban_b",
				soundhitwet = "splsmed",
				soundstart = "corban_a",
				sprayangle = 4000,
				startvelocity = 600,
				texture1 = "null",
				texture2 = "railguntrail",
				tolerance = 9000,
				tracks = true,
				trajectoryheight = 0.45,
				turnrate = 99000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 600,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 1200,
				wobble = 5000,
				damage = {
					default = stats.missileDamage/6,
					vtol = stats.missileDamage,
					subs = stats.missileDamage/4,
				},
			},
			eaterbeam = {
				areaofeffect = 300,
				avoidfeature = false,
				beamtime = 1.2,
				--burst = 2,
				--burstrate = 0.33,
				camerashake = 2000,
				collidefriendly = false,
				corethickness = 0.3,
				craterareaofeffect = 150,
				cratermult = 0,
				cylindertargeting = 3.0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:laserhit-large-blue",
				firestarter = 90,
				firetolerance = 90,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 0.5,
				largebeamlaser = true,
				laserflaresize = 2,
				name = "Heavy long-range g2g tachyon accelerator beam",
				noselfdamage = true,
				--proximitypriority = -0.2,
				range = 600,
				reloadtime = 0.30,
				rgbcolor = "0.5 0.2 0.8",
				rgbcolor2 = "0.6 0.4 0.8",
				scrollspeed = -5,
				soundhitdry = "windgust3",
				soundhitwet = "windgust3",
				soundstart = "heatray3burn",
				--soundtrigger = 0,
				targetmoveerror = 0.3,
				texture3 = "largebeam",
				thickness = 40,
				tilelength = 75,
				tolerance = 10000,
				turret = true,
				waterweapon = true,
				weapontype = "BeamLaser",
				weaponvelocity = 1400,
				damage = {
					commanders = 5000,
					default = 50000,
				},
			},
			special_disintegratorxl = {
				areaofeffect = 65,
				avoidfeature = false,
				avoidfriendly = false,
				avoidground = false,
				burst = stats.disintegratorBurst,
				burstrate = 2,
				bouncerebound = 0,
				cameraShake = 500,
				cegtag = "gausscannonprojectilexl",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 1,
				energypershot = 0,
				--explosiongenerator = "custom:expldgun",
				explosiongenerator = "custom:burnblackbiggest",
				firestarter = 100,
				firesubmersed = false,
				gravityaffected = true,
				groundbounce = true,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 4,
				name = "SPECIAL Darkmatter Photon-Disruptor",
				noexplode = true,
				noselfdamage = true,
				projectiles = 3,
				range = 1200,
				reloadtime = 5,
				sprayangle = 6500,
				rgbcolor = "0.7 0.3 1.0",
				size = 8.5,
				soundhit = "xplomas2",
				soundhitwet = "sizzlexs",
				soundstart = "disigun1",
				soundtrigger = 1,
				tolerance = 10000,
				turret = true,
				waterweapon = false,
				weapontimer = 4.2,
				weapontype = "DGun",
				weaponvelocity = 375,
				damage = {
					default = 999999,
				},
			},
			turbo_missilelauncher = {
				areaofeffect = 350,
				avoidfeature = false,
				burnblow = true,
				burst = 6,
				burstrate = 0.33,
				camerashake = 300,
				cegtag = "missiletraillarge-red",
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.55,
				explosiongenerator = "custom:genericshellexplosion-large-bomb",
				firestarter = 20,
				flighttime = 2.33,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "banishermissile.s3o",
				name = "TURBO Missile Launcher",
				noselfdamage = true,
				projectiles = 4,
				range = 1200,
				reloadtime = 4,
				slaveto = 5,
				smoketrail = true,
				smokePeriod = 7,
				smoketime = 48,
				smokesize = 11.3,
				smokecolor = 0.82,
				smokeTrailCastShadow = false,
				soundhit = "corban_b",
				soundhitwet = "splsmed",
				soundstart = "corban_a",
				sprayangle = 6000,
				startvelocity = 600,
				texture1 = "null",
				texture2 = "railguntrail",
				tolerance = 9000,
				--tracks = false,
				trajectoryheight = 0.45,
				--turnrate = 99000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 600,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 1200,
				wobble = 5000,
				damage = {
					default = stats.missileDamage/6,
					vtol = stats.missileDamage,
				},
			},
			turbo_napalm = {
				accuracy = 1000,
				areaofeffect = 150,
				avoidfeature = false,
				burst = stats.turboShotgunArmBurst,
				burstrate = 0.90,
				cegtag = "burnflame",
				collidefriendly = false,
				colormap = "0.75 0.73 0.67 0.024   0.37 0.4 0.30 0.021   0.22 0.21 0.14 0.018  0.024 0.014 0.009 0.03   0.0 0.0 0.0 0.008",
				craterareaofeffect = 90,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 1,
				explosiongenerator = "custom:burnfire",
				explosionscar = true,
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				intensity = 0.2,
				mygravity = 0.32,
				name = "TURBO Napalm Shotgun",
				noselfdamage = true,
				projectiles = stats.shotgunProjectiles,
				range = 1300,
				reloadtime = 15,
				rgbcolor = "1 0.25 0.1",
				size = 4,
				sizeDecay = 0.044,
				stages = 16,
				alphaDecay = 0.66,
				soundhit = "flamhit1",
				soundhitwet = "sizzle",
				soundstart = "cannhvy2",
				sprayangle = (5000*stats.shotgunSprayAnglePercentageMultiplier/100),
				tolerance = 6000,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 450,
				damage = {
					default = stats.shotgunDamage/3,
					subs = stats.shotgunDamage/4,
				},
			},
			turbo_machinegun = {
				accuracy = 80,
				areaofeffect = 10,
				avoidfeature = false,
				beamburst = true,
				beamdecay = 1,
				beamtime = 0.07,
				burst = 6,
				burstrate = 0.06667,
				camerashake = 200,
				corethickness = 0.35,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:laserhit-medium-red",
				firestarter = 10,
				impactonly = true,
				impulseboost = 0,
				impulsefactor = 0,
				largebeamlaser = true,
				laserflaresize = 30,
				name = "TURBO Rapid-fire close quarters g2g armor-piercing laser",
				noselfdamage = true,
				projectiles = 4,
				pulsespeed =  q8,
				range = 800,
				reloadtime = 0.40,
				rgbcolor = "0.7 0.3 1.0",
				rgbcolor2 = "0.8 0.6 1.0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 20,
				soundstart = "lasfirerc",
				soundstartvolume = 20,
				soundtrigger = true,
				sprayangle = 1000,
				targetmoveerror = 0,
				targetborder = 0.2,
				thickness = 5.5,
				tolerance = 4500,
				turret = true,
				waterweapon = true,
				weapontype = "BeamLaser",
				weaponvelocity = 920,
				damage = {
					default = stats.minigunDamage*4,
					vtol = (stats.minigunDamage*4)/2,
					subs = stats.minigunDamage,
				},
			},
			turbo_shoulderturrets = {
				accuracy = 250,
				areaofeffect = 100,
				avoidfeature = false,
				camerashake = 300,
				cegtag = "arty-heavy",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.45,
				explosiongenerator = "custom:genericshellexplosion-large",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				intensity = 1.1,
				mygravity = 0.3,
				name = "TURBO Long Range Plasma Cannon",
				noselfdamage = true,
				--proximitypriority = -0.5,
				projectiles = 4,
				range = 45250,
				reloadtime = 0.5,
				rgbcolor = "0.7 0.3 1.0",
				rgbcolor2 = "0.8 0.6 1.0",
				soundhit = "xplomed4",
				soundhitwet = "splslrg",
				soundstart = "cannhvy2",
				soundtrigger = true,
				sprayangle = 1200,
				turret = true,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 800,
				damage = {
					default = stats.topTurretsDamage,
					shields = stats.topTurretsDamage/2,
					subs = stats.topTurretsDamage/4,
				},
			},
			special_botcannon = {
				accuracy = 1,
				areaofeffect = 500,
				avoidfeature = false,
				avoidfriendly = false,
				avoidground = false,
				burst = stats.botCannonProjectiles,
				burstrate = 0.75,
				cegtag = "arty-botrail",
				collidefriendly = false,
				craterareaofeffect = 116,
				craterboost = 0.1,
				cratermult = 0.1,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:botrailspawn",
				gravityaffected = "true",
				heightboostfactor = 8,
				--hightrajectory = 1,
				impulseboost = 0.5,
				impulsefactor = 0.5,
				intensity = 0.9,
				leadbonus = 0,
				metalpershot = 96,
				model = "Units/coruwmex.s3o",
				--mygravity = 0.22,
				name = "SPECIAL Epic Squad Cannon",
				noselfdamage = true,
				proximitypriority = -1,
				range = 45250,
				reloadtime = 5,
				sprayangle = 1200,
				stockpile = true,
				stockpiletime = 3,
				soundhit = "xplonuk1xs",
				soundhitwet = "splshbig",
				soundstart = "lrpcshot3",
				soundstartvolume = 50,
				targetborder = 1.0,
				turret = true,
				waterbounce = true,
				bounceSlip = 0.74,
				bouncerebound = 0.5,
				numbounce = 10,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 1500,
				customparams = {
					spawns_name = "squadarmsptkt4 squadcorkarganetht4 squadcorakt4  squadcorakt4  squadcorakt4  squadcorakt4 squadcorakt4 squadarmpwt4 squadarmpwt4 squadarmpwt4 squadarmpwt4 squadarmpwt4",
					spawns_surface = "LAND",
					spawns_mode = "random",
				},
				damage = {
					default = 0,
				},
			},
			sensor_vtol = { -- senses air units
				areaofeffect = 4,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",
				gravityaffected = "true",
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "VTOL Sensor",
				noselfdamage = true,
				range = 900,
				reloadtime = 1, --increasing firerate increases the weight by which this sensor affects TURBO and SPECIAL weapon selection
				rgbcolor = "0.7 0.3 1.0",
				rgbcolor2 = "0.8 0.6 1.0",
				size = 0,
				soundhit = "",
				soundhitwet = "",
				soundstart = "",
				turret = true,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 360,
				damage = {
					default = 0,
				},
			},
			sensor_groundscout = { --senses spam units like ticks and scout vehicles
				areaofeffect = 4,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",
				gravityaffected = "true",
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Spam Unit Sensor",
				noselfdamage = true,
				range = 500,
				reloadtime = 1, --increasing firerate increases the weight by which this sensor affects TURBO and SPECIAL weapon selection
				rgbcolor = "0.7 0.3 1.0",
				rgbcolor2 = "0.8 0.6 1.0",
				size = 0,		--when this is aiming, sensor_ground_near cannot aim.
				soundhit = "",
				soundhitwet = "",
				soundstart = "",
				turret = true,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 360,
				damage = {
					default = 0,
				},
			},
			sensor_ground_near = { --senses any ground units. If sensor_groundscout is targetting, this is inactive.
				areaofeffect = 4,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",
				gravityaffected = "true",
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Nearby Ground Unit Sensor",
				noselfdamage = true,
				range = 1000,
				reloadtime = 1, --increasing firerate increases the weight by which this sensor affects TURBO and SPECIAL weapon selection
				rgbcolor = "0.7 0.3 1.0",
				rgbcolor2 = "0.8 0.6 1.0",
				size = 0,
				soundhit = "",
				soundhitwet = "",
				soundstart = "",
				turret = true,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 360,
				damage = {
					default = 0,
				},
			},
			sensor_ground_far = { --this only aims when the other sensors are not aiming.
				areaofeffect = 4,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",
				gravityaffected = "true",
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Far Unit Sensor",
				noselfdamage = true,
				range = 99999,
				reloadtime = 1, --increasing firerate increases the weight by which this sensor affects TURBO and SPECIAL weapon selection
				rgbcolor = "0.7 0.3 1.0",
				rgbcolor2 = "0.8 0.6 1.0",
				size = 0,
				soundhit = "",
				soundhitwet = "",
				soundstart = "",
				turret = true,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 4000,
				damage = {
					default = 0,
				},
			},
				setting_turbo_delay = { --
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",
				gravityaffected = "true",
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "TurboWeaponGapDelay",
				noselfdamage = true,
				projectiles = math.floor((10/stats.turboWeaponOnTime*100) + 0.5), -- after delay, when 200-300 additional projectiles are fired, the turbo weapon is disabled.
				range = 99999, 
				reloadtime = 1/stats.turboWeaponOffTime*100, --when 10+(health%/4) shots are fired, select a turbo weapon and enable it.
				rgbcolor = "0.7 0.3 1.0",
				rgbcolor2 = "0.8 0.6 1.0",
				size = 0,
				soundhit = "",
				soundhitwet = "",
				soundstart = "",
				turret = true,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 4000,
				damage = {
					default = 0,
				},
			},
		},
		weapons = {
			[1] = {
				--badtargetcategory = "VTOL",
				def = "machinegun",
				onlytargetcategory = "NOTSUB",
				burstControlWhenOutOfArc = 1,
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "TORPEDO",
				onlytargetcategory = "NOTAIR",
			},
			[3] = {
				badtargetcategory = "VTOL",
				def = "shotgunarm",
				onlytargetcategory = "NOTSUB",
			},
			[4] = {
				badtargetcategory = "VTOL GROUNDSCOUT WEAPON",
				def = "shoulderturrets",
				onlytargetcategory = "NOTSUB",
			},
            [5] = {
				badtargetcategory = "SURFACE",
				def = "missilelauncher",
				onlytargetcategory = "NOTSUB",
			},
			[6] = {
				def = "eaterbeam",
				badtargetcategory = "VTOL GROUNDSCOUT",
				--burstControlWhenOutOfArc = 2,
			},
			[7] = {
				badtargetcategory = "VTOL",
				def = "special_disintegratorxl",
			},
			[8] = {
				badtargetcategory = "SURFACE",
				def = "turbo_missilelauncher",
				onlytargetcategory = "NOTSUB",
			},
			[9] = {
				badtargetcategory = "VTOL",
				def = "turbo_napalm",
				onlytargetcategory = "NOTSHIP",
			},
			[10] = {
				--badtargetcategory = "SURFACE",
				def = "turbo_machinegun",
				onlytargetcategory = "NOTSUB",
				burstControlWhenOutOfArc = 3,
			},
			[11] = {
				badtargetcategory = "VTOL GROUNDSCOUT WEAPON",
				def = "turbo_shoulderturrets",
				onlytargetcategory = "NOTSUB",
			},
			[12] = {
				badtargetcategory = "VTOL GROUNDSCOUT SHIP WEAPON",
				def = "special_botcannon",
				onlytargetcategory = "SURFACE",
			},
			[13] = {
				def = "sensor_vtol",
				onlytargetcategory = "VTOL",
			},
			[14] = {
				def = "sensor_groundscout",
				onlytargetcategory = "GROUNDSCOUT",
			},
			[15] = {
				def = "sensor_ground_near",
				onlytargetcategory = "SURFACE",
			},
			[16] = {
				def = "sensor_ground_far",
			},
			[17] = {
				def = "setting_turbo_delay",
			},
		},
	}
end
return unitsTable
