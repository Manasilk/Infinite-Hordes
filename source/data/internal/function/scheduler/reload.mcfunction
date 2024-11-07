tag @a add messages.info.server_reload_start

scoreboard players set #log __event_idef 1
scoreboard players set #log __event_type 1
function internal:common/logging/world/register_event
reload