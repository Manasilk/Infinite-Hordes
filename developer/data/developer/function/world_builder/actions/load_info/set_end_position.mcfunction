execute align xyz run teleport @s ~0.5 ~ ~0.5
execute store result score #temp end.x run data get entity @s Pos[0] 1
execute store result score #temp end.y run data get entity @s Pos[1] 1
execute store result score #temp end.z run data get entity @s Pos[2] 1
scoreboard players reset @s wb.struct_itr