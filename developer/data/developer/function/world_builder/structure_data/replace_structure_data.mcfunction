setblock 54 -60 11 minecraft:redstone_block destroy
setblock 54 -60 11 minecraft:air destroy
execute if score @s rand matches 4 run scoreboard players set @s rand 0
scoreboard players add @s rand 1

execute if score @s rand matches 1 run function developer:world_builder/structure_data/stonebrick/replace_structure_data
execute if score @s rand matches 2 run function developer:world_builder/structure_data/deepslate/replace_structure_data
execute if score @s rand matches 3 run function developer:world_builder/structure_data/blackstone/replace_structure_data
execute if score @s rand matches 4 run function developer:world_builder/structure_data/tuff/replace_structure_data