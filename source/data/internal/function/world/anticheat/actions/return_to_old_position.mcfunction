#Summon a teleport marker that serves as the "go to this location" for the player
# to teleport to upon being flagged as cheating by warden
summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:0,WaitTime:0,Tags:["ENTITY_FLAG_SERVER_CONTROLLED","ANTICHEAT_TELEPORT_TARGET"]}
#The 'EntityId' is passed to the marker to link it to the invoking player and the coordinates passed
# are the coordinates initially stored when the "warden\...\get_pos_start" function was called
execute store result entity @e[type=#internal:area_trigger,tag=ANTICHEAT_TELEPORT_TARGET,limit=1] Pos[0] double 0.1 run scoreboard players get @s _ac.pos_x0
execute store result entity @e[type=#internal:area_trigger,tag=ANTICHEAT_TELEPORT_TARGET,limit=1] Pos[1] double 0.1 run scoreboard players get @s _ac.pos_y0
execute store result entity @e[type=#internal:area_trigger,tag=ANTICHEAT_TELEPORT_TARGET,limit=1] Pos[2] double 0.1 run scoreboard players get @s _ac.pos_z0
#When the marker is positioned at the player's saved coordinates, we teleport to the market
# and instantly kill it, to prevent other player's overlapping with the marker
#There should only ever be one marker at a time
teleport @s @e[type=#internal:area_trigger,tag=ANTICHEAT_TELEPORT_TARGET,limit=1]
kill @e[type=#internal:area_trigger,tag=ANTICHEAT_TELEPORT_TARGET,distance=0..0.001,sort=nearest,limit=1]