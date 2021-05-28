/mob/living/advanced/player/antagonist/doc
	loadout_to_use = /loadout/syndicate/doc

/mob/living/advanced/player/antagonist/doc/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/syndicate)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/syndicate)
	return.

/mob/living/advanced/player/antagonist/doc/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","Кто как не вы знаете про правильное лечение?"))
	to_chat(span("danger","Оказывайте вашим сокомандникам медицинскую помощь, запугивайте врага своим шприцемётом. Учитывайте, что вы единственный человек в команде, который может поднять кого-либо из мёртвых."))
	return .

/mob/living/advanced/player/antagonist/doc/setup_name()
	. = ..()
	name = "Operative Doc"
	return TRUE


/mob/living/advanced/player/antagonist/doc/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_CODESPEAK] = TRUE
	return .