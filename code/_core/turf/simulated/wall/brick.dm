/turf/simulated/wall/brick
	name = "wall"
	icon = 'icons/turf/wall/brick.dmi'
	icon_state = "wall"
	corner_icons = TRUE
	corner_category = "brick"

	health_base = 1000
	destruction_turf = /turf/simulated/floor/plating

/turf/simulated/wall/brick/on_destruction(var/mob/caller,var/damage = FALSE)

	var/obj/structure/interactive/construction/girder/G = new(src)
	G.material_id = material_id
	G.color = color
	INITIALIZE(G)
	FINALIZE(G)

	create_destruction(src,list(/obj/item/material/sheet/ = 4),material_id)

	return ..()

/turf/simulated/wall/brick/red
	color = "#C66B59"

/turf/simulated/wall/brick/red/dark
	color = "#824439"


/turf/simulated/wall/brick/sand
	name = "sandstone wall"
	color = "#FFC68C"


/turf/simulated/wall/brick/banana
	name = "banana brick wall"
	color = "#FFFF00"