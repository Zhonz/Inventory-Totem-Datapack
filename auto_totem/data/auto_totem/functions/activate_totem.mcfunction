execute store result score @s totem_slot run clear @s totem_of_undying 0
execute if score @s totem_slot matches 1.. in minecraft:overworld run playsound minecraft:item.totem.use player @s
execute if score @s totem_slot matches 1.. in minecraft:overworld run particle minecraft:totem_particle ^ ^1.5 ^ 0.3 0.5 0.3 0.05 30
execute if score @s totem_slot matches 1.. in minecraft:overworld run particle minecraft:totem_particle ^ ^1.5 ^ 0 0 0 0.1 60
execute if score @s totem_slot matches 1.. run clear @s totem_of_undying 1
execute if score @s totem_slot matches 1.. run effect clear @s
execute if score @s totem_slot matches 1.. run effect give @s resistance 1 255 true
execute if score @s totem_slot matches 1.. run effect give @s fire_resistance 40 0 true
execute if score @s totem_slot matches 1.. run effect give @s regeneration 45 1 true
execute if score @s totem_slot matches 1.. run effect give @s absorption 5 1 true
scoreboard players reset @s totem_slot
scoreboard players set @s died 0