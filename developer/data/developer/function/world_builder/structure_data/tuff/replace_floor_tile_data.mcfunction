setblock 89 -60 36 minecraft:redstone_block destroy
setblock 89 -60 36 minecraft:air destroy
execute if score @s rand matches 4 run scoreboard players set @s rand 0