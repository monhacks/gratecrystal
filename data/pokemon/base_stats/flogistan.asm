	db FLOGISTAN ; 172

	db  45,  40,  37, 105, 115,  42
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FIRE ; type
	db 168 ; catch rate
	db 121 ; base exp
	db SWAG_BEACON, CHARCOAL ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/flogistan/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, SELFDESTRUCT, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, HYPER_BEAM, PROTECT, ENDURE, SOLARBEAM, IRON_TAIL, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, FIRE_BLAST, SWIFT, DEFENSE_CURL, REST, ATTRACT, THIEF, FIRE_PUNCH, FAIRY_WIND, MOONBLAST, NIGHT_TERROR, SUBSTITUTE, SCALD, FLASH, FLAMETHROWER, TRI_ATTACK, AURA_SPHERE
	; end
