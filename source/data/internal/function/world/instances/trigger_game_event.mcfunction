execute unless entity @s[tag=area_trigger.initialized_spawn_data,tag=!ENTITY_FLAG_OBJECT_ACTOR] run function internal:world/entity/area_trigger/initialize_spawn_data

#WORLD_BUILDER
function developer:world_builder/triggers/area_trigger