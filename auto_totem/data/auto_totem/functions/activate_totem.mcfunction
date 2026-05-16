execute store result score @s totem_slot run clear @s totem_of_undying 0
execute if score @s totem_slot matches 1.. run clear @s totem_of_undying 1
execute if score @s totem_slot matches 1.. run effect give @s resistance 1 255 true
execute if score @s totem_slot matches 1.. run effect give @s fire_resistance 40 255 true
execute if score @s totem_slot matches 1.. run effect give @s regeneration 45 255 true
execute if score @s totem_slot matches 1.. run effect give @s absorption 2 255 true
scoreboard players reset @s totem_slot
scoreboard players set @s died 0