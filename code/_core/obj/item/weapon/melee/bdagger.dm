/obj/item/weapon/melee/sword/bdagger
	name = "Blamite dagger"
	desc = "For when you can't decide between energy or blade."
	desc_extended = "Weapon, working same with the energy dagger, but instead of it - used high-explosive material for the blade - blamite."
	icon = 'icons/obj/item/weapons/melee/laser/bdagger.dmi'

	damage_type = /damagetype/melee/sword/energy_katana/on

	value = 80
	var/charged = 0

	size = SIZE_2
	weight = 3

/obj/item/weapon/melee/sword/bdagger/click_self(var/mob/caller)

	INTERACT_CHECK

	var/obj/item/weapon/melee/sword/bdagger/target
	if(charged == 0)
		charged = 1
		icon_state = "inventory_alt"
		PROGRESS_BAR(caller,src,60,.proc/exp,caller,target)
		PROGRESS_BAR_CONDITIONS(caller,src,.proc/can_exp,caller,target)
	else
		charged = 0
		icon_state = "inventory"

/obj/item/weapon/melee/sword/bdagger/proc/can_exp(var/mob/caller)

	if(charged == 0)
		return FALSE
	return TRUE

/obj/item/weapon/melee/sword/bdagger/proc/exp(var/mob/caller)
	explode(get_turf(src),1,src,src)
	qdel(src)

/obj/item/weapon/melee/sword/bdagger/click_on_object(var/mob/caller as mob,var/atom/object,location,control,params)

	. = ..()

	if(charged == 0)
		return .

	if(is_living(object) && charged == 1)
		INTERACT_CHECK
		INTERACT_CHECK_OBJECT
		explode(get_turf(src),2,src,src)
		qdel(src)

	return .