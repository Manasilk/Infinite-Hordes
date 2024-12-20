#TARGET
scoreboard players operation #temp target_id = @s target_id
execute as @a[distance=0..0.5] if score @s player_id = #temp target_id run tag @s add ENTITY_FLAG_SPELL_TARGET
tag @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..0.999,limit=1] add SPELL_EFFECT_FROSTFIRE_BOLT

#EFFECTS
execute positioned ~ ~1 ~ run particle block{block_state:{Name:ice}} ~ ~ ~ 0.0 0.0 0.0 0.1 1 normal @a
execute positioned ~ ~1 ~ run particle block{block_state:{Name:fire_coral_block}} ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal @a

#DELETE
execute if entity @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..0.599] run kill @s


tag @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..0.5] remove ENTITY_FLAG_SPELL_TARGET
scoreboard players reset #temp target_id