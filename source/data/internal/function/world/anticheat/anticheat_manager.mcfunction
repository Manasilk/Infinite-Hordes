execute unless entity @s[tag=account.commands] run function internal:world/anticheat/check_gamemode
execute unless entity @s[tag=ANTICHEAT_FLAG_PLAYER_IGNORE] run function internal:world/anticheat/check_activity
execute unless entity @s[tag=ANTICHEAT_FLAG_PLAYER_IGNORE] run function internal:world/anticheat/check_position

#The function below determines which action should the anticheat take towards the player
# whom was tagged by the anticheat. The function can be disabled by toggle.
execute if entity @s[tag=anticheat.broadcast_info] run function internal:world/anticheat/events/log_event
execute if score #anticheat _ac.actions matches 1 if entity @s[tag=anticheat.broadcast_info] run function internal:world/anticheat/events/do_action
execute if score #anticheat _ac.brdcst_tick > #anticheat _ac.brdcst_del if entity @s[tag=anticheat.broadcast_info] run function internal:world/anticheat/events/send_info_message