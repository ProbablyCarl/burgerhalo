/obj/item/halo/plasma_nade/
	name = "Plasma grenade"
	icon = 'icons/halo/weapons/icons/Covenant Weapons.dmi'
	icon_state = "plasmagrenade"

	enable_held_icon_states = TRUE
	var/active = 0
	damage_type_thrown = /damagetype/unarmed
	value = 200

/obj/item/halo/plasma_nade/click_self(var/mob/caller)

	INTERACT_CHECK

	var/obj/item/halo/plasma_nade/target
	if(active == 0)
		active = 1
		play_sound('sound/sounds/Plasmanadethrow.ogg',get_turf(src),range_max=VIEW_RANGE)
		icon_state = "plasmagrenade_active"
		PROGRESS_BAR(caller,src,30,.proc/exp,caller,target)
		PROGRESS_BAR_CONDITIONS(caller,src,.proc/can_exp,caller,target)
	else
		active = 0
		icon_state = "plasmagrenade"

/obj/item/halo/plasma_nade/proc/can_exp(var/mob/caller)

	if(active == 0)
		return FALSE
	return TRUE

/obj/item/halo/plasma_nade/proc/exp(var/mob/caller)
	explode_cov(get_turf(src),2,src,src)
	qdel(src)

/obj/item/halo/plasma_nade/on_thrown(var/atom/owner,var/atom/hit_atom,var/atom/hit_wall) //What happens after the person is thrown and it hits an object.

	. = ..()

	if(active == 0)
		return .

	if(is_living(hit_atom) && active == 1)
		explode_cov(get_turf(src),2,src,src)
		qdel(src)

	if(hit_wall && active == 1)
		explode_cov(get_turf(src),2,src,src)
		qdel(src)

	return .