function internal:configuration/dataver

tellraw @s {"translate":"server.login_msg","with":[{"nbt":"build.id","storage":"internal:world"},{"nbt":"build.codename","storage":"internal:world","interpret":true}],"color":"yellow"}
tellraw @s {"translate":"server.readme_msg","with":[{"text":"Github Repository","clickEvent":{"action":"open_url","value":"https://github.com/Manasilk/Infinite-Hordes"},"color":"white","underlined":true}],"color":"yellow"}
tellraw @s[scores={entity_difficulty=1}] {"translate":"event_type.difficulty_set","with":[{"translate":"log.difficulty.easy"}],"color":"yellow"}
tellraw @s[scores={entity_difficulty=2}] {"translate":"event_type.difficulty_set","with":[{"translate":"log.difficulty.normal"}],"color":"yellow"}
tellraw @s[scores={entity_difficulty=3}] {"translate":"event_type.difficulty_set","with":[{"translate":"log.difficulty.hard"}],"color":"yellow"}
tellraw @s[tag=account.debugging] {"translate":"server.build_info","with":[{"nbt":"build.rv","storage":"internal:world"},{"nbt":"build.date","storage":"internal:world"},{"nbt":"game.rv","storage":"internal:world","color":"green"}],"color":"yellow"}

execute unless score @s gender_sfx matches 1..2 run tellraw @s {"translate":"sfx.player_voice","with":[{"text":"[","color":"gold"},{"translate":"sfx.player.voice_option.male","color":"white","clickEvent":{"action":"run_command","value":"/trigger gender_sfx set 1"}},{"text":"]","color":"gold"},{"text":"[","color":"gold"},{"translate":"sfx.player.voice_option.female","color":"white","clickEvent":{"action":"run_command","value":"/trigger gender_sfx set 2"}},{"text":"]","color":"gold"}],"color":"yellow"}

scoreboard players set @s is_offline 0
scoreboard players set @s played_tick 0
tag @s remove messages.info.logged_in