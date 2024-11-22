scoreboard players set @s min 1
scoreboard players set @s max 4
function internal:world/general/compute/random/lcg_range
#Instance Template ID
#1 = BRICKSTONE
#2 = TUFF_BRICKSTONE
#3 = DEEPSLATE
#4 = BLACKROCK
#10 = INFERNAL_REALM
#20 = TEMPEST_CITADEL
scoreboard players operation #instance_generator instance.template_id = @s rand
scoreboard players operation #instance_generator instance.difficulty = #world cfg.difficulty