execute store result score #temp entity_curhp run data get entity @s Health 10000
execute store result score #temp entity_maxhp.old run attribute @s minecraft:max_health base get 10000
scoreboard players operation #temp entity_maxhp.old -= #temp entity_curhp

scoreboard players operation @s entity_maxhp = @s entity_basehp
scoreboard players operation @s entity_curhp = @s entity_basehp
scoreboard players operation @s entity_curap = @s entity_baseap
scoreboard players operation @s entity_temphp = @s entity_curhp

function internal:world/entity/creature/set_modifiers