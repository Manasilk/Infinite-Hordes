data modify entity @s CustomName set value ""
#Place a sign container to store the values
setblock 0 2 0 minecraft:oak_sign{front_text:{messages:['{"translate":"ui.entity_nameplate","color":"red","with":[{"text":"||||||||||","bold":true,"color":"green"},{"text":"","bold":true,"color":"dark_gray"}]}','{"text":""}','{"text":""}','{"text":""}']}}
#Merge sign text contents with this entity CustomName
data modify entity @s CustomName set from block 0 2 0 front_text.messages[0]
setblock 0 2 0 minecraft:air