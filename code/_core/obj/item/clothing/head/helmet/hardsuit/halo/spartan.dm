/obj/item/clothing/head/helmet/hardsuit/halo/spi
	name = "Mark II SPI Helmet"
	desc = "A spooky helmet."
	desc_extended = "A hermetically sealed helmet with reflective plating. Part of the larger 'Semi-Powered Infiltration armor' exosuit."
	icon = 'icons/obj/item/clothing/hats/spi.dmi'
	rarity = RARITY_UNCOMMON
//	flags_clothing = FLAG_CLOTHING_SPARTAN

	blocks_clothing = SLOT_FACE_WRAP | SLOT_HEAD

	loyalty_tag = "NanoTrasen"

	defense_rating = list(
		BLADE = 60,
		BLUNT = 60,
		PIERCE = 60,
		LASER = 60,
		ARCANE = 0,
		HEAT = 50,
		COLD = 50,
		BOMB = 50,
		BIO = 100,
		RAD = 100,
		PAIN = 60
	)

	size = SIZE_4

	value = 200
