execute if entity @s[type=#internal:creature] run summon minecraft:area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"CollisionAreaTrigger"}',CustomNameVisible:0b,Duration:1,Tags:["ENTITY_FLAG_SERVER_CONTROLLED","ENTITY_FLAG_EXTRA_TRIGGER","ENTITY_FLAG_COLLISION_TRIGGER","SUMMONER_CREATURE"]}
execute if entity @s[type=minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"CollisionAreaTrigger"}',CustomNameVisible:0b,Duration:1,Tags:["ENTITY_FLAG_SERVER_CONTROLLED","ENTITY_FLAG_EXTRA_TRIGGER","ENTITY_FLAG_COLLISION_TRIGGER","SUMMONER_PLAYER"]}

function internal:world/entity/get_entity_rotation
execute if entity @s[type=#internal:creature] run function internal:world/entity/get_entity_hostility
execute if entity @s[type=minecraft:player,scores={wb_option_id=12}] run function internal:world/entity/get_entity_position

execute as @e[type=#internal:area_trigger,tag=ENTITY_FLAG_COLLISION_TRIGGER,tag=SUMMONER_CREATURE,tag=!area_trigger.initialized_spawn_data,distance=0..1.001,sort=nearest,limit=1] run function internal:common/collision/initialize_spawn_data
execute as @e[type=#internal:area_trigger,tag=ENTITY_FLAG_COLLISION_TRIGGER,tag=SUMMONER_PLAYER,tag=!area_trigger.initialized_spawn_data,distance=0..1.001,sort=nearest,limit=1] run function developer:world_builder/actions/load_info/initialize_spawn_data

execute unless entity @e[type=#internal:area_trigger,tag=ENTITY_FLAG_COLLISION_TRIGGER,tag=area_trigger.initialized_spawn_data,sort=nearest,distance=0..1.001,limit=1] run scoreboard players set #log __event_type 3
execute unless entity @e[type=#internal:area_trigger,tag=ENTITY_FLAG_COLLISION_TRIGGER,tag=area_trigger.initialized_spawn_data,sort=nearest,distance=0..1.001,limit=1] run scoreboard players set #log __event_idef 10000
execute unless entity @e[type=#internal:area_trigger,tag=ENTITY_FLAG_COLLISION_TRIGGER,tag=area_trigger.initialized_spawn_data,sort=nearest,distance=0..1.001,limit=1] run function internal:common/logging/world_builder/register_event

tag @s remove collision.attempt_line_of_sight_collision