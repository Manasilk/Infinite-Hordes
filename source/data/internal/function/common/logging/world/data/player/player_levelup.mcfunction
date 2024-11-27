execute store result storage log:world event[-1].data[].guid int 1 run scoreboard players get #log player_id
execute store result storage log:world event[-1].data[].current_level int 1 run scoreboard players get #log entity_level
execute store result storage log:world event[-1].data[].last_level int 1 run scoreboard players get #log entity_reclevel

scoreboard players reset #log player_id
scoreboard players reset #log entity_level
scoreboard players reset #log entity_reclevel