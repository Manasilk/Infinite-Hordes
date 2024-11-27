scoreboard players operation #log instance.template_id = @s instance.template_id
scoreboard players operation #log instance.size = @s instance.size
#Event identifier
scoreboard players set #log __event_idef 401
#Check for creature
scoreboard players set #log __event_type 1
function internal:common/logging/world/register_event