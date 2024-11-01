execute store result score @s entity_basehp run attribute @s minecraft:max_health base get
execute store result score @s entity_baseap run attribute @s minecraft:attack_damage base get
execute store result score @s entity_armor run attribute @s minecraft:armor base get

scoreboard players operation @s entity_maxhp = @s entity_basehp
scoreboard players operation @s entity_curhp = @s entity_basehp
scoreboard players operation @s entity_curap = @s entity_baseap
scoreboard players operation @s entity_temphp = @s entity_curhp

attribute @s[tag=ENTITY_FLAG_EXTRA_IMMUNE_KNOCKBACK] minecraft:knockback_resistance base set 10.0
attribute @s[team=!Friendly] follow_range base set 32
attribute @s[team=Friendly] follow_range base set 16