/obj/item/weapon/ranged/bullet/pump/shotgun/halo/m45
	name = "M45 Combat Shotgun"
	desc = "Reliable, cheap, and strong."
	desc_extended = "The UNSC's older model of the primary shotgun and one of the most effective close range infantry weapons used by colonies police and now - by insurrection. Has an inbuilt side mounted flashlight."
	icon = 'icons/obj/item/weapons/ranged/shotgun/m45.dmi'

	shoot_delay = 2.5

	automatic = FALSE

	bullet_count_max = 8

	shoot_sounds = list(
	'sound/weapons/unsc/shotgun/shotgun1.wav',
	'sound/weapons/unsc/shotgun/shotgun2.wav',
	'sound/weapons/unsc/shotgun/shotgun3.wav')


	can_wield = TRUE

	view_punch = 12

	icon_state_worn = "worn"
	item_slot = SLOT_TORSO_B
	worn_layer = LAYER_MOB_CLOTHING_BACK
	slot_icons = TRUE

	size = SIZE_4
	weight = 11

	value = 100

	heat_per_shot = 0.02
	heat_max = 0.1

	dan_mode = TRUE

	attachment_whitelist = list(
		/obj/item/attachment/barrel/charger = FALSE,
		/obj/item/attachment/barrel/compensator = FALSE,
		/obj/item/attachment/barrel/extended = FALSE,
		/obj/item/attachment/barrel/gyro = FALSE,
		/obj/item/attachment/barrel/laser_charger = FALSE,
		/obj/item/attachment/barrel/laser_charger/advanced = FALSE,
		/obj/item/attachment/barrel/suppressor = FALSE,

		/obj/item/attachment/sight/laser_sight = FALSE,
		/obj/item/attachment/sight/quickfire_adapter = FALSE,
		/obj/item/attachment/sight/red_dot = FALSE,
		/obj/item/attachment/sight/scope = FALSE,
		/obj/item/attachment/sight/scope/large = FALSE,
		/obj/item/attachment/sight/targeting_computer = FALSE,

		/obj/item/attachment/stock/c20r = FALSE,

		/obj/item/attachment/undermount/angled_grip = FALSE,
		/obj/item/attachment/undermount/bipod = FALSE,
		/obj/item/attachment/undermount/burst_adapter = FALSE,
		/obj/item/attachment/undermount/vertical_grip = FALSE
	)

	attachment_barrel_offset_x = 32 - 16
	attachment_barrel_offset_y = 19 - 16

	attachment_sight_offset_x = 9 - 16
	attachment_sight_offset_y = 19 - 16

	attachment_undermount_offset_x = 28 - 16
	attachment_undermount_offset_y = 15 - 16

	firing_pin = /obj/item/firing_pin/electronic/iff/syndicate

/obj/item/weapon/ranged/bullet/pump/shotgun/halo/m45/get_static_spread()
	if(!wielded)
		return 0.1
	return 0.004

/obj/item/weapon/ranged/bullet/pump/shotgun/halo/m45/get_skill_spread(var/mob/living/L)
	if(!heat_current) return 0
	return max(0,0.01 - (0.04 * L.get_skill_power(SKILL_RANGED)))

/obj/item/weapon/ranged/bullet/pump/shotgun/halo/m45/get_base_spread()
	return 0.06