/damagetype/ranged/bullet/crossbow_bolt
	name = "crossbow bolt"

	//The base attack damage of the weapon. It's a flat value, unaffected by any skills or attributes.
	attack_damage_base = list(
		BLUNT = DAMAGE_CLUB*0.40,
		PIERCE = DAMAGE_CLUB*0.75
	)

	//How much armor to penetrate. It basically removes the percentage of the armor using these values.
	attack_damage_penetration = list(
		BLUNT = AP_GREATSWORD*0.9,
		PIERCE = AP_GREATSWORD*0.9
	)

	falloff = VIEW_RANGE