GetPartyParamLocation::
; Get the location of parameter a from wCurPartyMon in hl
	push bc
	ld hl, wPartyMons
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [wCurPartyMon]
	call GetPartyLocation
	pop bc
	ret

GetPartyLocation::
; Add the length of a PartyMon struct to hl a times.
	ld bc, PARTYMON_STRUCT_LENGTH
	jp AddNTimes

UserPartyAttr::
	push af
	ldh a, [hBattleTurn]
	and a
	jr nz, .ot
	pop af
	jr BattlePartyAttr
.ot
	pop af
	jr OTPartyAttr

OpponentPartyAttr::
	push af
	ldh a, [hBattleTurn]
	and a
	jr z, .ot
	pop af
	jr BattlePartyAttr
.ot
	pop af
	jr OTPartyAttr

BattlePartyAttr::
; Get attribute a from the party struct of the active battle mon.
	push bc
	ld c, a
	ld b, 0
	ld hl, wPartyMons
	add hl, bc
	ld a, [wCurBattleMon]
	call GetPartyLocation
	pop bc
	ret

OTPartyAttr::
; Get attribute a from the party struct of the active enemy mon.
	push bc
	ld c, a
	ld b, 0
	ld hl, wOTPartyMon1Species
	add hl, bc
	ld a, [wCurOTMon]
	call GetPartyLocation
	pop bc
	ret

ResetDamage::
	xor a
	ld [wCurDamage], a
	ld [wCurDamage + 1], a
	ret

SetPlayerTurn::
	xor a
	ldh [hBattleTurn], a
	ret

SetEnemyTurn::
	ld a, 1
	ldh [hBattleTurn], a
	ret

UpdateOpponentInParty::
	ldh a, [hBattleTurn]
	and a
	jr z, UpdateEnemyMonInParty
	jr UpdateBattleMonInParty

UpdateUserInParty::
	ldh a, [hBattleTurn]
	and a
	jr z, UpdateBattleMonInParty
	jr UpdateEnemyMonInParty

UpdateBattleMonInParty::
; Update level, status, current HP

	ld a, [wCurBattleMon]

UpdateBattleMon::
	ld hl, wPartyMon1Level
	call GetPartyLocation

	ld d, h
	ld e, l
	ld hl, wBattleMonLevel
	ld bc, wBattleMonMaxHP - wBattleMonLevel
	jp CopyBytes

UpdateEnemyMonInParty::
; Update level, status, current HP

; No wildmons.
	ld a, [wBattleMode]
	dec a
	ret z

	ld a, [wCurOTMon]
	ld hl, wOTPartyMon1Level
	call GetPartyLocation

	ld d, h
	ld e, l
	ld hl, wEnemyMonLevel
	ld bc, wEnemyMonMaxHP - wEnemyMonLevel
	jp CopyBytes

RefreshBattleHuds::
	call UpdateBattleHuds
	ld c, 3
	call DelayFrames
	jp WaitBGMap

UpdateBattleHuds::
	farcall UpdatePlayerHUD
	farcall UpdateEnemyHUD
	ret

INCLUDE "home/battle_vars.asm"

FarCopyRadioText::
	inc hl
	ldh a, [hROMBank]
	push af
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ldh [hROMBank], a
	ld [MBC3RomBank], a
	ld a, e
	ld l, a
	ld a, d
	ld h, a
	ld de, wRadioText
	ld bc, 2 * SCREEN_WIDTH
	call CopyBytes
	pop af
	ldh [hROMBank], a
	ld [MBC3RomBank], a
	ret

MobileTextBorder::
	; For mobile link battles only.
	ld a, [wLinkMode]
	cp LINK_MOBILE
	ret c

	; Draw a cell phone icon at the
	; top right corner of the border.
	hlcoord 19, 12
	ld [hl], $5e ; top
	hlcoord 19, 13
	ld [hl], $5f ; bottom
	ret

BattleTextbox::
; Open a textbox and print text at hl.
	push hl
	call SpeechTextbox
	call MobileTextBorder
	call UpdateSprites
	call ApplyTilemap
	pop hl
	jp PrintTextboxText

StdBattleTextbox::
; Open a textbox and print battle text at 20:hl.

	ldh a, [hROMBank]
	push af

	ld a, BANK(BattleText)
	rst Bankswitch

	call BattleTextbox

	pop af
	rst Bankswitch
	ret

