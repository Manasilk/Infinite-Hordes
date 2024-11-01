scoreboard players reset @s reset_xp
scoreboard players enable @s reset_xp
tellraw @s {"translate":"event_type.reset_account_level","color":"yellow"}

scoreboard players remove @s[level=10..19] stat_adv_pts 10
scoreboard players remove @s[level=20..29] stat_adv_pts 10
scoreboard players remove @s[level=30..39] stat_adv_pts 10
scoreboard players remove @s[level=40..49] stat_adv_pts 10
scoreboard players remove @s[level=50..59] stat_adv_pts 10
scoreboard players remove @s[level=60..] stat_adv_pts 10

advancement revoke @s from internal:world/account/character/level_10
advancement revoke @s[scores={stat_adv_pts=0..999}] only internal:world/account/feat_of_strength/1000
advancement revoke @s[scores={stat_adv_pts=1000..1999}] only internal:world/account/feat_of_strength/2000
advancement revoke @s[scores={stat_adv_pts=2000..3999}] only internal:world/account/feat_of_strength/4000
advancement revoke @s[scores={stat_adv_pts=4000..7999}] only internal:world/account/feat_of_strength/8000

experience set @s 0 points
experience set @s 0 levels
scoreboard players set @s entity_level 0
scoreboard players set @s entity_nxtlvl 0
scoreboard players set @s entity_reclvl 0
scoreboard players set @s exp_gained 0
scoreboard players set @s exp_stored 0

tag @s add player.exp_reset_progress