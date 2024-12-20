execute if entity @s[type=#internal:npc_undead] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"SetTargetAreaTrigger"}',Age:0,Duration:10,WaitTime:0,DurationOnUse:0,Tags:["ENTITY_FLAG_SERVER_CONTROLLED","ENTITY_FLAG_EXTRA_TRIGGER","area_trigger.force_target_selector"]}
execute if entity @s[type=!#internal:npc_undead] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"SetTargetAreaTrigger"}',Age:0,Duration:10,WaitTime:0,DurationOnUse:0,Tags:["ENTITY_FLAG_SERVER_CONTROLLED","ENTITY_FLAG_EXTRA_TRIGGER","area_trigger.force_target_selector"]}
execute as @a[tag=ENTITY_FLAG_IN_COMBAT,sort=nearest] run data modify entity @e[type=#internal:area_trigger,tag=area_trigger.force_target_selector,distance=0..0.001,sort=nearest,limit=1] Owner set from entity @s UUID
execute as @a[tag=ENTITY_FLAG_IN_COMBAT,sort=nearest] run data modify storage internal:buffer target_uuid set from entity @s UUID
scoreboard players operation @s target_id = @a[tag=ENTITY_FLAG_IN_COMBAT,sort=nearest] player_id

execute as @e[type=#internal:creature,team=!Friendly,tag=!ENTITY_FLAG_IN_COMBAT,tag=!creature.support_nearest_ally,distance=0..15.999] run function internal:world/entity/scripted_behavior/action/support_nearest_ally
data remove storage internal:buffer target_uuid