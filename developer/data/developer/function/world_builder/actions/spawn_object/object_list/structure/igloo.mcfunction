execute unless score @s wb.biome_id = #preset BIOME_TUNDRA run tag @s add messages.error.invalid_biome

execute if score @s[tag=FACING_NORTH] wb.biome_id = #preset BIOME_TUNDRA run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"NONE",mode:"LOAD",name:"mardaar:object/structure/igloo",id:"minecraft:structure_block",ignoreEntities:0b,powered:0b,showboundingbox:1b,posX:-12,posY:0,posZ:-11,sizeX:13,sizeY:21,sizeZ:12} replace
execute if score @s[tag=FACING_SOUTH] wb.biome_id = #preset BIOME_TUNDRA run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"CLOCKWISE_180",mode:"LOAD",name:"mardaar:object/structure/igloo",id:"minecraft:structure_block",ignoreEntities:0b,powered:0b,showboundingbox:1b,posX:12,posY:0,posZ:11,sizeX:13,sizeY:21,sizeZ:12} replace
execute if score @s[tag=FACING_WEST] wb.biome_id = #preset BIOME_TUNDRA run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",name:"mardaar:object/structure/igloo",id:"minecraft:structure_block",ignoreEntities:0b,powered:0b,showboundingbox:1b,posX:-11,posY:0,posZ:12,sizeX:13,sizeY:21,sizeZ:12} replace
execute if score @s[tag=FACING_EAST] wb.biome_id = #preset BIOME_TUNDRA run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"CLOCKWISE_90",mode:"LOAD",name:"mardaar:object/structure/igloo",id:"minecraft:structure_block",ignoreEntities:0b,powered:0b,showboundingbox:1b,posX:11,posY:0,posZ:-12,sizeX:13,sizeY:21,sizeZ:12} replace