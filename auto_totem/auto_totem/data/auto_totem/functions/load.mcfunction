# Auto Totem - Load Function
# Initializes scoreboard objectives for the datapack

# died: Tracks player death count
scoreboard objectives add auto_totem.died deathCount

# count: Temporary storage for totem inventory check
scoreboard objectives add auto_totem.count dummy

# Tellraw welcome message
tellraw @a ["",{"text":"[Auto Totem] ","color":"aqua"},{"text":"数据包已加载! ","color":"green"},{"text":"自动从背包激活不死图腾","color":"white"}]
