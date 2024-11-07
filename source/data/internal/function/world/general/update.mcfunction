function internal:world/general/time/get_gametime
function internal:world/general/time/get_daytime
function internal:world/general/time/update_log

#Realtime Difficulty Update
execute store result score #world cfg.difficulty run difficulty

execute if score #world server.reload matches 2 run tag @a add messages.info.server_reload_complete
execute if score #world server.reload matches 2 run scoreboard players set #world server.reload 0