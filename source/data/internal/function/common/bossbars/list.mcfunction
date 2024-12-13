#Declarations
bossbar add internal:settlement_exp {"translate":"ui.bossbar.progress.settlement_exp"} 
bossbar add internal:closest_objective {"translate":"ui.bossbar.progress.generic_objective"}
bossbar add internal:closest_event {"translate":"ui.bossbar.progress.generic_event"}

#Styles
bossbar set internal:settlement_exp style notched_10
bossbar set internal:closest_objective style notched_6
bossbar set internal:closest_event style notched_6

#Color
bossbar set internal:settlement_exp color yellow
bossbar set internal:closest_objective color red
bossbar set internal:closest_event color red

#Visibility
#bossbar set internal:settlement_exp players @a
#bossbar set internal:closest_objective players @a
#bossbar set internal:closest_event players @a
