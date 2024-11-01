scoreboard players reset @s reset_stats
scoreboard players enable @s reset_stats
tellraw @s {"translate":"event_type.reset_account_stats","color":"yellow"}

scoreboard players set @s stat_dmg_dealt 0
scoreboard players set @s stat_dmg_taken 0
scoreboard players set @s stat_mob_kills 0
scoreboard players set @s stat_quests_cmpl 0