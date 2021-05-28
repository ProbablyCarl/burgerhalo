/mob/living/advanced/player/nt/crusader
	loadout_to_use = /loadout/nt/player_crusader

/mob/living/advanced/player/nt/crusader/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/nanotrasen)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/nanotrasen)
	return.

/mob/living/advanced/player/nt/crusader/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","Ты - ударное крыло отряда. Танк, несущийся впереди всех. Прикрывай своих напарников, заставляй противника убегать в страхе."))
	to_chat(span("danger","Работай в команде, не забывай, что от слаженной работы зависит твоя общая эффективность."))
	return .

/mob/living/advanced/player/nt/crusader/setup_name()
	. = ..()
	name = "Operative Crusader"
	return TRUE

/mob/living/advanced/player/nt/crusader/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_RUSSIAN] = TRUE
	return .
