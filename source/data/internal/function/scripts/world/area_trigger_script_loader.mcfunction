#This is where scripts' loading functions should be declared
#function internal:scripts/world/<type>
execute if entity @s[tag=area_trigger_quest_trigger] run function internal:scripts/world/area_trigger_quest_trigger
execute if entity @s[tag=area_trigger_quest_monster] if entity @a[distance=0..39.999] run function internal:scripts/world/area_trigger_quest_monster
execute if entity @s[tag=area_trigger_quest_item] if entity @a[distance=0..39.999] run function internal:scripts/world/area_trigger_quest_item
execute if entity @s[tag=area_trigger_quest_talkto] run function internal:scripts/world/area_trigger_quest_talkto
execute if entity @s[tag=area_trigger_objective_monster] if entity @a[distance=0..63.999] run function internal:scripts/world/area_trigger_objective_monster
execute if entity @s[tag=area_trigger_objective_area] if entity @a[distance=0..63.999] run function internal:scripts/world/area_trigger_objective_area