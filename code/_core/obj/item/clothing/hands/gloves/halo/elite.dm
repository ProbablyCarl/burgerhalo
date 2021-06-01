/obj/item/clothing/hands/gloves/halo/covenant/elite
	name = "Sangheili right Combat Gauntlet"
	desc = "Heavy."
	desc_extended = "Hand armour, to be used with the Sangheili Combat Harness."
	icon = 'icons/obj/item/clothing/gloves/elite_m.dmi'

	icon_state = "inventory_right"
	icon_state_worn = "worn_right"

	rarity = RARITY_LEGENDARY

	defense_rating = list(
		BLADE = AP_AXE,
		BLUNT = AP_AXE,
		PIERCE = AP_AXE,
		LASER = AP_SWORD,
		ARCANE = -AP_GREATCLUB,
		HEAT = AP_AXE,
		COLD = AP_AXE,
		BOMB = AP_AXE,
		BIO = AP_AXE,
		RAD = AP_AXE,
		FATIGUE = AP_GREATCLUB,
		PAIN = AP_GREATCLUB
	)

	protection_cold = list(
		BODY_HAND_RIGHT = 1
	)

	size = SIZE_1
	flags_clothing = FLAG_CLOTHING_NOHUMAN

	value = 800

/obj/item/clothing/hands/gloves/halo/covenant/elite/left
	name = "Sangheili left Combat Gauntlet"
	desc = "Heavy."
	desc_extended = "Hand armour, to be used with the Sangheili Combat Harness."

	icon_state = "inventory_left"
	icon_state_worn = "worn_left"

	item_slot = SLOT_HAND_LEFT
	protected_limbs = list(BODY_HAND_LEFT)
	blocks_clothing = SLOT_HAND_LEFT

	protection_cold = list(
		BODY_HAND_LEFT = 1
	)