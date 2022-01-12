/mob/living/advanced/player/nt/halo/spartan
	loadout_to_use = /loadout/halo/spartan
	species = "spartan"

/mob/living/advanced/player/nt/halo/spartan/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/nanotrasen)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/nanotrasen)
	src.add_organ(/obj/item/organ/internal/implant/torso/spartan)
	return.

/mob/living/advanced/player/nt/halo/spartan/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] G[S_LAST_NAME]"
	setup_name()
	to_chat(span("danger","You're a Spartan III. Show them how the UNSC does it while dying like your peers."))
	to_chat(span("notice","Find your fireteam buddy. Do you really need someone to explain what an S-III is?."))
	return .
