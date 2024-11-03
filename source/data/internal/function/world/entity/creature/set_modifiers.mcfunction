execute at @s run function internal:world/entity/creature/set_scaling_level
scoreboard players operation #temp entity_maxhp = @s entity_maxhp
scoreboard players operation #temp entity_curhp = @s entity_curhp
scoreboard players operation #temp entity_curap = @s entity_curap
#scoreboard players operation #temp entity_armor = @s entity_armor
scoreboard players operation #temp entity_maxhp *= #const 1000
scoreboard players operation #temp entity_curhp *= #const 1000
scoreboard players operation #temp entity_curap *= #const 1000
#scoreboard players operation #temp entity_armor *= #const 1000

#Health
scoreboard players operation #temp entity_level /= #const 2
scoreboard players operation #temp entity_maxhp += #temp entity_level
scoreboard players operation #temp entity_curhp += #temp entity_level
#Damage
scoreboard players operation #temp entity_level /= #const 10
scoreboard players operation #temp entity_curap += #temp entity_level
#Armor
#scoreboard players operation #temp entity_armor += #temp entity_level

#Difficulty based multipliers
scoreboard players operation #temp cfg.difficulty = #world cfg.difficulty
#Normalize difficulty: Easy = 1, Normal = 2, Hard = 3 >> Easy = *1, Normal = *1.5, Hard = *2
execute if score #temp cfg.difficulty matches 1 run scoreboard players set #temp cfg.difficulty 10
execute if score #temp cfg.difficulty matches 2 run scoreboard players set #temp cfg.difficulty 15
execute if score #temp cfg.difficulty matches 3 run scoreboard players set #temp cfg.difficulty 20

scoreboard players operation #temp entity_maxhp *= #temp cfg.difficulty
scoreboard players operation #temp entity_curhp *= #temp cfg.difficulty
scoreboard players operation #temp entity_curap *= #temp cfg.difficulty
#scoreboard players operation #temp entity_armor *= #temp cfg.difficulty

#execute if score #temp entity_maxhp.old matches 0.. run scoreboard players operation #temp entity_maxhp.old -= #temp entity_maxhp
#execute if score #temp entity_maxhp.old matches ..-1 run scoreboard players operation #temp entity_maxhp.old *= #const CNVT_OPP
#execute if score #temp entity_maxhp.old >= #const INT_MIN run scoreboard players operation #temp entity_curhp = #temp entity_maxhp.old
#execute if score #temp entity_curhp matches ..0 run scoreboard players set #temp entity_curhp 60000

function internal:world/entity/creature/set_updated_attributes
tag @s[tag=!creature.initialized_scaling] add creature.initialized_scaling