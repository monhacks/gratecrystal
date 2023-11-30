	object_const_def
	const SEAFOAMCAVEB1F_POKEDEX
	const SEAFOAMCAVEB1F_POKE_BALL

SeafoamCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamCaveRadio:
	jumpstd Radio2Script

SeafoamCaveStatue:
	jumptext SeafoamCaveStatueText

SeafoamCaveBook:
	opentext
	writetext SeafoamCaveBookText1
	yesorno
	iffalse .Done
	writetext SeafoamCaveBookText2
	yesorno
	iffalse .Done
	writetext SeafoamCaveBookText3
	yesorno
	iffalse .Done
	writetext SeafoamCaveBookText4
	waitbutton
.Done:
	closetext
	end

SeafoamCaveBed:
	opentext
	writetext SeafoamCaveBedText1
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special FadeInQuickly
	opentext
	writetext SeafoamCaveBedText2
	closetext
	end

SeafoamCaveB1FXAccuracy:
	itemball X_ACCURACY

SeafoamCaveB1FHiddenTimerBall:
	hiddenitem TIMER_BALL, EVENT_SEAFOAM_CAVE_B1F_HIDDEN_TIMER_BALL

SeafoamCaveB1FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_SEAFOAM_CAVE_B1F_HIDDEN_MAX_POTION

SeafoamCaveStatueText:
	text "It's a statue of a"
	line "FERALIGATR."
	done

SeafoamCaveBookText1:
	text "It's a book titled"
	line "EVERYTHING YOU"

	para "NEVER WANTED TO"
	line "KNOW ABOUT THE"

	para "GRATE ORACLE"
	line "LEWOT. Read it?"
	done

SeafoamCaveBookText2:
	text "What does it mean"
	line "to be a GRATE"
	cont "ORACLE?"

	para "Simply that my"
	line "psychic powers"

	para "depend on my prox-"
	line "imity to grates."

	para "More candidly, it's"
	line "a self-deprecating"
	cont "joke."

	para "You're supposed to"
	line "hear GREAT but"

	para "then realize it's"
	line "actually GRATE."

	para "That's just my kind"
	line "of humor."

	para "Keep reading?"
	done

SeafoamCaveBookText3:
	text "My very favorite"
	line "#MON is YANMA."

	para "I like YANMEGA,"
	line "but I like YANMA a"
	cont "bit more."

	para "I like HAUNTER"
	line "more than GENGAR,"

	para "and PICHU more"
	line "than PIKACHU."

	para "I know I took"
	line "PICHU out, but"

	para "hacking is hard,"
	line "okay?"

	para "Keep reading?"
	done

SeafoamCaveBookText4:
	text "My favorite video"
	line "games of all time"
	cont "are, in order:"

	para "PAPER MARIO, its"
	line "first sequel,"

	para "TEARS OF THE KING-"
	line "DOM, BREATH OF THE"
	cont "WILD, and DONKEY"
	cont "KONG 64."

	para "Obviously, Gen II"
	line "#MON is up"
	cont "there as well."
	done

SeafoamCaveBedText1:
	text "A comfy bed!"
	line "Time to sleep…"
	autodone

SeafoamCaveBedText2:
	text "Ah, refreshed and"
	line "restored!"
	autodone

SeafoamCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 16, SEAFOAM_CAVE_1F, 2
	warp_event 24, 27, SEAFOAM_CAVE_B2F, 1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, SeafoamCaveRadio
	bg_event 11, 21, BGEVENT_READ, SeafoamCaveStatue
	bg_event 21, 29, BGEVENT_READ, SeafoamCaveStatue
	bg_event 26, 29, BGEVENT_READ, SeafoamCaveStatue
	bg_event 16, 22, BGEVENT_READ, SeafoamCaveBed
	bg_event 16, 23, BGEVENT_READ, SeafoamCaveBed
	bg_event 17, 40, BGEVENT_ITEM, SeafoamCaveB1FHiddenTimerBall
	bg_event 32, 13, BGEVENT_ITEM, SeafoamCaveB1FHiddenMaxPotion

	def_object_events
	object_event  3, 28, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, HitchhikersGuideScript, -1
	object_event  6, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, SeafoamCaveB1FXAccuracy, EVENT_SEAFOAM_CAVE_B1F_X_ACCURACY
