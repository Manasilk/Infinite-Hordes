setblock 54 -60 11 minecraft:redstone_block destroy
setblock 54 -60 11 minecraft:air destroy
execute if score @s rand matches 4 run scoreboard players set @s rand 0