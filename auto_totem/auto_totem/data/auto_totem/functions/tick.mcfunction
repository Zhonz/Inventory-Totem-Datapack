# Auto Totem - Tick Function
# Checks for dead players and activates totems

execute as @a[scores={auto_totem.died=1..}] at @s run function auto_totem:activate_totem
