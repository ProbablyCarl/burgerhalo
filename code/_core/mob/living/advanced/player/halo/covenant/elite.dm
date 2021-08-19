/mob/living/advanced/player/covenant/elite_minor
	loadout_to_use = /loadout/nt/halo/covenant/elite_ranged
	species = "Elite"

/mob/living/advanced/player/covenant/elite_minor/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/covenant)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/covenant)
	return.

/mob/living/advanced/player/covenant/elite_minor/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	sex = MALE
	setup_name()
	to_chat(span("danger","On the blood of our fathers, on the blood of our sons, we swore to uphold the Covenant!"))
	to_chat(span("danger","The Sangheili, known to humans as Elites, are a saurian species of strong, proud, and intelligent warriors, as well as skilled combat tacticians. Due to their skill in combat, the Sangheili have formed the military backbone of the Covenant for almost the entirety of its existence."))
	return .