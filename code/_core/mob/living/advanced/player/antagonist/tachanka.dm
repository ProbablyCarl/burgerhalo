/mob/living/advanced/player/antagonist/tachanka
	loadout_to_use = /loadout/syndicate/tachanka

/mob/living/advanced/player/antagonist/tachanka/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/syndicate)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/syndicate)
	return.

/mob/living/advanced/player/antagonist/tachanka/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger"," огда речь заходит о специалистах в области крупнокалиберного оружи€ - равных вам нету."))
	to_chat(span("danger","∆рите пули так, будто бы дл€ вас это комариные укусы - брон€ позвол€ет. ѕоддерживайте остальную команду массивным огнЄм на подавление."))
	return .

/mob/living/advanced/player/antagonist/tachanka/setup_name()
	. = ..()
	name = "Operative Tachanka"
	return TRUE


/mob/living/advanced/player/antagonist/tachanka/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_CODESPEAK] = TRUE
	return .