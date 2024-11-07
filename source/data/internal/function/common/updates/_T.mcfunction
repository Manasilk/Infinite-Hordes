data modify storage internal:buffer build.id set value version.update.hotfix
data modify storage internal:buffer build.rv set value revision
data modify storage internal:buffer build.date set value dd.mm.yyyy
data modify storage internal:buffer build.packages set value 0

scoreboard players set #world build_version int.version
scoreboard players set #world build_update int.update
scoreboard players set #world build_hotfix int.hotfix
scoreboard players set #world build_pd_d int.day
scoreboard players set #world build_pd_m month
scoreboard players set #world build_pd_y int.year
scoreboard players set #world build_revision int.revision

scoreboard players set #world success 1
scoreboard players set #world server.reload 2