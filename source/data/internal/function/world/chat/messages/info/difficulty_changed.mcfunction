execute store result score @s cfg.difficulty run difficulty
execute store result score #world cfg.difficulty run difficulty
execute if score @s[tag=!ENTITY_FLAG_IN_COMBAT] cfg.difficulty matches 1 run tellraw @s {"text":"Difficulty set to \"Easy\". All changes are applied.","color":"yellow"}
execute if score @s[tag=!ENTITY_FLAG_IN_COMBAT] cfg.difficulty matches 2 run tellraw @s {"text":"Difficulty set to \"Normal\". All changes are applied.","color":"yellow"}
execute if score @s[tag=!ENTITY_FLAG_IN_COMBAT] cfg.difficulty matches 3 run tellraw @s {"text":"Difficulty set to \"Hard\". All changes are applied.","color":"yellow"}
execute if score @s[tag=ENTITY_FLAG_IN_COMBAT] cfg.difficulty matches 1 run tellraw @s {"text":"Difficulty set to \"Easy\". Changes will be applied out of combat.","color":"yellow"}
execute if score @s[tag=ENTITY_FLAG_IN_COMBAT] cfg.difficulty matches 2 run tellraw @s {"text":"Difficulty set to \"Normal\". Changes will be applied out of combat.","color":"yellow"}
execute if score @s[tag=ENTITY_FLAG_IN_COMBAT] cfg.difficulty matches 3 run tellraw @s {"text":"Difficulty set to \"Hard\". Changes will be applied out of combat.","color":"yellow"}
tag @s remove messages.info.difficulty_changed