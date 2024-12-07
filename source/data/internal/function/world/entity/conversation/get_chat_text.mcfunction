
#Travel
execute if entity @s[tag=npc_ship_travel_manager] if entity @a[tag=!conversation.stop,tag=!SHIP_TRAVEL_SELECTED,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/texts/ship_travel_menu
execute if entity @s[tag=npc_ship_travel_captain] if entity @a[tag=!conversation.stop,tag=SHIP_TRAVEL_SELECTED,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/texts/ship_travel_ready

#Generic Villager
execute if entity @s[tag=npc_town_villager] if entity @a[tag=!conversation.stop,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/texts/generic_villager_response