scoreboard players set @s[scores={wb.type_id=1..}] wb.type_id 0

tellraw @s[scores={wb.class_id=1}] {"translate":"builder_menu.type_option","with":[{"text":"[","color":"gold"},{"translate":"builder_type.edit_target","clickEvent":{"action":"run_command","value":"/function developer:world_builder/options/types/set_type_edit"},"hoverEvent":{"action":"show_text","value":[{"translate":"builder_desc.type_option.edit"}]},"color":"white"},{"text":"]","color":"gold"},{"text":"[","color":"gold"},{"translate":"builder_type.summon","clickEvent":{"action":"run_command","value":"/function developer:world_builder/options/types/set_type_summon"},"hoverEvent":{"action":"show_text","value":[{"translate":"builder_desc.type_option.summon_npc"}]},"color":"white"},{"text":"]","color":"gold"},{"text":"[","color":"gold"},{"translate":"builder_type.despawn","clickEvent":{"action":"run_command","value":"/function developer:world_builder/options/types/set_type_despawn"},"hoverEvent":{"action":"show_text","value":[{"translate":"builder_desc.type_option.despawn_npc"}]},"color":"white"},{"text":"]","color":"gold"}],"color":"yellow"}
tellraw @s[scores={wb.class_id=2}] {"translate":"builder_menu.type_option","with":[{"text":"[","color":"gold"},{"translate":"builder_type.summon","clickEvent":{"action":"run_command","value":"/function developer:world_builder/options/types/set_type_summon"},"hoverEvent":{"action":"show_text","value":[{"translate":"builder_desc.type_option.summon_gob"}]},"color":"white"},{"text":"]","color":"gold"},{"text":"[","color":"gold"},{"translate":"builder_type.despawn","clickEvent":{"action":"run_command","value":"/function developer:world_builder/options/types/set_type_despawn"},"hoverEvent":{"action":"show_text","value":[{"translate":"builder_desc.type_option.despawn_gob"}]},"color":"white"},{"text":"]","color":"gold"}],"color":"yellow"}