	db SLOWBRO ; 080

	db 100,  80, 110,  20, 100,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 165 ; base exp
	db SLOWPOKETAIL, KINGS_ROCK ; items
	db GENDER_F50 ; gender ratio
	db 37 ; step cycles to hatch
	INCBIN "gfx/pokemon/slowbro/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, POISON_JAB, IRON_TAIL, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, SWIFT, DEFENSE_CURL, DREAM_EATER, REST, ATTRACT, FURY_CUTTER, NIGHTMARE, NIGHT_TERROR, SUBSTITUTE, SHADOW_CLAW, TELEPORT, SCALD, SURF, STRENGTH, FLASH, ROCK_SMASH, FLAMETHROWER, ICE_BEAM, AURA_SPHERE
	; end
