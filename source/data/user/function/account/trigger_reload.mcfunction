scoreboard players set #world server.reload 1
scoreboard players reset @s server.reload
scoreboard players enable @s server.reload

schedule function internal:scheduler/reload 1s replace