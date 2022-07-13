	object_const_def
	const ROUTE22HOUSE_REAL_KAREN
	const ROUTE22HOUSE_REAL_KOGA
	const ROUTE22HOUSE_GIOVANNI
	const ROUTE22HOUSE_JESSIE
	const ROUTE22HOUSE_JAMES

Route22House_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .People

.People:
	disappear ROUTE22HOUSE_REAL_KAREN
	disappear ROUTE22HOUSE_REAL_KOGA
	disappear ROUTE22HOUSE_GIOVANNI
	disappear ROUTE22HOUSE_JESSIE
	disappear ROUTE22HOUSE_JAMES
	readvar VAR_WEEKDAY
	ifequal MONDAY, .AppearKoga
	ifequal WEDNESDAY, .AppearJessieJames
	ifequal FRIDAY, .AppearGiovanni
	ifequal SATURDAY, .CheckKaren
	ifequal SUNDAY, .CheckKaren
	endcallback

.AppearKoga:
	appear ROUTE22HOUSE_REAL_KOGA
	endcallback

.AppearGiovanni:
	appear ROUTE22HOUSE_GIOVANNI
	endcallback

.AppearJessieJames:
	appear ROUTE22HOUSE_JESSIE
	appear ROUTE22HOUSE_JAMES
	endcallback

.CheckKaren:
	checktime NITE
	iftrue .AppearKaren
	endcallback

.AppearKaren:
	appear ROUTE22HOUSE_REAL_KAREN
	endcallback

Route22HouseRealKarenScript:
	faceplayer
	opentext
	checkflag ENGINE_DAILY_MOVE_TUTOR
	iftrue .NoRematch
	writetext Route22HouseRealKarenBeforeText
	yesorno
	iftrue .DoBattle
	writetext Route22HouseRealKarenRefusedText
	waitbutton
	closetext
	end

.NoRematch:
	writetext Route22HouseRealKarenAfterText
	waitbutton
	closetext
	end

.DoBattle:
	winlosstext Route22HouseRealKarenBeatenText, 0
	loadtrainer REAL_KAREN, REAL_KAREN1
	startbattle
	reloadmapafterbattle
	setflag ENGINE_DAILY_MOVE_TUTOR
	opentext
	writetext Route22HouseRealKarenAfterText
	waitbutton
	closetext
	end

Route22HouseRealKogaScript:
	faceplayer
	opentext
	checkflag ENGINE_DAILY_MOVE_TUTOR
	iftrue .NoRematch
	writetext Route22HouseRealKogaBeforeText
	yesorno
	iftrue .DoBattle
	writetext Route22HouseRealKogaRefusedText
	waitbutton
	closetext
	end

.NoRematch:
	writetext Route22HouseRealKogaAfterText
	waitbutton
	closetext
	end

.DoBattle:
	winlosstext Route22HouseRealKogaBeatenText, 0
	loadtrainer REAL_KOGA, REAL_KOGA1
	startbattle
	reloadmapafterbattle
	setflag ENGINE_DAILY_MOVE_TUTOR
	opentext
	writetext Route22HouseRealKogaAfterText
	waitbutton
	closetext
	end

Route22HouseGiovanniScript:
	faceplayer
	opentext
	checkflag ENGINE_DAILY_MOVE_TUTOR
	iftrue .NoRematch
	playmusic MUSIC_ROCKET_ENCOUNTER
	writetext Route22HouseGiovanniBeforeText
	winlosstext Route22HouseGiovanniBeatenText, 0
	loadtrainer BOSS, GIOVANNI
	startbattle
	reloadmapafterbattle
	special RestartMapMusic
	setflag ENGINE_DAILY_MOVE_TUTOR
	opentext
	writetext Route22HouseGiovanniAfterText
	waitbutton
	closetext
	end

.NoRematch:
	writetext Route22HouseGiovanniAfterText
	waitbutton
	closetext
	end

Route22HouseJessieScript:
	faceplayer
	opentext
	checkflag ENGINE_DAILY_MOVE_TUTOR
	iftrue .NoRematch
	playmusic MUSIC_ROCKET_ENCOUNTER
	writetext Route22HouseJessieBeforeText
	winlosstext Route22HouseJessieJamesBeatenText, 0
	loadtrainer JESSIE, JAMES
	startbattle
	reloadmapafterbattle
	special RestartMapMusic
	setflag ENGINE_DAILY_MOVE_TUTOR
	opentext
	writetext Route22HouseJessieAfterText
	waitbutton
	closetext
	end

.NoRematch:
	writetext Route22HouseJessieAfterText
	waitbutton
	closetext
	end

Route22HouseJamesScript:
	faceplayer
	opentext
	checkflag ENGINE_DAILY_MOVE_TUTOR
	iftrue .NoRematch
	playmusic MUSIC_ROCKET_ENCOUNTER
	writetext Route22HouseJamesBeforeText
	winlosstext Route22HouseJessieJamesBeatenText, 0
	loadtrainer JESSIE, JAMES
	startbattle
	reloadmapafterbattle
	special RestartMapMusic
	setflag ENGINE_DAILY_MOVE_TUTOR
	opentext
	writetext Route22HouseJamesAfterText
	waitbutton
	closetext
	end

