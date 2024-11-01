execute store result storage log:world_builder event[-1].data[].guid int 1 run scoreboard players get @s entity_guid
execute if entity @s[scores={has_collided=0}] store result storage log:world_builder event[-1].data[].position.x int 1 run data get entity @s Pos[0]
execute if entity @s[scores={has_collided=0}] store result storage log:world_builder event[-1].data[].position.y int 1 run data get entity @s Pos[1]
execute if entity @s[scores={has_collided=0}] store result storage log:world_builder event[-1].data[].position.z int 1 run data get entity @s Pos[2]
execute if entity @s[scores={has_collided=1}] store result storage log:world_builder event[-1].data[].position.x int 1 run data get entity @e[type=#internal:creature,distance=0..0.001,sort=nearest,limit=1] Pos[0]
execute if entity @s[scores={has_collided=1}] store result storage log:world_builder event[-1].data[].position.y int 1 run data get entity @e[type=#internal:creature,distance=0..0.001,sort=nearest,limit=1] Pos[1]
execute if entity @s[scores={has_collided=1}] store result storage log:world_builder event[-1].data[].position.z int 1 run data get entity @e[type=#internal:creature,distance=0..0.001,sort=nearest,limit=1] Pos[2]
execute if entity @s[tag=SUMMONER_CREATURE] run data modify storage log:world_builder event[-1].data[].summoner set value 1
execute if entity @s[tag=SUMMONER_PLAYER] run data modify storage log:world_builder event[-1].data[].summoner set value 2