execute store result score @s entity_difficulty run difficulty
execute store result score #world cfg.difficulty run difficulty
execute if score @s[tag=!ENTITY_FLAG_IN_COMBAT] entity_difficulty matches 1 run tellraw @s {"translate":"event_type.changed_difficulty_ooc","with":[{"translate":"log.difficulty.easy"}],"color":"yellow"}
execute if score @s[tag=!ENTITY_FLAG_IN_COMBAT] entity_difficulty matches 2 run tellraw @s {"translate":"event_type.changed_difficulty_ooc","with":[{"translate":"log.difficulty.normal"}],"color":"yellow"}
execute if score @s[tag=!ENTITY_FLAG_IN_COMBAT] entity_difficulty matches 3 run tellraw @s {"translate":"event_type.changed_difficulty_ooc","with":[{"translate":"log.difficulty.hard"}],"color":"yellow"}
execute if score @s[tag=ENTITY_FLAG_IN_COMBAT] entity_difficulty matches 1 run tellraw @s {"translate":"event_type.changed_difficulty_ic","with":[{"translate":"log.difficulty.easy"}],"color":"yellow"}
execute if score @s[tag=ENTITY_FLAG_IN_COMBAT] entity_difficulty matches 2 run tellraw @s {"translate":"event_type.changed_difficulty_ic","with":[{"translate":"log.difficulty.normal"}],"color":"yellow"}
execute if score @s[tag=ENTITY_FLAG_IN_COMBAT] entity_difficulty matches 3 run tellraw @s {"translate":"event_type.changed_difficulty_ic","with":[{"translate":"log.difficulty.hard"}],"color":"yellow"}
tag @s remove messages.info.difficulty_changed