#MINING EXPEDITION QUEST

execute as @a[scores={chat.triggered=1..},distance=0..5.299] at @s run function internal:world/quests/add_quest_to_log

scoreboard players set @a[tag=conversation.stop,distance=0..5.299] quest_id 2000
tag @a[tag=conversation.stop,distance=0..5.299] add QUEST_ACCEPT_2000

function internal:world/quests/quest_event/quest_item/cg_100_quest_2000
function internal:world/quests/quest_event/quest_chat/accept/ct_100_quest_2000
tag @s add creature.summon_quest_tracker

scoreboard players set #log quest_id 2000