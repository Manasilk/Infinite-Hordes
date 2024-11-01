execute if entity @s[type=minecraft:villager] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"QuestAreaTrigger"}',CustomNameVisible:0b,Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ENTITY_FLAG_QUEST_TRIGGER","ENTITY_FLAG_EXTRA_TRIGGER"]}
execute if entity @s[type=#internal:area_trigger,tag=AREA_TRIGGER_QUEST_LINK] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"QuestAreaTrigger"}',CustomNameVisible:0b,Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ENTITY_FLAG_QUEST_TRIGGER","AREA_TRIGGER_LINKED_TO"]}

scoreboard players operation @e[type=#internal:area_trigger,tag=!area_trigger.load_quest_info,distance=0..0.001,sort=nearest,limit=1] __event_id = #log __event_id
execute as @e[type=#internal:area_trigger,tag=!area_trigger.load_quest_info,distance=0..0.001,sort=nearest,limit=1] at @s run function internal:world/quests/link_to_invoker
tag @s[type=minecraft:villager] remove creature.summon_quest_tracker