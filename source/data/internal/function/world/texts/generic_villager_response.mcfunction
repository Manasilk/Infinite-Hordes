scoreboard players reset @s rand
function internal:world/general/compute/random/lcg_range

execute if score @s rand matches 1 run tellraw @a[scores={chat.triggered=1..},distance=0..5.299] {"translate":"texts.generic_villager_response.1"}
execute if score @s rand matches 2 run tellraw @a[scores={chat.triggered=1..},distance=0..5.299] {"translate":"texts.generic_villager_response.2"}
execute if score @s rand matches 3 run tellraw @a[scores={chat.triggered=1..},distance=0..5.299] {"translate":"texts.generic_villager_response.3"}
execute if score @s rand matches 4 run tellraw @a[scores={chat.triggered=1..},distance=0..5.299] {"translate":"texts.generic_villager_response.4"}