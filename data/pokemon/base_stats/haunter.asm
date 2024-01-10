	db HAUNTER ; 093

	db  45,  50,  45,  95, 115,  55
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 90 ; catch rate
	db 126 ; base exp
	db REVIVE, MAX_REVIVE ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/haunter/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, ZAP_CANNON, SELFDESTRUCT, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, POISON_JAB, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, DARK_PULSE, NIGHT_TERROR, SUBSTITUTE, SHADOW_CLAW, TELEPORT, FLY, FLASH, THUNDERBOLT
	; end
