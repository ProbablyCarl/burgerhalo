/turf/simulated/floor/snow
	name = "snow"
	layer = LAYER_FLOOR_WEATHER
	icon = 'icons/turf/floor/snoww.dmi'
	icon_state = "snow1"
	corner_category = "snow"

	footstep = /footstep/snow

	delay_modifier = 1.2

	material_id = /material/dirt/

	destruction_turf = /turf/simulated/floor/snow_dirt

/turf/simulated/floor/snow/New()
	. = ..()
	icon_state = "snow[rand(1,6)]"

/turf/simulated/floor/snow_dirt
	name = "dirt"
	layer = LAYER_FLOOR_WEATHER
	icon = 'icons/turf/floor/snoww.dmi'
	icon_state = "dirt"
	corner_category = "snow_dirt"

	footstep = /footstep/snow

	delay_modifier = 0.2

	material_id = /material/dirt/

	destruction_turf = /turf/simulated/floor/cave_dirt/