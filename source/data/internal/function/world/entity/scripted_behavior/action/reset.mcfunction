function internal:world/entity/creature/restore_base_attributes
function internal:world/entity/creature/set_position_from_spawn
execute if entity @s[tag=ENTITY_FLAG_SPECIALINFO] run function internal:world/entity/creature/set_default_nameplate

tag @s remove ENTITY_FLAG_IN_COMBAT
tag @s[tag=creature.support_nearest_ally] remove creature.support_nearest_apply
tag @s[tag=ENTITY_FLAG_SPELL_TARGET] remove ENTITY_FLAG_SPELL_TARGET
function internal:world/entity/scripted_behavior/action/reset_script