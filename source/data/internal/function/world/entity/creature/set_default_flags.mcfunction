tag @s[type=#internal:npc_boss] add ENTITY_FLAG_EXTRA_INSTANCE_BIND
tag @s[type=#internal:npc_boss] add ENTITY_FLAG_EXTRA_IMMUNE_KNOCKBACK
tag @s[type=minecraft:villager,tag=ENTITY_FLAG_EXTRA_TRIGGER] add ENTITY_FLAG_GHOST
effect give @s[tag=ENTITY_FLAG_GHOST] minecraft:invisibility 1000000 0 true
tag @s[nbt={NoAI:1b}] add ENTITY_FLAG_NO_AI
tag @s[nbt={Invulnerable:1b}] add ENTITY_FLAG_NON_ATTACKABLE
tag @s[nbt={ActiveEffects:[{Id:11b,Amplifier:10b}]}] add ENTITY_FLAG_EXTRA_IMMUNE_DAMAGE
tag @s[nbt={Attributes:[{Base:10.0d,Name:"minecraft:knockback_resistance"}]}] add ENTITY_FLAG_EXTRA_IMMUNE_KNOCKBACK
tag @s[nbt={Silent:1b}] add ENTITY_FLAG_SILENT
tag @s[nbt={PersistenceRequired:1b}] add ENTITY_FLAG_NO_DESPAWN
execute if entity @s[type=minecraft:villager,tag=creature.set_default_gossip_flags] run function internal:world/entity/creature/set_default_gossip_flags
tag @s[type=!#internal:npc_boss,team=!QuestEnd,team=!QuestStart,tag=!ENTITY_FLAG_QUEST_RELATION] add ENTITY_FLAG_SPECIALINFO