tag @s[tag=creature.set_flag_gossip] add ENTITY_FLAG_GOSSIP
tag @s[tag=creature.set_flag_quest_relation] add ENTITY_FLAG_QUEST_RELATION
tag @s[tag=creature.set_flag_questgiver] add ENTITY_FLAG_QUESTGIVER
tag @s[tag=creature.set_flag_quest_start] add ENTITY_FLAG_CAN_START_QUEST
tag @s[tag=creature.set_flag_quest_end] add ENTITY_FLAG_CAN_END_QUEST
tag @s[tag=creature.set_flag_gossip] remove creature.set_flag_gossip
tag @s[tag=creature.set_flag_quest_relation] remove creature.set_flag_quest_relation
tag @s[tag=creature.set_flag_questgiver] remove creature.set_flag_questgiver
tag @s[tag=creature.set_flag_quest_start] remove creature.set_flag_quest_start
tag @s[tag=creature.set_flag_quest_end] remove creature.set_flag_quest_end

team join QuestStart @s[tag=ENTITY_FLAG_CAN_START_QUEST]
team join QuestEnd @s[team=!QuestStart,tag=ENTITY_FLAG_CAN_END_QUEST]
scoreboard players operation @s[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION] entity_id = #entity entity_id

tag @s remove creature.set_default_gossip_flags