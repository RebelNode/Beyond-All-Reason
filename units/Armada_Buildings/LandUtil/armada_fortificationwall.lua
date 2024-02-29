return {
	armada_fortificationwall = {
		maxacc = 0,
		autoheal = 12,
		blocking = true,
		maxdec = 0,
		buildangle = 0,
		energycost = 500,
		metalcost = 40,
		buildpic = "armada_fortificationwall.DDS",
		buildtime = 900,
		canattack = false,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -3 0",
		collisionvolumescales = "32 50 32",
		collisionvolumetype = "CylY",
		corpse = "ROCKTEETHX",
		crushresistance = 1000,
		explodeas = "WallExplosionMetalXL",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
		idleautoheal = 0,
		levelground = false,
		health = 8900,
		maxslope = 24,
		maxwaterdepth = 0,
		objectname = "Units/armada_fortificationwall.s3o",
		repairable = false,
		script = "Units/armada_fortificationwall.cob",
		seismicsignature = 0,
		selfdestructas = "WallExplosionMetal",
		selfdestructcountdown = 1,
		sightdistance = 1,
		yardmap = "ffff",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armada_fortificationwall_aoplane.dds",
			buildinggrounddecalsizey = 4,
			buildinggrounddecalsizex = 4,
			buildinggrounddecaldecayspeed = 30,
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			objectify = true,
			paralyzemultiplier = 0,
			removestop = true,
			removewait = true,
			subfolder = "armada_buildings/landutil",
			techlevel = 2,
		},
		featuredefs = {
			rockteethx = {
				animating = 0,
				animtrans = 0,
				blocking = true,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				crushresistance = 0,
				damage = 3000,
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 7,
				object = "Units/armada_1x1A.s3o",
				reclaimable = true,
				resurrectable = 0,
				shadtrans = 1,
				world = "greenworld",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
	},
}
