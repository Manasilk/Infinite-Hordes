execute if entity @s[scores={wb.gob_type=1}] run function developer:world_builder/actions/spawn_object/object_list/lighting/get_entry
execute if entity @s[scores={wb.gob_type=2}] run function developer:world_builder/actions/spawn_object/object_list/vegetation/get_entry
execute if entity @s[scores={wb.gob_type=3}] run function developer:world_builder/actions/spawn_object/object_list/structure/get_entry

tag @s add world_builder.prepare_object
kill @e[type=minecraft:item,distance=0..3.0]