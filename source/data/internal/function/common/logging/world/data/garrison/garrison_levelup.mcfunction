execute store result storage log:world event[-1].data[].garrison_xp int 1 run scoreboard players get #log garrison_level
execute store result storage log:world event[-1].data[].garrison_tier int 1 run scoreboard players get #log garrison_tier

scoreboard players reset #log garrison_level
scoreboard players reset #log garrison_tier