/obj/item/container/food/package/mre
	name = "MRE"
	desc = "Hmm, tastes like oppressed janitors!"
	desc_extended = "Why are you reading this, instead of stuffing your face?"
	icon = 'icons/obj/item/consumable/food/food.dmi'
	icon_state = "rationpack"
	value = 100

/obj/item/container/food/package/mre/Generate()
	reagents.add_reagent(/reagent/nutrition/egg_white,15)
	reagents.add_reagent(/reagent/nutrition/egg_yellow,15)
	reagents.add_reagent(/reagent/nutrition/water,15)
	reagents.add_reagent(/reagent/nutrition/bread,5)
	reagents.add_reagent(/reagent/nutrition/cheese/cheddar,5)
	reagents.add_reagent(/reagent/nutrition/tomato,5)
	reagents.add_reagent(/reagent/nutrition/pineapple,5)
	return ..()
