function developer:world_builder/info/player/flush_biome_data

execute if predicate internal:world/biome/forest run function developer:world_builder/info/player/set_biome_forest
execute if predicate internal:world/biome/tundra run function developer:world_builder/info/player/set_biome_tundra
execute if predicate internal:world/biome/mesa run function developer:world_builder/info/player/set_biome_mesa
execute if predicate internal:world/biome/ocean run function developer:world_builder/info/player/set_biome_ocean
execute if predicate internal:world/biome/nether run function developer:world_builder/info/player/set_biome_desert
execute if predicate internal:world/biome/end run function developer:world_builder/info/player/set_biome_desert
execute if predicate internal:world/biome/void run function developer:world_builder/info/player/set_biome_desert