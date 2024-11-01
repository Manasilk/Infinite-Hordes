#Choose one of the appropraite actions dependengin on conditions:
#Completed first are rewarded first, and only then (if eligible) a player can accept a quest
#Quests are accepted first if no current quests are completed
execute if entity @s[tag=ENTITY_FLAG_CAN_END_QUEST] if entity @a[scores={chat.triggered=1..,quest_status=1..},distance=0..5.299] run function internal:world/entity/conversation/send_quest_complete
#Tell the player they can't accept any more quests if the quest log is full
execute if entity @s[tag=ENTITY_FLAG_CAN_START_QUEST] run tag @a[scores={chat.triggered=1..,quest_log=10..},distance=0..5.299] add messages.error.quest_log_full
execute if entity @s[tag=ENTITY_FLAG_CAN_START_QUEST] run tag @a[tag=messages.error.quest_log_full,distance=0..5.299] add conversation.stop
execute if entity @s[tag=ENTITY_FLAG_CAN_START_QUEST] if entity @a[tag=!conversation.stop,scores={chat.triggered=1..,quest_log=0..9},distance=0..5.299] run function internal:world/entity/conversation/send_quest_to_invoker

#These chat events are called only when the creature has no quests the player can accept or complete
#If player has no active quests:
tellraw @a[tag=!conversation.stop,scores={chat.triggered=1..,chat.text_id=0,quest_log=0},distance=0..5.299] {"translate":"event_type.target_no_help0","with":[{"selector":"@s"}]}
tellraw @a[tag=!conversation.stop,scores={chat.triggered=1..,chat.text_id=1,quest_log=0},distance=0..5.299] {"translate":"event_type.target_no_help0","with":[{"selector":"@s"}]}
tellraw @a[tag=!conversation.stop,scores={chat.triggered=1..,chat.text_id=2,quest_log=0},distance=0..5.299] {"translate":"event_type.target_no_help0","with":[{"selector":"@s"}]}
#If player has any quests active:
tellraw @a[tag=!conversation.stop,scores={chat.triggered=1..,chat.text_id=0,quest_log=1..},distance=0..5.299] {"translate":"event_type.invoker_quest_busy0","with":[{"selector":"@s"}]}
tellraw @a[tag=!conversation.stop,scores={chat.triggered=1..,chat.text_id=1,quest_log=1..},distance=0..5.299] {"translate":"event_type.invoker_quest_busy0","with":[{"selector":"@s"}]}
tellraw @a[tag=!conversation.stop,scores={chat.triggered=1..,chat.text_id=2,quest_log=1..},distance=0..5.299] {"translate":"event_type.invoker_quest_busy0","with":[{"selector":"@s"}]}
#Iterate chat events
scoreboard players add @a[scores={chat.triggered=1..,chat.text_id=0..2}] chat.text_id 1
scoreboard players set @a[scores={chat.triggered=1..,chat.text_id=3}] chat.text_id 0