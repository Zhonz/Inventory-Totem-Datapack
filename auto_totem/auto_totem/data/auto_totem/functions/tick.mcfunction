# Auto Totem - Tick Function
# Runs every game tick to check for dead players with totems

# Check all players who have died (died score >= 1) and run activation
execute as @a[scores={auto_totem.died=1..}] at @s run function auto_totem:activate_totem
