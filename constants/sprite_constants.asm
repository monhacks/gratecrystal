; sprite ids
; OverworldSprites indexes (see data/sprites/sprites.asm)
	const_def
	const SPRITE_NONE                  ; 00
	const SPRITE_CHRIS                 ; 01
	const SPRITE_CHRIS_BIKE            ; 02
	const SPRITE_GAMEBOY_KID           ; 03
	const SPRITE_SILVER                ; 04
	const SPRITE_OAK                   ; 05
	const SPRITE_RED                   ; 06
	const SPRITE_BLUE                  ; 07
	const SPRITE_BILL                  ; 08
	const SPRITE_ELDER                 ; 09
	const SPRITE_JANINE                ; 0a
	const SPRITE_KURT                  ; 0b
	const SPRITE_MOM                   ; 0c
	const SPRITE_BLAINE                ; 0d
	const SPRITE_REDS_MOM              ; 0e
	const SPRITE_DAISY                 ; 0f
	const SPRITE_ELM                   ; 10
	const SPRITE_WILL                  ; 11
	const SPRITE_FALKNER               ; 12
	const SPRITE_WHITNEY               ; 13
	const SPRITE_BUGSY                 ; 14
	const SPRITE_MORTY                 ; 15
	const SPRITE_CHUCK                 ; 16
	const SPRITE_JASMINE               ; 17
	const SPRITE_PRYCE                 ; 18
	const SPRITE_CLAIR                 ; 19
	const SPRITE_BROCK                 ; 1a
	const SPRITE_KAREN                 ; 1b
	const SPRITE_BRUNO                 ; 1c
	const SPRITE_MISTY                 ; 1d
	const SPRITE_LANCE                 ; 1e
	const SPRITE_SURGE                 ; 1f
	const SPRITE_ERIKA                 ; 20
	const SPRITE_KOGA                  ; 21
	const SPRITE_SABRINA               ; 22
	const SPRITE_COOLTRAINER_M         ; 23
	const SPRITE_COOLTRAINER_F         ; 24
	const SPRITE_BUG_CATCHER           ; 25
	const SPRITE_TWIN                  ; 26
	const SPRITE_YOUNGSTER             ; 27
	const SPRITE_LASS                  ; 28
	const SPRITE_TEACHER               ; 29
	const SPRITE_BEAUTY                ; 2a
	const SPRITE_SUPER_NERD            ; 2b
	const SPRITE_ROCKER                ; 2c
	const SPRITE_POKEFAN_M             ; 2d
	const SPRITE_POKEFAN_F             ; 2e
	const SPRITE_GRAMPS                ; 2f
	const SPRITE_GRANNY                ; 30
	const SPRITE_SWIMMER_GUY           ; 31
	const SPRITE_SWIMMER_GIRL          ; 32
	const SPRITE_BIG_SNORLAX           ; 33
	const SPRITE_SURFING_PIKACHU       ; 34
	const SPRITE_ROCKET                ; 35
	const SPRITE_ROCKET_GIRL           ; 36
	const SPRITE_NURSE                 ; 37
	const SPRITE_LINK_RECEPTIONIST     ; 38
	const SPRITE_CLERK                 ; 39
	const SPRITE_FISHER                ; 3a
	const SPRITE_FISHING_GURU          ; 3b
	const SPRITE_SCIENTIST             ; 3c
	const SPRITE_KIMONO_GIRL           ; 3d
	const SPRITE_SAGE                  ; 3e
	const SPRITE_UNUSED_GUY            ; 3f
	const SPRITE_GENTLEMAN             ; 40
	const SPRITE_BLACK_BELT            ; 41
	const SPRITE_RECEPTIONIST          ; 42
	const SPRITE_OFFICER               ; 43
	const SPRITE_CAL                   ; 44
	const SPRITE_SLOWPOKE              ; 45
	const SPRITE_CAPTAIN               ; 46
	const SPRITE_BIG_LAPRAS            ; 47
	const SPRITE_GYM_GUIDE             ; 48
	const SPRITE_SAILOR                ; 49
	const SPRITE_BIKER                 ; 4a
	const SPRITE_PHARMACIST            ; 4b
	const SPRITE_MONSTER               ; 4c
	const SPRITE_FAIRY                 ; 4d
	const SPRITE_BIRD                  ; 4e
	const SPRITE_DRAGON                ; 4f
	const SPRITE_BIG_ONIX              ; 50
	const SPRITE_N64                   ; 51
	const SPRITE_SUDOWOODO             ; 52
	const SPRITE_SURF                  ; 53
	const SPRITE_POKE_BALL             ; 54
	const SPRITE_POKEDEX               ; 55
	const SPRITE_PAPER                 ; 56
	const SPRITE_VIRTUAL_BOY           ; 57
	const SPRITE_OLD_LINK_RECEPTIONIST ; 58
	const SPRITE_ROCK                  ; 59
	const SPRITE_BOULDER               ; 5a
	const SPRITE_SNES                  ; 5b
	const SPRITE_FAMICOM               ; 5c
	const SPRITE_FRUIT_TREE            ; 5d
	const SPRITE_GOLD_TROPHY           ; 5e
	const SPRITE_SILVER_TROPHY         ; 5f
	const SPRITE_KRIS                  ; 60
	const SPRITE_KRIS_BIKE             ; 61
	const SPRITE_SUICUNE               ; 62
	const SPRITE_ENTEI                 ; 63
	const SPRITE_RAIKOU                ; 64
	const SPRITE_CHRIS_RUN             ; 65
	const SPRITE_KRIS_RUN              ; 66
	const SPRITE_REAL_KAREN            ; 67
	const SPRITE_REAL_KOGA             ; 68
	const SPRITE_JESSIE                ; 69
	const SPRITE_JAMES                 ; 6a
	const SPRITE_GIOVANNI              ; 6b
	const SPRITE_OFFICER_JENNY         ; 6c
	const SPRITE_GLITCH                ; 6d
	const SPRITE_COOK                  ; 6e
	const SPRITE_SITTING_BIRD          ; 6f
	const SPRITE_MONSTER_BACK          ; 70
	const SPRITE_CLEFAIRY_DOLL         ; 71
	const SPRITE_JIGGLYPUFF_DOLL       ; 72
	const SPRITE_SHELLDER_DOLL         ; 73
	const SPRITE_TENTACOOL_DOLL        ; 74
	const SPRITE_BULBASAUR_DOLL        ; 75
	const SPRITE_SQUIRTLE_DOLL         ; 76
	const SPRITE_DIGLETT_DOLL          ; 77
	const SPRITE_ODDISH_DOLL           ; 78
	const SPRITE_GRIMER_DOLL           ; 79
	const SPRITE_GEODUDE_DOLL          ; 7a
	const SPRITE_MACHOP_DOLL           ; 7b
	const SPRITE_MARY                  ; 7c
	const SPRITE_LOTUS_LADY            ; 7d
	const SPRITE_YELLOW_PIKACHU        ; 7e
	const SPRITE_EUSINE                ; 7f
