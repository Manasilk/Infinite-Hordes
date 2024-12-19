function internal:world/general/time/gametime

#Update player biome tag
execute if entity @s[tag=!ENTITY_FLAG_SWIMMING_FATIGUE,predicate=internal:world/biome/deep_ocean] run function internal:world/entity/player/set_fatigue_flag

#Update player dimension tag
execute if predicate internal:world/dimension/overworld run function internal:world/entity/player/get_travel_overworld
execute if predicate internal:world/dimension/the_nether run function internal:world/entity/player/get_travel_nether
execute if predicate internal:world/dimension/the_end run function internal:world/entity/player/get_travel_end

execute if entity @s[scores={double_reward=1}] run function internal:world/time/double_reward_timer
execute if entity @s[scores={double_loot=1}] run function internal:world/time/double_loot_timer
execute if entity @s[tag=ENTITY_FLAG_SWIMMING_FATIGUE] run function internal:world/entity/player/update_fatigue
scoreboard players remove @s[scores={unstuck_cd=1..}] unstuck_cd 1
execute store result score @s entity_difficulty run difficulty