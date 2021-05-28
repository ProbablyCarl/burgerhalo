/mob/living/advanced/player/nt/penetrator
	loadout_to_use = /loadout/nt/player_penetrator

/mob/living/advanced/player/nt/penetrator/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/nanotrasen)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/nanotrasen)
	return.

/mob/living/advanced/player/nt/penetrator/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","Когда дело заходит о тяжёлом вооружении - тебе нет равных."))
	to_chat(span("danger","Используй свою экипировку в качестве легального аима. Избегай прямого контакта с противником - иначе ты труп."))
	return .

/mob/living/advanced/player/nt/penetrator/setup_name()
	. = ..()
	name = "Operative Penetrator"
	return TRUE

/mob/living/advanced/player/nt/penetrator/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_RUSSIAN] = TRUE
	return .