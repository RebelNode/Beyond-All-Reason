return {
	cortex_constructionseaplane = {
		maxacc = 0.072,
		blocking = false,
		maxdec = 0.4275,
		energycost = 8200,
		metalcost = 140,
		builddistance = 136,
		builder = true,
		buildpic = "cortex_constructionseaplane.DDS",
		buildtime = 12000,
		canfly = true,
		canmove = true,
		cansubmerge = true,
		category = "ALL NOTLAND MOBILE NOTSUB VTOL NOWEAPON NOTSHIP NOTHOVER",
		collide = true,
		cruisealtitude = 55,
		energymake = 20,
		energystorage = 75,
		explodeas = "smallexplosiongeneric-builder",
		footprintx = 2,
		footprintz = 2,
		hoverattack = true,
		idleautoheal = 5,
		idletime = 1800,
		health = 435,
		maxslope = 10,
		speed = 217.5,
		maxwaterdepth = 255,
		objectname = "Units/cortex_constructionseaplane.s3o",
		script = "Units/cortex_constructionseaplane.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-builder",
		sightdistance = 351,
		terraformspeed = 300,
		turninplaceanglelimit = 360,
		turnrate = 240,
		workertime = 75,
		buildoptions = {
			[1] = "cortex_solarcollector",
			[2] = "cortex_advancedsolarcollector",
			[3] = "cortex_windturbine",
			[4] = "cortex_geothermalpowerplant",
			[5] = "cortex_metalstorage",
			[6] = "cortex_energystorage",
			[7] = "cortex_metalextractor",
			[8] = "cortex_exploiter",
			[9] = "cortex_energyconverter",
			[10] = "cortex_botlab",
			[11] = "cortex_vehicleplant",
			[12] = "cortex_aircraftplant",
			[13] = "cortex_hovercraftplatform",
			[14] = "cortex_constructionturret",
			[15] = "cortex_navalconstructionturret",
			[16] = "cortex_beholder",
			[17] = "cortex_radartower",
			[18] = "cortex_dragonsteeth",
			[19] = "cortex_dragonsmaw",
			[20] = "cortex_guard",
			[21] = "cortex_twinguard",
			[22] = "cortex_warden",
			[23] = "cortex_agitator",
			[24] = "cortex_thistle",
			[25] = "cortex_sam",
			[26] = "cortex_eradicator",
			[27] = "cortex_jellyfish",
			[28] = "cortex_castro",
			[29] = "cortex_juno",
			[30] = "cortex_navalhovercraftplatform",
			[31] = "cortex_shipyard",
			[32] = "cortex_amphibiouscomplex",
			[33] = "cortex_seaplaneplatform",
			[34] = "cortex_tidalgenerator",
			--[35] = "cortex_navalmetalextractor",
			[36] = "cortex_navalenergyconverter",
			[37] = "cortex_navalmetalstorage",
			[38] = "cortex_navalenergystorage",
			[39] = "cortex_sharksteeth",
			[40] = "cortex_radarsonartower",
			[41] = "cortex_coral",
			[42] = "cortex_slingshot",
			[43] = "cortex_urchin",
			[44] = "cortex_underwatergeothermalpowerplant",
			[45] = "cortex_airrepairpad",
			[46] = "cortex_floatingairrepairpad",
		},
		customparams = {
			unitgroup = 'builder',
			area_mex_def = "cortex_navalmetalextractor",
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "cortex_seaplanes",
		},
		sfxtypes = {
			crashexplosiongenerators = {
				[1] = "crashing-small",
				[2] = "crashing-small",
				[3] = "crashing-small2",
				[4] = "crashing-small3",
				[5] = "crashing-small3",
			},
			pieceexplosiongenerators = {
				[1] = "airdeathceg2-builder",
				[2] = "airdeathceg3-builder",
				[3] = "airdeathceg4-builder",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
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
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "seapsel2",
			},
		},
	},
}