NUM_OVERWORLD_SPRITES EQU const_value - 1

; SpriteMons indexes (see data/sprites/sprite_mons.asm)
	const_next $80
SPRITE_POKEMON EQU const_value
	const SPRITE_UNOWN      ; 80
	const SPRITE_GEODUDE    ; 81
	const SPRITE_GROWLITHE  ; 82
	const SPRITE_WEEDLE     ; 83
	const SPRITE_SHELLDER   ; 84
	const SPRITE_ODDISH     ; 85
	const SPRITE_GENGAR     ; 86
	const SPRITE_ZUBAT      ; 87
	const SPRITE_MAGIKARP   ; 88
	const SPRITE_SQUIRTLE   ; 89
	const SPRITE_TOGEPI     ; 8a
	const SPRITE_BUTTERFREE ; 8b
	const SPRITE_DIGLETT    ; 8c
	const SPRITE_POLIWAG    ; 8d
	const SPRITE_PIKACHU    ; 8e
	const SPRITE_CLEFAIRY   ; 8f
	const SPRITE_CHARMANDER ; 90
	const SPRITE_JYNX       ; 91
	const SPRITE_STARMIE    ; 92
	const SPRITE_BULBASAUR  ; 93
	const SPRITE_JIGGLYPUFF ; 94
	const SPRITE_GRIMER     ; 95
	const SPRITE_EKANS      ; 96
	const SPRITE_PARAS      ; 97
	const SPRITE_TENTACOOL  ; 98
	const SPRITE_TAUROS     ; 99
	const SPRITE_MACHOP     ; 9a
	const SPRITE_VOLTORB    ; 9b
	const SPRITE_LAPRAS     ; 9c
	const SPRITE_RHYDON     ; 9d
	const SPRITE_MOLTRES    ; 9e
	const SPRITE_SNORLAX    ; 9f
	const SPRITE_GYARADOS   ; a0
	const SPRITE_LUGIA      ; a1
	const SPRITE_HO_OH      ; a2
	const SPRITE_CHANSEY    ; a3
	const SPRITE_FLOWER     ; a4
	const SPRITE_FISH       ; a5
	const SPRITE_DRAGONITE  ; a6
	const SPRITE_ABRA       ; a7
NUM_POKEMON_SPRITES EQU const_value - SPRITE_POKEMON

; special GetMonSprite values (see engine/overworld/overworld.asm)
	const_next $e0
	const SPRITE_DAY_CARE_MON_1 ; e0
	const SPRITE_DAY_CARE_MON_2 ; e1

; wVariableSprites indexes (see wram.asm)
	const_next $f0
SPRITE_VARS EQU const_value
	const SPRITE_CONSOLE             ; f0
	const SPRITE_DOLL_1              ; f1
	const SPRITE_DOLL_2              ; f2
	const SPRITE_BIG_DOLL            ; f3
	const SPRITE_FUCHSIA_GYM_1       ; f4
	const SPRITE_FUCHSIA_GYM_2       ; f5
	const SPRITE_FUCHSIA_GYM_3       ; f6
	const SPRITE_FUCHSIA_GYM_4       ; f7
	const SPRITE_COPYCAT             ; f8
	const SPRITE_JANINE_IMPERSONATOR ; f9
	const SPRITE_LINK_TRAINER        ; fa
	const SPRITE_TRAINER_HOUSE       ; fb
