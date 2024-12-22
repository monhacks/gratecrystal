# Pokémon Grate Crystal

Repository: https://github.com/Grate-Oracle-Lewot/GrateCrystal

Recommended RGBDS version: 0.5.2

Recommended Emulator: BGB

*Not link-compatible or save-swappable with unaltered Crystal Version*

This is an edit of the pret community's "pokecrystal" disassembly on GitHub—in other words, a Pokémon Crystal romhack. It's called "Grate" Crystal because the editing (but not the original disassembling) was done by me, the Grate Oracle Lewot. There's not much of a theme to this project—it's about 1/3 joke hack, 1/3 "what I would actually change about Crystal," and 1/3 "how far can I push my hacking abilities?" I'll list most of the changes below, but I'm bound to miss more than a few details, so consider the list non-exhaustive.

# Pokémon removed

- Pichu (still cameos in the intro cinematic)
- Cleffa
- Igglybuff
- Smoochum
- Elekid
- Magby

# Pokémon added

- Cottonee
- Whimsicott
- Yanmega
- 5 new Pokémon based on unused beta designs, one of which is legendary

# Major Edits

- Fairy type added
- Physical/Special split
- TMs are infinite-use
- Difficulty settings in the options menu for disabling player items in battle and capping levels (via either disobedience or hard caps)
- Nayru62's advanced Pokédex shows base stats, learnsets, encounter rates, and much more
- New Pokédex entries for every Pokémon
- On the title screen, simply press Select to reset the clock, and B to delete your save data
- Time Capsule replaced with player gender swap machine
- Poké Seer replaced with move reminder
- Egg move tutor unlockable in Kanto
- Text scrolls automatically in battle (and at a few other key points)
- Run at bike speed by holding B (no effect on wild encounter rate or spinning trainers); brake on Cycling Road by holding B
- Greatly increased pack and PC item space, including a separate "Fruit" pocket for Berries and Apricorns, and doubled space for phone numbers in the Pokégear
- Berry and Apricorn trees now give out 5 at a time, as do phone contacts who give Berries
- Special encounters for all legendary Pokémon, some of which respawn after beating the League if you didn't catch them the first time
- Slight increase to all experience gains, and experience is now gained from catching Pokémon
- Double stat exp gained from battles, 1.9x from vitamins, and vitamins now keep working until near max stat exp
- A completely different Elite Four based on me and my friends/family (Lance is still the Champion)
- X items (X Attack, X Defend, etc.) now activate automatically if held in battle
- Pseudo-Abilities:
  - Pokémon that would/should have Levitate are given a similar Ground immunity, but certain Ground moves still work on them, like Bone Club and Mud-Slap; an up arrow is shown to indicate levitation in battle and on the stats screen
  - All Poison types have a similar effect to Liquid Ooze: draining moves used against them will hurt instead of heal, including Leech Seed but excluding Dream Eater as a special exception; however, if the user of the draining move is also Poison-type, then they still get healed
  - All Electric types have a 30% chance to Paralyze attackers on contact (but Ground types are immune to this)
  - All Fairy types have a 30% chance to infatuate opposite-gender attackers on contact (but Dark types are immune to this)
  - All Grass types get a 50% Speed boost in Sunny weather
  - All Rock types get a 50% Special Defense boost in Sandstorms
  - All Ice types get a 50% Defense boost in Hail
  - Fire types are immune to being Frozen
  - Water types are immune to being Burned
  - Steel types are immune to being Poisoned (mostly redundant, but previously Twineedle could do it; this feature is now available [as a tutorial](https://github.com/pret/pokecrystal/wiki/Prevent-Steel%E2%80%90types-from-being-poisoned-by-Twineedle))
  - Psychic types are immune to flinching
  - Dragon types are immune to critical hits
  - Ghost types are immune to Mean Look and Spider Web (they can still be trapped by Fire Spin, etc.)
  - Fighting types don't lose Attack while Burned
  - Flying types don't lose Speed while Paralyzed
  - We can count Shuckle's ability to make Berry Juice, which is now a much better item
  - Miltank can produce Moomoo Milk in the same manner as Shuckle fermenting Berries (in this case it needs an empty held item slot)
- Overhaul of Pokémon learnsets, egg moves, breeding groups, encounter locations, encounter levels, enemy trainer parties, wild held items, some base stats, etc.
  - Ditto is now the fastest Pokémon, letting it Transform before getting hit, and it can also learn a small number of TM moves
  - Unown and Delibird learn multiple moves
  - All learnsets are generally more interesting, containing what would normally be egg moves (and more), while egg moves now go even farther
  - All non-legendary Pokémon can be obtained prior to the Pokémon League, with the vast majority available around mid-Johto
  - Enemy trainer parties are more diverse and generally stronger, and new trainers are found throughout the game
  - All items are more widely available, either in shops, as wild held items, or things like Beuna's Password prizes
  - Trade evolutions have all been replaced with other methods, making them more easily obtainable in a ROM
  - Any Pokémon that received a new evolution in a later generation has its base stats increased to about halfway between its original stats and those of its evolution, to compensate for the evolutions not being present
  - All Pokémon that only belonged to one Egg Group now belong to two, Ditto can breed with itself, and legendaries can now breed with Ditto (except for Mewtwo)
- Mr. Pokémon is now named Pokey Man. After defeating Blue, you can battle Prof. Oak at Pokey Man's house once per day, and if you win, Pokey Man will give you another Odd Egg (or if you have Mewtwo in your party at the time, a Mewtwo egg)
- If you have all 16 Badges, you can fight former Elite Four members in a secondary gauntlet at the Cianwood Photo Studio
- Battle Tower edits:
  - Enemy Pokémon stats and movesets updated. Species and held items are mostly the same, with some changes to the Lv100 group for reasons below
  - Enemy Pokémon now have max PP for all of their moves
  - 2 more Pokémon added to each randomized pool (Lv10, Lv20, etc...., Lv100), plus an additional 16 Pokémon for the Lv100 challenge to pull from
  - After you've beaten Red, your 7th opponent in the Lv100 challenge will be replaced by one of 24 special trainers (random each time), consisting of Gym Leaders, League members, etc.
- A few Pokémon have been reverted to their beta designs, a few have palette changes to reflect their type changes (see below), some shiny palettes changed for various reasons, and Butterfree and Venomoth have had their sprites swapped
- Unused mine cart graphics added to some caves
- All of the rival's dialogue has been replaced with that from the Vietnamese Crystal bootleg

## Type chart changes
- Fairy merely resists Dragon instead of being totally immune
- Ice now resists Fairy and Flying
- Bug now resists Psychic, is no longer bad against Fire or Ghost, and is now bad against Rock
- Steel no longer resists Ghost or Psychic (but does still resist Dark)
- Graph: https://github.com/Grate-Oracle-Lewot/GrateCrystal/blob/master/gfx/typechart.png

## Pokémon type changes
- Rattata/Raticate: Normal -> Normal/Dark
- Spearow/Fearow: Normal/Flying -> Flying
- Pikachu has six forms, determined by DVs (like Unown letters):
  - Retro (uses Gen I sprites): pure Electric
  - Silver (animated Silver Version sprite): Electric/Normal
  - Crystal (normal Crystal Version sprite): Electric/Fairy
  - Fighting (kicking pose from Yellow Version intro): Electric/Fighting
  - Surfing (surfboard sprite from Yellow Version intro): Electric/Water
  - Flying (balloons sprite from Yellow Version intro): Electric/Flying
- Ekans/Arbok: Poison -> Poison/Dark
- Vulpix/Ninetales: Fire -> Fire/Ice
- Meowth/Persian: Normal -> Normal/Steel
- Golduck: Water -> Water/Psychic
- Mankey/Primape: Fighting -> Fighting/Dark
- Ponyta/Rapidash: Fire -> Fire/Fairy
- Slowpoke: Water/Psychic -> Psychic
- Farfetch'd: Normal/Flying -> Fighting/Flying
- Seel: Water -> Water/Ice
- Shellder/Cloyster: Water(/Ice) -> Water/Steel
- Drowzee/Hypno: Psychic -> Psychic/Dark
- Krabby/Kingler: Water -> Water/Bug
- Marowak: Ground -> Ground/Ghost
- Koffing/Weezing: Poison -> Poison/Fairy
- Rhyhorn/Rhydon: Ground/Rock -> Steel/Rock
- Tangela: Grass -> Grass/Water
- Kangaskhan: Normal -> Normal/Fighting
- Electabuzz: Electric -> Electric/Fighting
- Gyarados: Water/Flying -> Water/Dragon
- Kabuto/Kabutops: Rock/Water -> Rock/Bug
- Mewtwo: Psychic -> Psychic/Fighting
- Noctowl: Normal/Flying -> Ghost/Flying
- Ledyba/Ledian: Bug/Flying -> Bug/Fairy
- Spinarak/Ariados: Bug/Poison -> Bug/Dark
- Ampharos: Electric -> Electric/Dragon
- Politoed: Water -> Water/Ghost
- Sunflora: Grass -> Grass/Fire
- Slowking: Water/Psychic -> Poison/Psychic
- Girafarig: Normal/Psychic -> Normal/Ghost
- Dunsparce: Normal -> Dark/Fairy
- Qwilfish: Water/Poison -> Water/Fire
- Phanpy/Donphan: Ground -> Normal/Ground
- Stantler: Normal -> Normal/Psychic
- Hitmontop: Fighting -> Fighting/Fairy
- Larvitar/Pupitar: Rock/Ground -> Rock/Dark
- Lugia: Psychic/Flying -> Ice/Dragon (Aeroblast is Ice-type too and called "Zeroblast")
- Ho-Oh: Fire/Flying -> Fire/Dragon
- Yanmega: Bug/Flying -> Bug/Dragon
- Unown's type now appears as "???", and it's neutral to all types

## Moves
Check all changes under https://github.com/Grate-Oracle-Lewot/GrateCrystal/blob/master/data/moves/moves.asm

- Removed: Splash, Razor Wind, Barrage, Pain Split, Psywave, Frustration, Constrict, Detect, Poison Gas, Sharpen, Withdraw, Sweet Kiss, Mimic, and Explosion (Selfdestruct is now as strong as Explosion)

- Added: Fairy Wind, Play Rough, Moonblast, Dazzling Gleam (renamed Dazzly Gleam), Dark Pulse, Dragon Pulse, Power Gem, Silver Wind, Signal Beam, Earth Power, Air Slash, Iron Head, Poison Jab, Shadow Claw, Scald, Aura Sphere, Hail, and a new move called Night Terror (a high-power physical Ghost-type move that, like Snore, can only be used while asleep)

- Most moves with a power below 40 have been bumped up to 40 (or 20 for multiple-hit moves). Some other changes to move powers, and almost every move has received an accuracy boost.

- PP rebalanced for most moves.

- Some moves (mostly Normal ones) have had their types changed to allow for better move variety within rarer types.

- HM moves are better in battle, and a few moves have had their effects changed completely. Cut is now basically X-Scissor, Flash is Flash Cannon, Lovely Kiss is Draining Kiss, Hyper Fang also drains HP, Low Kick lowers Evasion (in addition to damaging), Leer lowers Special Defense, Kinesis sharply raises Special Attack, Cotton Spore sharply lowers Special Attack, Sky Attack flies up on the first turn like Fly and can hit an opponent who's currently flying (and has a 10% flinch chance), etc.

- Nightmare now inflicts both Sleep and the Nightmare status all in one turn. Since this is powerful, it now has low accuracy, but if the target is already asleep, the Nightmare status will be inflicted without fail, just like how the move worked before.

- Hidden Power always has a base power of 70; the type still changes based on DVs, but it can now be Fairy type.

- Tri Attack is now ???-type like Unown, and its effectiveness is based on Fire, Ice, and Electric combined.

- Foresight, along with letting Normal and Fighting moves hit Ghost types, now lets Ghost moves hit Normal types and Psychic moves hit Dark types.

- Flame Wheel, Rolling Kick, and Rapid Spin now double in power after you've used Defense Curl. (However, Flame Wheel and Sacred Fire no longer thaw out a Frozen user.)

- Psych Up no longer fails if the target has no stat changes, and now also copies the Defense Curl, Focus Energy, and X Accuracy statuses.

- Rage now builds twice when the Pokémon takes a critical hit.

- Moves like Earthquake that can hit while the opponent is underground with Dig can now do so even if the digger is Flying-type (or a pseudo-Levitater).

- Transform and Sketch work through Dig, Substitute, etc.

- If you use Substitute whilst already having a Substitute up, it raises both your Defense and Special Defense by one stage each.

- If you use Focus Energy while already pumped, it raises both your Attack and Special Attack by one stage each.

- If you use Spikes while Spikes are already up, it lowers the opponent's Evasion by one stage. This bypasses accuracy checks, and even works on Flying types and pseudo-Levitaters, who dodge the actual Spikes damage.

- The effects of Teleport and Baton Pass are combined: either move will act like Teleport in a wild battle and Baton Pass in a trainer battle. Against a wild Pokémon, if the player has more than one party member, either move will act like Baton Pass, but with only one they will act like Teleport. Teleport still has its out-of-battle effect, but Baton Pass doesn't get that.

- Struggle is no longer boosted by the Pink Bow. Beat Up and Future Sight are still boosted by the Blackglasses and Twistedspoon despite still being functionally typeless, because frankly they need the help.

- Triple Kick always hits 3 times. (It may hit fewer after accuracy drops, since each hit checks accuracy separately.)

- Spite always reduces PP by 5.

- Bide always lasts 2 turns.

## Items
- "Game Boy PC" obtained from Bill in Ecruteak, letting you access the PC anywhere (but you get a "no signal" message inside caves and the Pokémon League). To balance this, depositing a Pokémon in the PC no longer restores its PP (but does still restore its HP and status).
- New key items obtained throughout the game that can perform the out-of-battle functions of HM moves without the need for the move, all usable with Select (but you still need the corresponding badge)
- New fishing rod, the Odd Rod, hooks rare Pokémon like Omanyte and Kabuto
- New held items that each completely prevent a specific status condition (these will not block Sleep with Rest, but will block Confusion with Thrash/Outrage/Petal Dance)
- "Hardhat," a new held item which prevents recoil damage, as well as crash damage from [Hi] Jump Kick
- "Catch Charm," named after Gen VIII's Catching Charm, here a Pokémon held item that increases catching chance
- Type boost held items now boost their type's power by 19% instead of 10%
- Everstone now also has the effect of Eviolite, boosting defenses of unevolved holders in addition to preventing them from evolving
- King's Rock now adds its flinch chance to all damaging moves, even ones with secondary effects (the exceptions being Future Sight and moves that already have a flinch chance)
- Lucky Punch works for Blissey as well as Chansey, and it and the Stick/Leek can now stack with other crit rate boosts instead of locking in a flat 2-stage boost; Dire Hit is now separate from Focus Energy, allowing both to stack (for the chance to crit at each boost stage, see https://github.com/Grate-Oracle-Lewot/GrateCrystal/blob/master/data/battle/critical_hit_chances.asm)
- Sacred Ash can be used even if no party Pokémon are currently fainted
- Most Berries and some other items renamed for flavor
- X Sp. Defend, X Evade, Dusk Ball, and Timer Ball (Timer Ball can tick up to x10 catch chance)
- 60 TMs and 8 HMs
- Itemfinder replaced with consumable versions called Swag Beacons
- The Clear Bell now has the effect of Gen I's Poké Flute when used, waking up all sleeping Pokémon in battle (but it can't be used to wake up Snorlax in the field)
- Removed: Berserk Gene, Metal Powder

## Move tutors

- The one in Goldenrod who teaches Flamethrower, Thunderbolt, and Ice Beam will now teach moves as soon as you defeat Whitney, appears every day instead of just certain days of the week, can teach multiple moves in one day, only charges 2500 coins per move instead of 4000, and can now also teach Tri Attack

- Two new ones in Celadon City: one will teach Sacred Fire in exchange for a Gold Leaf, and one Zeroblast (Aeroblast) for a Silver Leaf

- One in the Ruins of Alph research center will teach Aura Sphere for free once you collect all forms of Unown

## Game Corner prize Pokémon

- Johto:
  - Monday-Friday: Abra Lv10 (500C), Porygon Lv10 (1000C), Wobbuffet Lv20 (1500C)
  - Saturday-Sunday: Swinub Lv15 (1000C), Gligar Lv15 (3000C), Skarmory Lv15 (3000C)

- Kanto: Porygon2 Lv40 (4000C), Togetic Lv50 (5000C), Dragonite Lv60 (9999C)

## Locations
- Viridian Forest (similar layout to Gen I with the National Park tileset)
- Pewter Museum (fossils can be resurrected at Lv.1, with a random chance to start in their evolved form, e.g. Kabutops instead of Kabuto)
- Mt. Moon expanded (similar layout to Gen I, no Rockets)
- Silph Co. upper floors (similar layout to Gen I, no Rockets; defeat the Chief for endless free Up-Grades)
- A second floor to the Power Plant (similar layout to Gen I, no wild encounters; navigate to find the Manager, with optional battles against Engineers)
- Cerulean Cave (layout most resembles English Red/Blue; navigate to find a special item)
- An abandoned version of the Safari Zone
- A room linking Union Cave and Slowpoke Well together
- An extra room in Dark Cave
- A backroom to the Goldenrod Game Corner where you can battle Gamblers whose Pokémon are high-level but use luck-based moves like one-hit-KOs or Metronome
- A version of Seafoam Cave hosting a final, all-Lv100 battle against me (unlocked by beating Red)
- A house on Route 22 where different characters appear, most of whom can be battled once per day
  - Monday: Koga, who now uses Fairy types instead of Poison
  - Tuesday: Officer Jenny; no battle, but she gives out 6 Rare Candies (or 6 PP Ups if you've beaten Red)
  - Wednesday: Jessie and James, with their Pokémon from the anime
  - Thursday: A trainer version of MissingNo., with three different variants for morning, day, and night
  - Friday: Giovanni, using Ground types plus Persian
  - Saturday: Karen, using Dark types; only appears at night
  - Sunday: In the morning, Mr. Fuji appears, no battle; in the day, if you have access to Mt. Silver, Lance will appear for a rematch with levels similar to the Lance/Clair double battle in HGSS; if you talk to Mr. Fuji the same morning before you battle Lance, Lance will give you another Master Ball upon defeat
- A lounge on Route 23, only accessible if you've opened Mt. Silver, where Gym Leaders and Red can be found and rematched; Clair isn't rematched since her team would be too similar to Lance in his rematch above, but available rematches on a given day can be repeated infinitely for easy late-game grinding
  - Monday: Falkner and Brock
  - Tuesday: Bugsy and Misty
  - Wednesday: Whitney and Lt. Surge
  - Thursday: Morty and Erika
  - Friday: Chuck and Janine
  - Saturday: Jasmine and Sabrina
  - Sunday: Pryce and Blaine, and Blue can be rematched if you've spoken to Mr. Fuji in the Route 22 house on that day (or anytime after you've beaten Red)
  - If you've beaten Red in Mt. Silver, he can be rematched here any day, now without the credits, and additionally the Gym Guide will give out infinite free Rare Candies

## Enemy trainer AI

- In addition to using items on their highest-level Pokémon, trainers will now use items on their last remaining Pokémon. They will also avoid using items on a Pokémon that is currently afflicted with Perish Song.

- Move lists in https://github.com/Grate-Oracle-Lewot/GrateCrystal/blob/master/data/battle/ai updated. Most notably, "useful moves" now consists only of moves with decent base power, 100% accuracy, no type that's immune to them, and no drawbacks like (re)charge turns or recoil. Spore is also on there due to being the best status move.

- AI_BASIC now discourages status moves if the player has a Substitute (important since Substitute is once again a universal TM).

- AI_SETUP now encourages stat-up moves if the player is currently flying or underground and the enemy is faster, in addition to its normal stuff.

- AI_TYPES now encourages moves in the Rain Dance and Sunny Day lists if those weather conditions are up, in addition to its type effectiveness check. It does not encourage Blizzard in Hail.

- AI_RISKY only avoids using Selfdestruct, not one-hit KO moves. No idea why those were in there.

- AI_OPPORTUNIST now checks the player's HP instead of the enemy's, and now encourages moves in the "useful" list if the player's HP is low, in addition to discouraging moves in the "stall" list if the same.

- AI_AGGRESSIVE only has a 50% chance to not discourage "reckless" moves, and the reckless list now consists only of multi-hit moves, not Selfdestruct and Thrash/Outrage/Petal Dance. Additionally, it now discourages "stall" moves if it's down to its last Pokémon.

- Many changes to AI_SMART subroutines, and new ones added. These keep the AI aware of all the other changes I've made to the game, and occasionally revise strategies for specific moves, e.g. encouraging Roar/Whirlwind if Spikes are set up.

## Miscellaneous
- If you're playing with hard level caps on, Pokémon will no longer gain any experience while in the Daycare, but they will still be able to breed. This is an unfortunate necessity of the interactions between how Daycare experience and leveling work and the ability to turn the level caps on and off at any time.
- The Grimer and Koffing lines are now genderless, but can still learn egg moves from the egg move tutor
- Sleep now lasts from 1 to 5 turns both in and outside the Battle Tower
- Just like how Pokémon can't be Frozen during Harsh Sunlight, they now can't be Burned during Rain
- All bedroom decorations obtained throughout the game (but Mystery Gift is disabled)
- Due to no Mystery Gift, the Trainer House now has you fight a copy of your own party from the last time you saved (this feature is now available [as a tutorial](https://github.com/pret/pokecrystal/wiki/Fight-a-copy-of-your-own-party-in-the-Trainer-House))
- Several new NPC trades, and some alterations to existing ones
- When you set loose the Legendary Beasts beneath the Burned Tower, they automatically count as seen in the Pokédex, allowing you to track their roaming without having to stumble upon them first
- When the player crosses map borders, roaming beasts now only change maps 50% of the time, making them potentially easier to ambush
- The Odd Egg will always hatch into a shiny, and now may hatch into starters
- The Dratini gifted from the Dragon Shrine always knows Extremespeed, not only if you answer all the questions right
- Gift Pokémon can be sent to the PC, no longer requiring an empty party slot (with a few exceptions such as the above Dratini, due to unique code)
- NPCs in Kanto who sell Berries and Apricorns
- Tweaks to specific move effects like the possible powers of Present and Magnitude
- Pokéfans and a few other trainers use nicknames for their Pokémon
- Chansey NPCs in Pokémon Centers, Delibird NPCs in Poké Marts, and nurses and clerks are color-coded based on the city's name
- Color-coded starter balls
- Color-coded item balls in the field (blue for TMs, green for HMs and their replacement items, gray for Sacred Ash, brown for the Coin Case)
- Most trainer money rewards increased, but Rockets now give no money due to being criminals (and Teachers give minimal due to not getting paid enough)
- Happiness builds a bit faster
- Eggs hatch roughly twice as fast, and come out at Lv.1 instead of Lv.5
- Higher chance to contract Pokérus, and no requirement to reach Goldenrod first (no Goldenrod requirement for Shuckle to make Berry Juice either)
- Nidorina and Nidoqueen can breed, and any of the Nidos can produce either gender of Nidoran eggs; Tauros and Miltank can produce each other's eggs, and Metapod, Kakuna, and Porygon can no longer breed (Porygon2 still can)
- Nidorino can now evolve into Nidoqueen instead of Nidoking by using a Sun Stone instead of a Moon Stone, and Nidorina into Nidoking (Moon Stones still work normally for both)
- Weepinbell can now evolve into Bellossom with a Sun Stone (Gloom still can as well)
- Marill now evolves with a Water Stone, increasing parallels to Pikachu
- Automatic weather in certain areas: Harsh Sunlight in the National Park, the top of the Tin Tower, and Blaine's Gym; Rain inside Slowpoke Well, the Whirl Islands, and Misty's Gym; Hail in the Ice Path, Lugia's chamber, and Pryce's Gym; and Sandstorms in Victory Road, Mt. Silver, and Brock's Gym
- Unfought Gym trainers can still be fought after the Leader is defeated
- Phone contacts who required specific Pokémon in the player's party to be registered no longer have those requirements, but give out lesser sellable items instead of Nuggets
- All Kanto Gym Leaders give out TMs when defeated (some of these could already be bought or found earlier, but hey, it's something)
- No more swarm encounters
- No more badge boosts (stat-based or type-based)
- Changes to some overworld sprites and palettes, either for accuracy or to make important NPCs stand out more
- Lt. Surge's trashcan puzzle restored and modified, Blaine's cave Gym expanded, smashable rocks added to Brock's Gym, a quick exit warp added to Sabrina's Gym, and Viridian Gym's old layout recreated with its Gen II Lego tiles
- The Marshbadge and Soulbadge have their names and designs swapped
- Female players retain their female sprites in the Link Trade and Battle rooms
- Text edits, often humorous (or so I'd like to think)

# Minor Edits

See: https://github.com/pret/pokecrystal/wiki/Tutorials

- Unused experience growth rates given to some Pokémon, and a few other rates changed
- A Pokémon being shiny now indicates perfect or near-perfect DVs
- Tiles animate even when textboxes are open
- Enemy trainers have maximum happiness for a powerful Return
- Colored party menu icons, plus a few new ones
- Some songs imported from Gen I
- A fourth Pokémon stats page showing DVs and Hidden Power type
- One more wild Pokémon slot for both grass and water
- Surf encounter level variance of +0 to +4 applied to all wild encounters, including fishing (excluding Headbutt and Rock Smash; couldn't get those to work)
- Time fishgroups actually have different Pokémon at different times
- Unown ! and ? added (eyes not droopy)
- Rocket battle music applied to Executives, "R" transition for all Rockets, and a special transition for me
- Trainers automatically offer their phone numbers when defeated, and their rematch parties are based solely on event progress instead of fight count
- Flypoints for the Pokémon Centers at Union Cave and Rock Tunnel, plus the heal house on Route 26; Route 3's Pokémon Center restored with a flypoint
- Default Fast text speed and Instant speed option
- Default player and rival names changed
- Tilesets expanded from 192 to 255 (used only for Nayru's dex)
- Outdoor sprite system improvement
- Event initialization system improvement
- Increased max number of tiles for Pokémon animations
- Trainer types refactored into bit flags
- Trainer card visual upgrades: leader head tops, badge colors, Kanto badge page
- Correct grammar for plural trainers like Twins
- Short beeping noise for low HP
- Artificial save delays removed
- Press Select to view shiny colors in the Pokédex
- Lucky Number daily instead of weekly
- Pokémon gender formula modified for stat equity
- Kurt finishes Apricorn balls quickly
- Accuracy, effect chance, and physicality shown on move menu
- 25% AI failure chance removed
- Redundant move grammar table removed
- Command queue system reduced to just stone tables
- No experience gained at Lv100
- Poison damage in the field every 5 steps instead of 4
- TM and HM move names shown upon acquisition and in marts
- Automatic prompts to use another Repel
- Certain moves learned upon evolution regardless of level
- Icons shown for active weather when selecting moves in battle
- Unique colors for each thrown Poké Ball
- Smashing rocks has a chance to give items (Headbutting trees too!)
- Customizable Pokédex color (14 choices)
- Night arrangement for the Kanto wild battle theme, to go along with the existing Johto one
- Menu account replaced with clock and level cap display

# Bug Fixes

- See: https://github.com/Grate-Oracle-Lewot/GrateCrystal/blob/master/docs/design_flaws.md
- And: https://github.com/Grate-Oracle-Lewot/GrateCrystal/blob/master/docs/bugs_and_glitches.md

I haven't done absolutely everything in both of those, but most. The main takeaway is that the Apricorn balls should all now work the way they were intended to. The Moon Ball now has a higher catch chance on any member of an evolutionary family that involves a Moon Stone, which now includes all the Gen I trade evolutions.

# Why remove some Pokémon and moves?

In both cases, the maximum number is limited by the size of a byte. (That's 256, but actually a few less because some values are used for other purposes, such as indicating a lack of an entry or the end of the list.) There are possible ways around this, but they're a bit above my skill level, and even if I bypass the numerical limit, I may not have room for more entries in the memory banks, which are much harder to work around. As for deciding to remove the baby Pokémon, I really didn't want to remove any Pokémon even if they were useless in battle (I think Pichu is cuter than Pikachu!), but I was also really excited about adding new Pokémon, and the way I see it, the main purpose of the baby Pokémon is to encourage the breeding mechanic by requiring it for Pokédex completion, but this particular hack is supposed to be pretty silly and breezy, so I doubt anyone will spend time breeding in it, or even completing the Pokédex for that matter. I kept Togepi because of the free egg and Tyrogue to properly connect the Hitmons, and the rest is recent history.

# Why aren't you using newbox?

Again, above my skill level. It also has some requirements like variable-width font and certain pixel restrictions on Pokémon icons, and I don't really want to deal with all that.

# Why did you use THIS beta mon instead of THAT one?

Along with personal preference, I prioritized the ones that could most reasonably be given unique type combinations (unique within this hack, that is), thus allowing for wider type variety overall.

# How come turning off battle items doesn't stop the computer from using them?

The whole point of that setting is to make the game harder. Turning off computer items along with yours would be more of a sidegrade. Anyway, both are off in the Battle Tower.

# Can I copy your code?

Yes, but to call this repository "disorganized" would be flattery. Don't say I didn't warn you.

# Credits

Coding help - The entire github/pret/pokecrystal community, Discord, and tutorials, but especially Nayru62, ax6/aaaaaa123456789, Rangi42/Sylvie, Idain, and DamienDoury. More names in https://github.com/Grate-Oracle-Lewot/GrateCrystal/blob/master/data/credits_strings.asm

ArtUnderTheArch - Percy trainer sprite, Percy overworld sprites, surfing Pikachu backsprite, flying Pikachu backsprite

Lucas Wright - Yanmega and Whimsicott frontsprites

SCMidna - Unown ! and ? sprites and animations

Tom Wang - male player running frames

Seasick/Mauve Sea - female player running frames, Mary sprites

FrenchOrange - Karen walking frames

Bronzeswagger - Hail weather icon (before I edited it)

Mmmmmmmmmmmmmmmmm - Route 47 theme demix

Cottonee frontsprite and Cottonee, Whimsicott, and Yanmega backsprites - edited from a sheet that credits LostImpact, Neslug, Gold Z, Chaos Rush, Solo, lakeofdance, Blue Emerald, bloodless, Pokekoks, boonzeet, and Rangi

Some Pokémon icons taken from sheets by Emi Monserrate, LuigiTKO, Chamber, Solo0993, Blue Emerald, Lake, Neslug, and Pikachu25
