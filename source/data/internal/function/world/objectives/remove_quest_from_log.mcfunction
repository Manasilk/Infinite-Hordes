scoreboard players remove @s quest_log 1
scoreboard players remove @s quest_status 1
scoreboard players add @s stat_quests_cmpl 1
scoreboard players set @s[scores={quest_kill0=1..}] quest_kill0 0
scoreboard players set @s[scores={quest_kill1=1..}] quest_kill1 0
scoreboard players set @s[scores={quest_kill2=1..}] quest_kill2 0
scoreboard players set @s[scores={quest_kill3=1..}] quest_kill3 0
scoreboard players set @s chat.text_id 0

playsound ui:quest.complete master @s ~ ~ ~ 1 1 0.1
tag @s add conversation.stop