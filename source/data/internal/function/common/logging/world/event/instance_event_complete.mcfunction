scoreboard players operation #log instance.phase_id = @s instance.phase_id
scoreboard players operation #log instance.difficulty = @s instance.difficulty
scoreboard players operation #log entity_count = @s entity_count
#Event identifier
scoreboard players set #log __event_idef 403
#Check for creature
scoreboard players set #log __event_type 1
function internal:common/logging/world/register_event