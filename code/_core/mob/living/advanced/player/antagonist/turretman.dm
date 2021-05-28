/mob/living/advanced/player/antagonist/turretman
	loadout_to_use = /loadout/syndicate/turretman

/mob/living/advanced/player/antagonist/turretman/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/syndicate)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/syndicate)
	return.

/mob/living/advanced/player/antagonist/turretman/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","ENGINEER, WE NEED A DISPENSER HERE!"))
	to_chat(span("danger","Превращайте жизнь противников в ад, при этом не прикладывая каких-либо усилий. Умирай от нехватки бронепластин на тушке."))
	return .

/mob/living/advanced/player/antagonist/turretman/setup_name()
	. = ..()
	name = "Operative TurretMan"
	return TRUE


/mob/living/advanced/player/antagonist/turretman/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_CODESPEAK] = TRUE
	return .