/turf/simulated/wall/plastic
	name = "plastic wall"
	icon = 'icons/turf/wall/plastic.dmi'
	icon_state = "wall"
	corner_icons = TRUE
	corner_category = "plastic_wall"

	material_id = /material/wood
	health_base = 500

	destruction_turf = /turf/simulated/floor/plating

/turf/simulated/wall/plastic/on_destruction(var/mob/caller,var/damage = FALSE)

	var/obj/structure/interactive/construction/girder/G = new(src)
	G.material_id = material_id
	G.color = color
	INITIALIZE(G)
	FINALIZE(G)

	create_destruction(src,list(/obj/item/material/wood/ = 4),material_id)

	return ..()


/turf/simulated/wall/plastic/office
	name = "office wall"
	color = "#DED4C8"

/turf/simulated/wall/plastic/office/darker
	name = "office wall"
	color = "#444444"

/turf/simulated/wall/plastic/wizard
	name = "wizard wall"
	color = "#8034B2"