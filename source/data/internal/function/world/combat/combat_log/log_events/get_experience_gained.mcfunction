scoreboard players operation @s TEMP = @s exp_stored
scoreboard players operation @s TEMP -= @s exp_gained

execute if score #world __hours matches 0..9 if score #world __minutes matches 0..9 run tellraw @s[tag=!player.exp_reset_progress] {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#world","objective":"__hours"}},{"text":"0"},{"score":{"name":"#world","objective":"__minutes"}},{"translate":"event_type.log.experience_gained","with":[{"score":{"name":"@s","objective":"TEMP"}}]}],"color":"blue"}
execute if score #world __hours matches 0..9 if score #world __minutes matches 10.. run tellraw @s[tag=!player.exp_reset_progress] {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#world","objective":"__hours"}},{"text":""},{"score":{"name":"#world","objective":"__minutes"}},{"translate":"event_type.log.experience_gained","with":[{"score":{"name":"@s","objective":"TEMP"}}]}],"color":"blue"}
execute if score #world __hours matches 10.. if score #world __minutes matches 0..9 run tellraw @s[tag=!player.exp_reset_progress] {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#world","objective":"__hours"}},{"text":"0"},{"score":{"name":"#world","objective":"__minutes"}},{"translate":"event_type.log.experience_gained","with":[{"score":{"name":"@s","objective":"TEMP"}}]}],"color":"blue"}
execute if score #world __hours matches 10.. if score #world __minutes matches 10.. run tellraw @s[tag=!player.exp_reset_progress] {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#world","objective":"__hours"}},{"text":""},{"score":{"name":"#world","objective":"__minutes"}},{"translate":"event_type.log.experience_gained","with":[{"score":{"name":"@s","objective":"TEMP"}}]}],"color":"blue"}

scoreboard players operation @s exp_gained = @s exp_stored
scoreboard players reset @s TEMP

tag @s remove player.exp_reset_progress