GetBattleAnimPointer::
	ld a, BANK(BattleAnimations)
	rst Bankswitch

	ld a, [hli]
	ld [wBattleAnimAddress], a
	ld a, [hl]
	ld [wBattleAnimAddress + 1], a

	; ClearBattleAnims is the only function that calls this...
	ld a, BANK(ClearBattleAnims)
	rst Bankswitch

	ret

GetBattleAnimByte::
	push hl
	push de

	ld hl, wBattleAnimAddress
	ld e, [hl]
	inc hl
	ld d, [hl]

	ld a, BANK(BattleAnimations)
	rst Bankswitch

	ld a, [de]
	ld [wBattleAnimByte], a
	inc de

	ld a, BANK(BattleAnimCommands)
	rst Bankswitch

	ld [hl], d
	dec hl
	ld [hl], e

	pop de
	pop hl

	ld a, [wBattleAnimByte]
	ret

PushLYOverrides::
	ldh a, [hLCDCPointer]
	and a
	ret z

	ld a, LOW(wLYOverridesBackup)
	ld [wRequested2bppSource], a
	ld a, HIGH(wLYOverridesBackup)
	ld [wRequested2bppSource + 1], a

	ld a, LOW(wLYOverrides)
	ld [wRequested2bppDest], a
	ld a, HIGH(wLYOverrides)
	ld [wRequested2bppDest + 1], a

	ld a, (wLYOverridesEnd - wLYOverrides) / LEN_2BPP_TILE
	ld [wRequested2bppSize], a
	ret

GetLevelCap::
	ld hl, wOptions2
	bit LEVEL_CAPS_ON_OFF, [hl]
	jr z, .no_cap

; Return current level cap in a and in wCurLevelCap
; For obedience-based capping, level will be capped at MAX_LEVEL instead of wCurLevelCap
	ld hl, wEventFlags
	ld b, CHECK_FLAG
	ld de, EVENT_BEAT_RED
	call EventFlagAction
	ld a, c
	and a
	jr nz, .max_cap

	ld hl, wKantoBadges

	bit EARTHBADGE, [hl]
	ld a, 88
	jr nz, .finish

	bit VOLCANOBADGE, [hl]
	ld a, 68
	jr nz, .finish

	bit BOULDERBADGE, [hl]
	ld a, 65
	jr nz, .finish

	bit SOULBADGE, [hl]
	ld a, 64
	jr nz, .finish

	bit MARSHBADGE, [hl]
	ld a, 59
	jr nz, .finish

	bit CASCADEBADGE, [hl]
	ld a, 58
	jr nz, .finish

	bit RAINBOWBADGE, [hl]
	ld a, 57
	jr nz, .finish

	bit THUNDERBADGE, [hl]
	ld a, 57
	jr nz, .finish

	ld hl, wEventFlags
	ld b, CHECK_FLAG
	ld de, EVENT_BEAT_ELITE_FOUR
	call EventFlagAction
	ld a, c
	and a
	jr nz, .mid_cap

	ld hl, wJohtoBadges

	bit RISINGBADGE, [hl]
	ld a, 50
	jr nz, .finish

	bit GLACIERBADGE, [hl]
	ld a, 45
	jr nz, .finish

	bit MINERALBADGE, [hl]
	ld a, 42
	jr nz, .finish

	bit STORMBADGE, [hl]
	ld a, 38
	jr nz, .finish

	bit FOGBADGE, [hl]
	ld a, 35
	jr nz, .finish

	bit PLAINBADGE, [hl]
	ld a, 30
	jr nz, .finish

	bit HIVEBADGE, [hl]
	ld a, 23
	jr nz, .finish

	bit ZEPHYRBADGE, [hl]
	ld a, 16
	jr nz, .finish

	; no badges
	ld a, 11
	jr .finish

.max_cap
	ld a, MAX_LEVEL
	jr .finish

.mid_cap
	ld a, 56
.finish
	ld [wCurLevelCap], a
	ret

.no_cap
; Return MAX_LEVEL in wCurLevelCap and current obedience cap in a
	ld a, MAX_LEVEL
	ld [wCurLevelCap], a

	ld hl, wJohtoBadges

	bit RISINGBADGE, [hl]
	ld a, MAX_LEVEL + 1
	ret nz

	bit MINERALBADGE, [hl]
	ld a, 50
	ret nz

	bit PLAINBADGE, [hl]
	ld a, 30
	ret nz

	bit ZEPHYRBADGE, [hl]
	ld a, 20
	ret nz

	; no badges
	ld a, 10
	ret
