tag @s remove TARGET_AGGRO
tag @s[tag=TARGET_NONE] remove TARGET_NONE
tag @s[tag=TARGET_SELF] remove TARGET_SELF
tag @s[tag=TARGET_POSITION] remove TARGET_POSITION
#tag @s[tag=TARGET_PLAYER_NEAREST] remove TARGET_PLAYER_NEAREST
#tag @s[tag=TARGET_PLAYER_FURTHEST] remove TARGET_PLAYER_FURTHEST
#tag @s[tag=TARGET_PLAYER_RANDOM] remove TARGET_PLAYER_RANDOM
#tag @s[tag=TARGET_PLAYER_MELEE] remove TARGET_PLAYER_MELEE
#tag @s[tag=TARGET_CREATURE_NEAREST] remove TARGET_CREATURE_NEAREST
#tag @s[tag=TARGET_CREATURE_FURTHEST] remove TARGET_CREATURE_FURTHEST

scoreboard players reset @s has_target
scoreboard players reset @s target_id