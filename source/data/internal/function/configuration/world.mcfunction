### VANILLA DATAPACK ###
# disabled by default
#datapack disable vanilla
### GAMERULES CONFIG ###
# SUBJECT TO CHANGE AT RC/RELEASE
# @PLAYER
gamerule keepInventory true
gamerule naturalRegeneration true
gamerule doLimitedCrafting true
gamerule doImmediateRespawn false
#
# @CHAT
gamerule showDeathMessages false
gamerule announceAdvancements false
#
# @SPAWN
gamerule doMobSpawning false
execute store result score #world cfg.do_spawn run gamerule doMobSpawning
#respawn timers in seconds
scoreboard players set #world cfg.normal_t 60
scoreboard players set #world cfg.elite_t 300
scoreboard players set #world cfg.boss_t 600
#in ticks for quests
scoreboard players set #world cfg.quest_t 600
#in seconds for garbage (timers higher than default are redundant)
scoreboard players set #world cfg.prjctl_age 30
scoreboard players set #world cfg.item_age 60
#
# @PICKUP
gamerule doMobLoot false
#
# @LOOT
gamerule doEntityDrops true
gamerule doTileDrops false
#
# @ENVIRONMENT
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doFireTick true
gamerule mobGriefing false
gamerule maxEntityCramming 0
gamerule randomTickSpeed 0
gamerule forgiveDeadPlayers true
gamerule universalAnger false
gamerule doInsomnia true
#
# @WORLDBORDER
worldborder set 15360 0
worldborder damage buffer 0
worldborder damage amount 200
worldborder warning distance 12
worldborder warning time 0
#
# @WORLDSPAWN
gamerule spawnRadius 0
#
# @SERVER
gamerule reducedDebugInfo false
gamerule sendCommandFeedback true
gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule maxCommandChainLength 65536
execute store result score #world cfg.cmd_ln run gamerule maxCommandChainLength
gamerule spectatorsGenerateChunks true
gamerule disableElytraMovementCheck true
function internal:world/general/miscellaneous/shared_def
#defines game difficulty
#PEACEFUl                         = 0
#EASY                             = 1,
#NORMAL                           = 2,
#HARd                             = 3
execute store result score #world cfg.difficulty run difficulty
### ANTICHEAT CONFIG ###
#
# @ANTICHEAT
#defines the allowed gamemode for players
#SURVIVAL                         = 0,
#CREATIVE                         = 1,
#ADVENTURE                        = 2,
#SPECTATOR                        = 3
scoreboard players set #anticheat _ac.gamemode 2

#controls if anticheat should take any actions
#0 = disabled,
#1 = enabled
scoreboard players set #anticheat _ac.actions 0

#Control broadcasting timer in seconds
scoreboard players set #anticheat _ac.brdcst_del 10