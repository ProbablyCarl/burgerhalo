/mob/living/advanced/player/nt/blitz
	loadout_to_use = /loadout/nt/shieldman

/mob/living/advanced/player/nt/blitz/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/nanotrasen)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/nanotrasen)
	return.

/mob/living/advanced/player/nt/blitz/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","Быстрые ноги - пизды не получат. Жаль, что это не про вас."))
	to_chat(span("danger","Избегай прямого столкновения с врагом, помогай остальной команде медикаментами или станом от твоего оружия."))
	return .

/mob/living/advanced/player/nt/blitz/setup_name()
	. = ..()
	name = "Operative Shieldman"
	return TRUE

/mob/living/advanced/player/nt/blitz/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_RUSSIAN] = TRUE
	return .