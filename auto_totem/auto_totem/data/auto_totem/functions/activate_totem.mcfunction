# Auto Totem of Undying - Activation Function
# Activates totem effects when player dies with totems in inventory

# Check totem count in inventory (all slots)
execute store result score @s auto_totem.count run clear @s totem_of_undying 0

# If player has totems, activate them
execute if score @s auto_totem.count matches 1.. in minecraft:overworld run playsound minecraft:item.totem.use player @s
execute if score @s auto_totem.count matches 1.. in minecraft:overworld run particle minecraft:totem_particle ^ ^1.5 ^ 0.3 0.5 0.3 0.05 30
execute if score @s auto_totem.count matches 1.. in minecraft:overworld run particle minecraft:totem_particle ^ ^1.5 ^ 0 0 0 0.1 60
execute if score @s auto_totem.count matches 1.. in minecraft:overworld run clear @s totem_of_undying 1
execute if score @s auto_totem.count matches 1.. in minecraft:overworld run effect clear @s
execute if score @s auto_totem.count matches 1.. in minecraft:overworld run effect give @s resistance 1 255 true
execute if score @s auto_totem.count matches 1.. in minecraft:overworld run effect give @s fire_resistance 40 0 true
execute if score @s auto_totem.count matches 1.. in minecraft:overworld run effect give @s regeneration 45 1 true
execute if score @s auto_totem.count matches 1.. in minecraft:overworld run effect give @s absorption 5 1 true

scoreboard players reset @s auto_totem.count
scoreboard players set @s auto_totem.died 0
