execute if score #log __event_type matches 1 if score #log __event_idef matches 1001..1003 run function internal:common/logging/world_builder/data/load_entity_info
execute if score #log __event_type matches 3 if score #log __event_idef matches 1001..1003 run function internal:common/logging/world_builder/data/load_spawner_info

execute if score #log __event_type matches 1 if score #log __event_idef matches 1004..1006 run function internal:common/logging/world_builder/data/load_object_info
execute if score #log __event_type matches 3 if score #log __event_idef matches 1004..1006 run function internal:common/logging/world_builder/data/load_spawner_info

execute if score #log __event_type matches 0 if score #log __event_idef matches 10000..10001 run function internal:common/logging/world_builder/data/load_vmap_trigger_info

#Generic AreaTrigger Errors
execute if score #log __event_type matches 3 if score #log __event_idef matches 10000..10001 run function internal:common/logging/world_builder/event/operation_failed