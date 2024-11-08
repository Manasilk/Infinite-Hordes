#replace 0 with new build revision
execute unless score #temp TEMP matches 0 run function internal:common/updates/dd_mm_yyyy_revision
execute if score #world server.reload matches 1 run scoreboard players set #world server.reload 2