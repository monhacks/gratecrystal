BATTLETOWER_PARTY_LENGTH EQU 3
BATTLETOWER_STREAK_LENGTH EQU 7

BATTLETOWER_NUM_UNIQUE_MON EQU 23
BATTLETOWER_NUM_UNIQUE_TRAINERS EQU 70

BATTLETOWER_NUM_SPECIAL_TRAINERS EQU 24

BATTLETOWER_TRAINERDATALENGTH EQU 18 * 2 ; $24
BATTLE_TOWER_STRUCT_LENGTH EQU NAME_LENGTH + BATTLETOWER_PARTY_LENGTH * NICKNAMED_MON_STRUCT_LENGTH + BATTLETOWER_TRAINERDATALENGTH ; $e0

; BattleTowerAction setval arguments (see engine/events/battle_tower/battle_tower.asm)
	const_def
	const BATTLETOWERACTION_CHECK_EXPLANATION_READ
	const BATTLETOWERACTION_SET_EXPLANATION_READ
	const BATTLETOWERACTION_GET_CHALLENGE_STATE
	const BATTLETOWERACTION_SAVE_AND_QUIT
	const BATTLETOWERACTION_CHALLENGECANCELED
	const BATTLETOWERACTION_05
	const BATTLETOWERACTION_06 ; reset stuff in SRAM bank 5
	const BATTLETOWERACTION_SAVELEVELGROUP
	const BATTLETOWERACTION_LOADLEVELGROUP
	const BATTLETOWERACTION_CHECKSAVEFILEISYOURS
	const BATTLETOWERACTION_0A
	const BATTLETOWERACTION_CHECKMOBILEEVENT
	const BATTLETOWERACTION_0C ; more time stuff in SRAM bank 5
	const BATTLETOWERACTION_0D ; more time stuff in SRAM bank 5
	const BATTLETOWERACTION_EGGTICKET
	const BATTLETOWERACTION_0F ; check w3_d090
	const BATTLETOWERACTION_10 ; dw based on s5_a800
	const BATTLETOWERACTION_11 ; store 0 in s5_aa8d
	const BATTLETOWERACTION_12 ; store 1 in s5_aa8d
	const BATTLETOWERACTION_13 ; check s5_aa8d
	const BATTLETOWERACTION_14 ; if save file is yours: bit 0, [sBattleTowerSaveFileFlags]
	const BATTLETOWERACTION_15 ; set 0, [sBattleTowerSaveFileFlags]
	const BATTLETOWERACTION_16 ; update time in SRAM bank 5
	const BATTLETOWERACTION_17 ; check time in SRAM bank 5
	const BATTLETOWERACTION_LEVEL_CHECK
	const BATTLETOWERACTION_UBERS_CHECK
	const BATTLETOWERACTION_RESETDATA ; clear data
	const BATTLETOWERACTION_GIVEREWARD ; give reward
	const BATTLETOWERACTION_1C ; set won challenge
	const BATTLETOWERACTION_1D ; set received reward
	const BATTLETOWERACTION_CHOOSEREWARD ; save options
	const BATTLETOWERACTION_SAVEOPTIONS

; BattleTowerAction return values
; - from BATTLETOWERACTION_CHECKMOBILEEVENT
MOBILE_EVENT_OBJECT_GS_BALL EQU $b

; BattleTowerText arguments (see engine/events/battle_tower/trainer_text.asm)
	const_def 1
	const BATTLETOWERTEXT_INTRO
	const BATTLETOWERTEXT_WIN_TEXT
	const BATTLETOWERTEXT_LOSS_TEXT

; sBattleTowerChallengeState values
	const_def
	const BATTLETOWER_NO_CHALLENGE
	const BATTLETOWER_SAVED_AND_LEFT
	const BATTLETOWER_CHALLENGE_IN_PROGRESS
	const BATTLETOWER_WON_CHALLENGE
	const BATTLETOWER_RECEIVED_REWARD
