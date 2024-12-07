#setblock 89 -60 36 minecraft:redstone_block destroy
#setblock 89 -60 36 minecraft:air destroy
#execute if score @s rand matches 6 run scoreboard players set @s rand 0
#scoreboard players add @s rand 1

#execute if score @s rand matches 1 run function developer:world_builder/structure_data/stonebrick/replace_floor_tile_data
#execute if score @s rand matches 2 run function developer:world_builder/structure_data/deepslate/replace_floor_tile_data
#execute if score @s rand matches 3 run function developer:world_builder/structure_data/blackstone/replace_floor_tile_data
#execute if score @s rand matches 4 run function developer:world_builder/structure_data/tuff/replace_floor_tile_data
#execute if score @s rand matches 5 run function developer:world_builder/structure_data/badlands/replace_floor_tile_data
#execute if score @s rand matches 6 run function developer:world_builder/structure_data/taiga/replace_floor_tile_data