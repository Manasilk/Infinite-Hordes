execute if score #log __event_idef matches 1 run function internal:common/logging/world/data/world/write_world_state

#10..19 - QUESTS
execute if score #log __event_idef matches 10..11 run function internal:common/logging/world/data/quests/write_generic_data

#100..199 - PLAYER
#execute if score #log __event_idef matches 100 run function internal:common/logging/world/data/player/player_levelup
#execute if score #log __event_idef matches 102 run function internal:common/logging/world/data/player/


#200..299 - GARRISON
#execute if score #log __event_idef matches 200 run function internal:common/logging/world/data/garrison/garrison_levelup
#execute if score #log __event_idef matches 201 run function internal:common/logging/world/data/garrison/garrison_unlock_farm_area

#300..399 - EXPEDITIONS
#execute if score #log __event_idef matches 300..301 run function internal:common/logging/world/data/expedition/write_generic_data

#400..499 - INSTANCES
#execute if score #log __event_idef matches 400 run function internal:common/logging/world/data/instance/instance_map_loaded
#execute if score #log __event_idef matches 401 run function internal:common/logging/world/data/instance/instance_generated
#execute if score #log __event_idef matches 402 run function internal:common/logging/world/data/instance/instance_event_started
#execute if score #log __event_idef matches 403 run function internal:common/logging/world/data/instance/instance_event_complete
#execute if score #log __event_idef matches 404 run function internal:common/logging/world/data/instance/instance_event_failed
#execute if score #log __event_idef matches 405 run function internal:common/logging/world/data/instance/instance_encounter_started
#execute if score #log __event_idef matches 406 run function internal:common/logging/world/data/instance/instance_encounter_complete