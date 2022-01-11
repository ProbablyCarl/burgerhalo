/obj/item/weapon/ranged/bullet/magazine/misc/
	movement_spread_base = 0
	movement_spread_mul = 0



/obj/item/weapon/ranged/bullet/magazine/misc/sentry

	name = "\improper Sentry Gun"
	desc = ""
	desc_extended = ""
	icon = 'icons/obj/item/weapons/ranged/rifle/minigun.dmi'
	icon_state = "inventory"
	value = 3000

	shoot_delay = 1

	automatic = TRUE

	shoot_sounds = list('sound/weapons/223/shoot_mini.ogg') //Need a fire sound that only lasts 0.5 seconds.

	can_wield = TRUE
	wield_only = TRUE

	view_punch = 16

	heat_per_shot = 0.002
	heat_max = 0.02

	bullet_length_min = 25
	bullet_length_best = 30
	bullet_length_max = 31

	bullet_diameter_min = 4
	bullet_diameter_best = 4.6
	bullet_diameter_max = 5

	size = 0
	weight = 0

	value = -1

	ai_heat_sensitivity = 0

	attachment_whitelist = list()

	firing_pin = /obj/item/firing_pin/electronic

/obj/item/weapon/ranged/bullet/magazine/misc/sentry/handle_empty(var/mob/caller)
	next_shoot_time = world.time + 20
	return ..()

/obj/item/weapon/ranged/bullet/magazine/misc/sentry/handle_ammo(var/mob/caller)
	if(!chambered_bullet) load_new_bullet_from_magazine(caller)
	return ..()

/obj/item/weapon/ranged/bullet/magazine/misc/sentry/get_magazine()

	if(istype(loc,/mob/living/simple/turret/deployable))
		var/mob/living/simple/turret/deployable/D = loc
		if(D.stored_magazine)
			return D.stored_magazine

	return ..()

/obj/item/weapon/ranged/bullet/magazine/misc/sentry/get_static_spread()
	return 0

/obj/item/weapon/ranged/bullet/magazine/misc/sentry/get_skill_spread(var/mob/living/L)
	return 0

//infinite, but really just an 'energy' version
/obj/item/weapon/ranged/energy/unsc_sentry
	name = "\improper Turret"
	icon = 'icons/obj/item/weapons/ranged/laser/captain.dmi'

	projectile = /obj/projectile/bullet/firearm/pistol
	ranged_damage_type = /damagetype/ranged/bullet/smg_4mm

	projectile_speed = TILE_SIZE - 1
	shoot_delay = 1

	automatic = TRUE

	shoot_sounds = list('sound/weapons/223/shoot_mini.ogg')

	charge_cost = 1

	view_punch = 0

	heat_per_shot = 0
	heat_max = 0

	size = SIZE_3

	value = 0

	battery = /obj/item/powercell/recharging

	firing_pin = /obj/item/firing_pin/electronic

	bullet_color = COLOR_BULLET


/obj/item/weapon/ranged/energy/unsc_sentry/get_static_spread()
	return 0

/obj/item/weapon/ranged/energy/unsc_sentry/get_skill_spread(var/mob/living/L)
	return 0
