execute store result entity @s attributes[{id:"minecraft:max_health"}].base double 0.0001 run scoreboard players get #temp entity_maxhp
execute store result entity @s attributes[{id:"minecraft:attack_damage"}].base double 0.0001 run scoreboard players get #temp entity_curap
#execute store result entity @s attributes[{id:"minecraft:armor"}].base double 0.0001 run scoreboard players get #temp entity_armor
execute store result entity @s Health float 0.0001 run scoreboard players get #temp entity_curhp

scoreboard players operation #temp entity_maxhp /= #const 1000
scoreboard players operation #temp entity_curhp /= #const 1000
scoreboard players operation #temp entity_curap /= #const 1000
#scoreboard players operation #temp entity_armor /= #const 1000
scoreboard players operation #temp entity_maxhp /= #const 10
scoreboard players operation #temp entity_curhp /= #const 10
scoreboard players operation #temp entity_curap /= #const 10
#scoreboard players operation #temp entity_armor /= #const 10
scoreboard players operation @s entity_maxhp = #temp entity_maxhp
scoreboard players operation @s entity_curhp = #temp entity_curhp
scoreboard players operation @s entity_curap = #temp entity_curap
#scoreboard players operation @s entity_armor = #temp entity_armor

scoreboard players reset #temp entity_level
scoreboard players reset #temp entity_count
scoreboard players reset #temp entity_maxhp
scoreboard players reset #temp entity_curhp
scoreboard players reset #temp entity_curap
scoreboard players reset #temp entity_maxhp.old
#scoreboard players reset #temp entity_armor
scoreboard players reset #temp entity_difficulty
scoreboard players operation @s entity_difficulty = #world cfg.difficulty