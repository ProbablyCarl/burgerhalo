var/global/list/all_antag_markers = list()

/obj/marker/antag
	name = "antag marker"
	var/spawn_type

/obj/marker/antag/New(var/desired_loc)

	if(name)
		if(!all_antag_markers[name])
			all_antag_markers[name] = list()

		all_antag_markers[name] += src
	else
		log_error("Warning! Antagonist marker [src.get_debug_name()] is invalid!")

	return ..()

/obj/marker/antag/syndicate
	name = "Syndicate Operative"
	spawn_type = /mob/living/advanced/player/antagonist/syndicate

/obj/marker/antag/revolutionary
	name = "Revolutionary Soldier"
	spawn_type = /mob/living/advanced/player/antagonist/revolutionary

/obj/marker/antag/doc
	name = "Doc"
	spawn_type = /mob/living/advanced/player/antagonist/doc

/obj/marker/antag/turretman
	name = "TurretMan"
	spawn_type = /mob/living/advanced/player/antagonist/turretman

/obj/marker/antag/tachanka
	name = "Tachanka"
	spawn_type = /mob/living/advanced/player/antagonist/tachanka

/obj/marker/antag/dwizard
	name = "Wizard of Darkness"
	spawn_type = /mob/living/advanced/player/antagonist/dwizard

/obj/marker/antag/katanazero
	name = "BladeMaster"
	spawn_type = /mob/living/advanced/player/antagonist/katanazero

/obj/marker/antag/builder
	name = "Builder"
	spawn_type = /mob/living/advanced/player/antagonist/builder

/obj/marker/antag/soe
	name = "SOE Operative"
	spawn_type = /mob/living/advanced/player/antagonist/halo/soe

/obj/marker/antag/soe_commander
	name = "URF Commander"
	spawn_type = /mob/living/advanced/player/antagonist/halo/soe/commander