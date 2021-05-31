/mob/living/advanced/npc/halo/marine
	name = "UNSC marine"
	desc = "A fellow soldier"
	desc_extended = "A low-ranking UNSC soldier tasked with defending the ship and assisting with higher ranking UNSC personnel with missions."
	enable_AI = TRUE
	ai = /ai/advanced/nanotrasen
	class = /class/syndicate_soldier
	dialogue_id = /dialogue/npc/soldier/
	var/loadout_to_use = /loadout/halo/unsc_soldier

/mob/living/advanced/npc/halo/marine/Initialize()

	. = ..()

	var/species/S = SPECIES(species)

	sex = pick(MALE,FEMALE)
	gender = sex

	change_organ_visual("skin", desired_color = pick("#E0BCAA","#BC9E8F","#967F73","#7A675E"))

	var/hair_color = random_color()
	change_organ_visual("hair_head", desired_color = hair_color, desired_icon_state = pick(S.all_hair_head))
	if(sex == MALE && prob(25))
		change_organ_visual("hair_face", desired_color = hair_color, desired_icon_state = pick(S.all_hair_face))

	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/nanotrasen)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/nanotrasen)

	update_all_blends()

	equip_loadout(loadout_to_use)

	return .

/mob/living/advanced/npc/halo/urf
	name = "URF soldier"
	desc = "A fellow soldier"
	desc_extended = "A low-ranking URF soldier tasked with defending the ship and assisting with higher ranking URF personnel with missions."
	enable_AI = TRUE
	ai = /ai/advanced/halo/urf
	class = /class/syndicate_soldier
	dialogue_id = /dialogue/npc/soldier/second
	var/loadout_to_use = /loadout/halo/urf_soldier

/mob/living/advanced/npc/halo/urf/Initialize()

	. = ..()

	var/species/S = SPECIES(species)

	sex = pick(MALE,FEMALE)
	gender = sex

	change_organ_visual("skin", desired_color = pick("#E0BCAA","#BC9E8F","#967F73","#7A675E"))

	var/hair_color = random_color()
	change_organ_visual("hair_head", desired_color = hair_color, desired_icon_state = pick(S.all_hair_head))
	if(sex == MALE && prob(25))
		change_organ_visual("hair_face", desired_color = hair_color, desired_icon_state = pick(S.all_hair_face))

	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/syndicate)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/syndicate)

	update_all_blends()

	equip_loadout(loadout_to_use)

	return .

/mob/living/advanced/npc/halo/unggoy
	name = "Unggoy Minor"
	desc = "Funny grunt"
	desc_extended = "A low-ranking Covenant unit."
	enable_AI = TRUE
	ai = /ai/advanced/halo/unggoy
	class = /class/syndicate_soldier

	species = "unga"
	loyalty_tag = "Covenant"
	iff_tag = "Covenant"

	var/loadout_to_use = /loadout/nt/halo/covenant/unggoyminor

/mob/living/advanced/npc/halo/unggoy/Initialize()

	. = ..()

	sex = pick(MALE,FEMALE)
	gender = sex

	equip_loadout(loadout_to_use)

	update_all_blends()



	return .