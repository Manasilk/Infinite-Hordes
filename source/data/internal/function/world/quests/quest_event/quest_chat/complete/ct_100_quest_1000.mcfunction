tellraw @a[tag=conversation.stop,distance=0..5.299] {"translate":"quest.end_chat","with":[{"selector":"@s"},{"translate":"quest.text.explore_the_camp"}]}
tellraw @a[tag=conversation.stop,distance=0..5.299] {"translate":"event_type.quest_complete","with":[{"translate":"quest.title.explore_the_camp"}],"color":"yellow"}
clear @a[tag=conversation.stop,distance=0..5.299] minecraft:paper[minecraft:custom_data={quest_journal:1b,quest_id:1000}]