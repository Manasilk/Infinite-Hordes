tag @s remove _e.update_ai

execute if entity @s[tag=_e.get_entity_rotation] run function internal:world/entity/get_entity_rotation
tag @s[tag=_e.get_entity_rotation] remove _e.get_entity_rotation
execute if entity @s[tag=_e.disable_ai] run function internal:world/ai/core_ai/combat_ai/disable_ai
execute if entity @s[tag=_e.enable_ai] run function internal:world/ai/core_ai/combat_ai/enable_ai