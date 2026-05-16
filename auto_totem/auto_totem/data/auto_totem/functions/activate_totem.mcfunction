# Auto Totem of Undying - Main Activation Function
# Activates totem effect when player dies with totems in inventory

# Check if player has totem and store count
execute store result score @s auto_totem.count run clear @s totem_of_undying 0

# Play sound effect if player has totem
execute if score @s auto_totem.count matches 1.. run playsound minecraft:item.totem.use player @s

# Spawn totem particles if player has totem
execute if score @s auto_totem.count matches 1.. run particle minecraft:totem_particle ~ ~1.5 ~ 0.3 0.5 0.3 0.05 30
execute if score @s auto_totem.count matches 1.. run particle minecraft:totem_particle ~ ~1.5 ~ 0 0 0 0.1 60

# Consume one totem from inventory
execute if score @s auto_totem.count matches 1.. run clear @s totem_of_undying 1

# Clear all existing effects
execute if score @s auto_totem.count matches 1.. run effect clear @s

# Grant totem effects
execute if score @s auto_totem.count matches 1.. run effect give @s resistance 1 255 true
execute if score @s auto_totem.count matches 1.. run effect give @s fire_resistance 40 0 true
execute if score @s auto_totem.count matches 1.. run effect give @s regeneration 45 1 true
execute if score @s auto_totem.count matches 1.. run effect give @s absorption 5 1 true

# Reset the count score
scoreboard players reset @s auto_totem.count

# Reset death flag
scoreboard players set @s auto_totem.died 0
