scoreboard players add @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-0.55,dz=-0.55,sort=nearest,limit=1] wb.struct_itr 1
execute unless entity @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-0.55,dz=-0.55,sort=nearest,limit=1] run function developer:world_builder/actions/spawn_object/create_temp_object