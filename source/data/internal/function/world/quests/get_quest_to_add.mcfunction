execute if entity @s[tag=QUEST_1000] if entity @a[tag=!conversation.stop,tag=!QUEST_ACCEPT_1000,tag=!QUEST_COMPLETE_1000,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/quests/quest_template/quest_1000
execute if entity @s[tag=QUEST_1001] if entity @a[tag=!conversation.stop,tag=!QUEST_ACCEPT_1001,tag=!QUEST_COMPLETE_1001,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/quests/quest_template/quest_1001
execute if entity @s[tag=QUEST_1002] if entity @a[tag=!conversation.stop,tag=QUEST_COMPLETE_1001,tag=!QUEST_ACCEPT_1002,tag=!QUEST_COMPLETE_1002,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/quests/quest_template/quest_1002
execute if entity @s[tag=QUEST_1003] if entity @a[tag=!conversation.stop,tag=QUEST_COMPLETE_1002,tag=!QUEST_ACCEPT_1003,tag=!QUEST_COMPLETE_1003,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/quests/quest_template/quest_1003

#Expeditions
execute if entity @s[tag=QUEST_2000] if entity @a[tag=!conversation.stop,tag=QUEST_COMPLETE_2000,tag=!QUEST_ACCEPT_2000,tag=!QUEST_COMPLETE_2000,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/quests/quest_template/quest_2000
execute if entity @s[tag=QUEST_2001] if entity @a[tag=!conversation.stop,tag=QUEST_COMPLETE_2001,tag=!QUEST_ACCEPT_2001,tag=!QUEST_COMPLETE_2001,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/quests/quest_template/quest_2001
execute if entity @s[tag=QUEST_2002] if entity @a[tag=!conversation.stop,tag=QUEST_COMPLETE_2002,tag=!QUEST_ACCEPT_2002,tag=!QUEST_COMPLETE_2002,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/quests/quest_template/quest_2002

#Settlement
##>> Tier Unlocks
execute if entity @s[tag=QUEST_10000] if entity @a[tag=!conversation.stop,tag=QUEST_COMPLETE_10000,tag=!QUEST_ACCEPT_10000,tag=!QUEST_COMPLETE_10000,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/quests/quest_template/quest_10000
execute if entity @s[tag=QUEST_10001] if entity @a[tag=!conversation.stop,tag=QUEST_COMPLETE_10001,tag=!QUEST_ACCEPT_10001,tag=!QUEST_COMPLETE_10001,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/quests/quest_template/quest_10001
execute if entity @s[tag=QUEST_10002] if entity @a[tag=!conversation.stop,tag=QUEST_COMPLETE_10002,tag=!QUEST_ACCEPT_10002,tag=!QUEST_COMPLETE_10002,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/quests/quest_template/quest_10002
execute if entity @s[tag=QUEST_10003] if entity @a[tag=!conversation.stop,tag=QUEST_COMPLETE_10003,tag=!QUEST_ACCEPT_10003,tag=!QUEST_COMPLETE_10003,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/quests/quest_template/quest_10003
execute if entity @s[tag=QUEST_10004] if entity @a[tag=!conversation.stop,tag=QUEST_COMPLETE_10004,tag=!QUEST_ACCEPT_10004,tag=!QUEST_COMPLETE_10004,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/quests/quest_template/quest_10004
execute if entity @s[tag=QUEST_10005] if entity @a[tag=!conversation.stop,tag=QUEST_COMPLETE_10005,tag=!QUEST_ACCEPT_10005,tag=!QUEST_COMPLETE_10005,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/quests/quest_template/quest_10005

function internal:common/logging/world/event/quest_start