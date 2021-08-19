/obj/item/halo/plasma_nade/
	name = "Plasma grenade"
	icon = 'icons/halo/weapons/icons/Covenant Weapons.dmi'
	icon_state = "plasmagrenade"

	var/active = 0

/obj/item/halo/plasma_nade/click_self(var/mob/caller)

	INTERACT_CHECK

	active = 1
	icon_state = "plasmagrenade_active"

/obj/item/halo/plasma_nade/on_thrown(var/atom/owner,var/atom/hit_atom,var/atom/hit_wall)

	. = ..()



	return .