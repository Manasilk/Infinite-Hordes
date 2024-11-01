function internal:world/combat/combat_log/check_timestamp
tellraw @s[tag=_t.h0_m0] {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#world","objective":"__hours"}},{"text":"0"},{"score":{"name":"#world","objective":"__minutes"}},{"translate":"event_type.log.killed_by","with":[{"nbt":"entity","storage":"internal:combat_log","interpret":true,"color":"white"}]}],"color":"gray"}
tellraw @s[tag=_t.h0_m1] {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#world","objective":"__hours"}},{"text":""},{"score":{"name":"#world","objective":"__minutes"}},{"translate":"event_type.log.killed_by","with":[{"nbt":"entity","storage":"internal:combat_log","interpret":true,"color":"white"}]}],"color":"gray"}
tellraw @s[tag=_t.h1_m0] {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#world","objective":"__hours"}},{"text":"0"},{"score":{"name":"#world","objective":"__minutes"}},{"translate":"event_type.log.killed_by","with":[{"nbt":"entity","storage":"internal:combat_log","interpret":true,"color":"white"}]}],"color":"gray"}
tellraw @s[tag=_t.h1_m1] {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#world","objective":"__hours"}},{"text":""},{"score":{"name":"#world","objective":"__minutes"}},{"translate":"event_type.log.killed_by","with":[{"nbt":"entity","storage":"internal:combat_log","interpret":true,"color":"white"}]}],"color":"gray"}

tag @s remove _t.h0_m0
tag @s remove _t.h0_m1
tag @s remove _t.h1_m0
tag @s remove _t.h1_m1
tag @s remove player.killed_by_entity