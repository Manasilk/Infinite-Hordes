execute if entity @s[tag=SPELL_SCHOOL_TYPE_FIRE] run function internal:world/particles/generator/spell_particle_fire
execute if entity @s[tag=SPELL_SCHOOL_TYPE_FROST] run function internal:world/particles/generator/spell_particle_frost
execute if entity @s[tag=SPELL_SCHOOL_TYPE_SHADOW] run function internal:world/particles/generator/spell_particle_shadow
execute if entity @s[tag=SPELL_SCHOOL_TYPE_HOLY] run function internal:world/particles/generator/spell_particle_holy

execute if entity @s[tag=SPELL_PARTICLE_SPECIAL] run function internal:world/particles/generator/spell_particle_special
execute if entity @s[tag=TARGET_SELF] run function internal:world/particles/generator/spell_particle_invoker