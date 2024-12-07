#Use Item Triggers
scoreboard objectives add spell_pearl minecraft.used:minecraft.ender_pearl {"translate":"dbc.spells.ender_pearl"}
scoreboard objectives add spell_chorus minecraft.used:minecraft.chorus_fruit {"translate":"dbc.spells.chorus_fruit"}
scoreboard objectives add spell_undying minecraft.used:minecraft.totem_of_undying {"translate":"dbc.spells.undying"}
scoreboard objectives add spell_potion minecraft.used:minecraft.potion {"translate":"dbc.spells.potion"}

#Spell Cast Info
scoreboard objectives add spell_proc_pbty dummy {"translate":"dbc.spells.spell_proc_pbty"}
scoreboard objectives add spell_scripts dummy {"translate":"dbc.spells.spell_scripts"}
scoreboard objectives add spell_id dummy {"translate":"dbc.spells.spell_id"}
scoreboard objectives add cast_delay dummy {"translate":"dbc.spells.cast_delay"}
scoreboard objectives add cast_timer dummy {"translate":"dbc.spells.cast_timer"}
scoreboard objectives add cast_timer_max dummy {"translate":"dbc.spells.cast_timer_max"}

#Spell Timers
scoreboard objectives add disorient_t dummy {"translate":"dbc.spells.disorient_t"}
scoreboard objectives add pacify_t dummy {"translate":"dbc.spells.pacify_t"}
scoreboard objectives add silence_t dummy {"translate":"dbc.spells.silence_t"}
scoreboard objectives add disarm_t dummy {"translate":"dbc.spells.disarm_t"}