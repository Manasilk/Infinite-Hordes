
execute if score #log __event_idef matches 1 run data modify storage log:world event[-1].idef_name set value WORLD_RELOAD

execute if score #log __event_idef matches 10 run data modify storage log:world event[-1].idef_name set value PLAYER_START_QUEST
execute if score #log __event_idef matches 11 run data modify storage log:world event[-1].idef_name set value PLAYER_COMPLETE_QUEST
execute if score #log __event_idef matches 12 run data modify storage log:world event[-1].idef_name set value PLAYER_ABANDON_QUEST

execute if score #log __event_idef matches 100 run data modify storage log:world event[-1].idef_name set value PLAYER_LEVELUP
execute if score #log __event_idef matches 102 run data modify storage log:world event[-1].idef_name set value COMMAND_USED

execute if score #log __event_idef matches 200 run data modify storage log:world event[-1].idef_name set value GARRISON_LEVELUP
execute if score #log __event_idef matches 201 run data modify storage log:world event[-1].idef_name set value GARRISON_UNLOCK_FARM_AREA

execute if score #log __event_idef matches 300 run data modify storage log:world event[-1].idef_name set value PLAYER_START_EXPEDITION
execute if score #log __event_idef matches 301 run data modify storage log:world event[-1].idef_name set value PLAYER_COMPLETE_EXPEDITION

execute if score #log __event_idef matches 400 run data modify storage log:world event[-1].idef_name set value INSTANCE_MAP_LOADED
execute if score #log __event_idef matches 401 run data modify storage log:world event[-1].idef_name set value INSTANCE_GENERATED
execute if score #log __event_idef matches 402 run data modify storage log:world event[-1].idef_name set value INSTANCE_EVENT_STARTED
execute if score #log __event_idef matches 403 run data modify storage log:world event[-1].idef_name set value INSTANCE_EVENT_COMPLETE
execute if score #log __event_idef matches 404 run data modify storage log:world event[-1].idef_name set value INSTANCE_EVENT_FAILED
execute if score #log __event_idef matches 405 run data modify storage log:world event[-1].idef_name set value INSTANCE_ENCOUNTER_STARTED
execute if score #log __event_idef matches 406 run data modify storage log:world event[-1].idef_name set value INSTANCE_ENCOUNTER_COMPLETE