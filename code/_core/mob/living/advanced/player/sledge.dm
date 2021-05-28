/mob/living/advanced/player/nt/sledge
	loadout_to_use = /loadout/nt/sledge

/mob/living/advanced/player/nt/sledge/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/nanotrasen)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/nanotrasen)
	return.

/mob/living/advanced/player/nt/sledge/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","Подрались с Тачанкой за нормальный гранатомёт. Победителем вышли явно не вы."))
	to_chat(span("danger","Покажите врагу силу вашего BWOINK - разнесите в здании всё, что только можно - не зря же вам дали булаву и тонну взрывчатки?"))
	return .

/mob/living/advanced/player/nt/sledge/setup_name()
	. = ..()
	name = "Operative Sledge"
	return TRUE

/mob/living/advanced/player/nt/sledge/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_RUSSIAN] = TRUE
	return .