scoreboard players add #world world_tick 1
scoreboard players add #garbage garbage_tick 1
scoreboard players add #anticheat anticheat_tick 1
scoreboard players add #anticheat broadcast_tick 1

execute if score #world world_tick > #const UPD_CYCLE run scoreboard players set #world world_tick 0
execute if score #garbage garbage_tick > #const UPD_CYCLE run scoreboard players set #garbage garbage_tick 0

execute if score #anticheat anticheat_tick matches 6.. run scoreboard players set #anticheat anticheat_tick 0
execute if score #anticheat broadcast_tick > #const UPD_CYCLE run scoreboard players add #anticheat _ac.brdcst_tick 1
execute if score #anticheat broadcast_tick > #const UPD_CYCLE run scoreboard players set #anticheat broadcast_tick 0
execute if score #anticheat _ac.brdcst_tick > #anticheat _ac.brdcst_del run scoreboard players set #anticheat _ac.brdcst_tick 0