/mob/living/advanced/player/antagonist/dwizard
	loadout_to_use = /loadout/syndicate/darkwizard

/mob/living/advanced/player/antagonist/dwizard/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/syndicate)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/syndicate)
	return.

/mob/living/advanced/player/antagonist/dwizard/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","Преврати бой в кино с красивыми спецэффектами."))
	to_chat(span("danger","Не смотря на то, что к Синдикату вы никак не относитесь - старайтесь всячески помогать своим напарникам. Используйте для этого большой ассортимент заклинаний и манёвров."))
	return .

/mob/living/advanced/player/antagonist/dwizard/setup_name()
	. = ..()
	name = "Wizard of Darkness"
	return TRUE


/mob/living/advanced/player/antagonist/dwizard/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_CODESPEAK] = TRUE
	return .