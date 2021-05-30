/obj/item/clothing/overwear/armor/halo/marine
	name = "Olive Camo M52A Body Armor"
	desc = "Military. In space!"
	desc_extended = "An armored protective vest worn by the members of the UNSC Marine Corps."
	icon = 'icons/obj/item/clothing/suit/marine.dmi'
	loyalty_tag = "NanoTrasen"

	rarity = RARITY_MYTHICAL

	defense_rating = list(
		BLADE = AP_SWORD,
		BLUNT = AP_CLUB,
		PIERCE = AP_CLUB,
		LASER = -AP_AXE,
		ARCANE = -AP_AXE,
		HEAT = AP_SWORD,
		COLD = AP_SWORD,
		BOMB = AP_SWORD,
		BIO = AP_SWORD,
		RAD = AP_SWORD,
		PAIN = AP_CLUB
	)

	size = SIZE_5

	protected_limbs = list(BODY_TORSO,BODY_GROIN,BODY_ARM_LEFT,BODY_ARM_RIGHT,BODY_LEG_LEFT,BODY_LEG_RIGHT)

	value = 300