var/global/list/all_covenant_markers = list()

/obj/marker/covenant
	name = "covenant marker"
	var/spawn_type

/obj/marker/covenant/New(var/desired_loc)

	if(name)
		if(!all_covenant_markers[name])
			all_covenant_markers[name] = list()

		all_covenant_markers[name] += src
	else
		log_error("Warning! Covenant marker [src.get_debug_name()] is invalid!")

	return ..()

/obj/marker/covenant/elite_m
	name = "Elite Minor"
	spawn_type = /mob/living/advanced/player/covenant/elite_minor