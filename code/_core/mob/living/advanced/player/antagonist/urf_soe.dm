/mob/living/advanced/player/antagonist/halo/soe
	loadout_to_use = /loadout/syndicate/halo/soe

/mob/living/advanced/player/antagonist/halo/soe/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/syndicate)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/syndicate)
	return.

/mob/living/advanced/player/antagonist/halo/soe/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","It's time to show UNSC how democracy work"))
	to_chat(span("danger","You are member of elite URF squad, made from rebelions that has been ODST troopers in past. You - special forces, most likely used on important bases and operations as spies or defenders."))
	return .