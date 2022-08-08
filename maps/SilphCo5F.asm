	object_const_def

SilphCo5F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo5FSign:
	jumptext SilphCo5FSignText

SilphCo5FSignText:
	text "SILPH CO. 5F"
	done

SilphCo5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  2, SILPH_CO_4F, 2
	warp_event 23,  2, SILPH_CO_6F, 1

	def_coord_events

	def_bg_events
	bg_event 20,  1, BGEVENT_READ, SilphCo5FSign

	def_object_events
