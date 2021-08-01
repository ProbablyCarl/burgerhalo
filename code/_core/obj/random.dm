/obj/random
	name = "random object"
	desc = "This item type is used to spawn random objects at round-start."
	icon = 'icons/obj/markers/random.dmi'
	plane = PLANE_HUD
	icon_state = "random"
	invisibility = 101
	var/spawn_nothing_percentage = 0 // this variable determines the likelyhood that this random object will not spawn anything

	var/spawn_method = /obj/random/proc/spawn_item

// creates a new object and deletes itself
/obj/random/Initialize()
	..()
	call(src, spawn_method)()
	return SS_ORDER_DELETE

// creates the random item
/obj/random/proc/spawn_item()
	if(prob(spawn_nothing_percentage))
		return

	if(isnull(loc))
		return

	var/build_path = pickweight(spawn_choices())

	var/atom/A = new build_path(src.loc)
	if(pixel_x || pixel_y)
		A.pixel_x = pixel_x
		A.pixel_y = pixel_y

// Returns an associative list in format path:weight
/obj/random/proc/spawn_choices()
	return list()

/obj/random/tree
	name = "random tree"
	desc = "This is a random tree"
	icon = 'icons/obj/markers/markers.dmi'
	icon_state = "tree"
	spawn_nothing_percentage = 45

/obj/random/tree/spawn_choices()
		return list(/obj/structure/scenery/flowers = 2,
					/obj/structure/scenery/snow_bush,
					/obj/structure/scenery/snow_grass = 3,
					/obj/structure/interactive/tree/pine,
					/obj/structure/scenery/rocks = 1,
					/obj/structure/scenery/grass = 2
					)