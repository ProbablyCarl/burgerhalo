/obj/effect/temp/explosion
	name = "explosion effect"
	mouse_opacity = 0
	icon = 'icons/obj/effects/explosion.dmi'
	icon_state = "explosion"
	duration = SECONDS_TO_DECISECONDS(3)
	layer = LAYER_EFFECT + 0.1

/obj/effect/temp/explosion/New(var/desired_location,var/desired_time,var/desired_color)
	var/matrix/M = matrix()
	M.Scale(desired_time/5,desired_time/5)
	animate(src,transform = M,time = desired_time)
	return ..()

/obj/effect/temp/explosion_covenant
	name = "explosion effect"
	mouse_opacity = 0
	icon = 'icons/halo/weapons/covenant/plasma_explosion.dmi'
	icon_state = "plasma_explosion"
	duration = SECONDS_TO_DECISECONDS(3)
	layer = LAYER_EFFECT + 0.1
	pixel_x = -32
	pixel_y = -32

/obj/effect/temp/target/
	name = "swoop up effect"
	icon = 'icons/halo/icons/HUD/crosshair.dmi'
	icon_state = "missileret_locked"
	duration = SECONDS_TO_DECISECONDS(2)
	mouse_opacity = 0