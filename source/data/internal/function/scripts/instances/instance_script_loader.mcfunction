#This is where scripts' loading functions should be declared
#function internal:scripts/world/<type>
execute if entity @s[tag=area_trigger_undercity] run function internal:world/scripts/instances/undercity/undercity_script_loader
execute if entity @s[tag=area_trigger_infernal_realms] run function internal:world/scripts/instances/infernal_realms/infernal_realms_script_loader
execute if entity @s[tag=area_trigger_tempest_citadel] run function internal:world/scripts/instances/tempest_citadel/tempest_citadel_script_loader