.NoRematch:
	writetext Route22HouseJamesAfterText
	waitbutton
	closetext
	end

Route22HouseRadio:
	jumpstd Radio2Script

Route22HouseRealKarenBeforeText:
	text "Those who lurk in"
	line "the night will"

	para "find themselves in"
	line "the presence of"
	cont "dark-type #MON…"

	para "I'm KAREN. I used"
	line "to be a member of"
	cont "the ELITE FOUR."

	para "I don't have a"
	line "BADGE or a CHAMP-"
	cont "ION ranking to"
	cont "give you…"

	para "But if you'd like"
	line "a battle for its"

	para "own sake, I'm up"
	line "for one."

	para "How about it?"
	done

Route22HouseRealKarenRefusedText:
	text "How disappointing…"
	done

Route22HouseRealKarenBeatenText:
	text "Well, aren't you"
	line "good. I like you."
	done

Route22HouseRealKarenAfterText:
	text "You understand"
	line "what's important"
	cont "about #MON."

	para "Many trainers come"
	line "and go in this"
	cont "house."

	para "Check in once in a"
	line "while for good"
	cont "battles."
	done

Route22HouseRealKogaBeforeText:
	text "My name is KOGA."

	para "Once a GYM LEADER,"
	line "once an ELITE FOUR"

	para "member, now simply"
	line "a proud father."

	para "After I mastered"
	line "poison #MON, I"

	para "started training"
	line "fairy types."

	para "They're surpris-"
	line "ingly devious for"
	cont "their appearance."

	para "Care to test your-"
	line "self against my"
	cont "new team?"
	done

Route22HouseRealKogaRefusedText:
	text "Suit yourself."
	done

Route22HouseRealKogaBeatenText:
	text "Ah! You have prov-"
	line "en your worth!"
	done

Route22HouseRealKogaAfterText:
	text "You've bested me"
	line "this time."

	para "As a NINJA, I will"
	line "keep training."

	para "Perhaps we'll meet"
	line "again."
	done

Route22HouseGiovanniBeforeText:
	text "…"

	para "Another meddling"
	line "child…"

	para "…"

	para "I was once the"
	line "head of TEAM"
	cont "ROCKET."

	para "I heard the radio"
	line "message from JOH-"
	cont "TO, but the fools"
	cont "were trounced be-"
	cont "fore I could even"
	cont "respond."

	para "I'll need much"
	line "better lackeys"

	para "before I can make"
	line "a true comeback."

	para "I suppose you have"
	line "grand ambitions of"

	para "stopping me before"
	line "I begin?"

	para "Then put your"
	line "#MON where your"
	cont "mouth is!"
	done

Route22HouseGiovanniBeatenText:
	text "Another upstart"
	line "little urchin…"
	done

Route22HouseGiovanniAfterText:
	text "You've accomplish-"
	line "ed nothing."

	para "I was merely test-"
	line "ing my strength."

	para "My #MON aren't"
	line "good enough yet."

	para "But one day…"
	done

Route22HouseJessieBeforeText:
	text "What kind of twerp"
	line "are you supposed"
	cont "to be?"
	done

Route22HouseJessieAfterText:
	text "Next time, we'll"
	line "pummel you and"

	para "take your #MON"
	line "for our boss!"
	done

Route22HouseJamesBeforeText:
	text "Ooh, what do we"
	line "have here?"

	para "Another kneebiter"
	line "to knock around!"
	done

Route22HouseJamesAfterText:
	text "You remind me of"
	line "that other kid…"

	para "That's not a good"
	line "thing."
	done

Route22HouseJessieJamesBeatenText:
	text "We're blasting off"
	line "again!"
	done

Route22House_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, ROUTE_22, 2
	warp_event  7,  7, ROUTE_22, 2

	def_coord_events

	def_bg_events
	bg_event  3,  1, BGEVENT_READ, Route22HouseRadio

	def_object_events
	object_event  2,  2, SPRITE_REAL_KAREN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22HouseRealKarenScript, EVENT_ROUTE_22_HOUSE_REAL_KAREN
	object_event  3,  6, SPRITE_REAL_KOGA, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22HouseRealKogaScript, EVENT_ROUTE_22_HOUSE_REAL_KOGA
	object_event  7,  4, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_LEFT, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22HouseGiovanniScript, EVENT_ROUTE_22_HOUSE_GIOVANNI
	object_event  8,  1, SPRITE_JESSIE, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22HouseJessieScript, EVENT_ROUTE_22_HOUSE_JESSIE
	object_event  7,  1, SPRITE_JAMES, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22HouseJamesScript, EVENT_ROUTE_22_HOUSE_JAMES
