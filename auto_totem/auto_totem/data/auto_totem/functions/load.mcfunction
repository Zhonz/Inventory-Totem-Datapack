# Auto Totem - Load Function
# Initializes scoreboard objectives

scoreboard objectives add auto_totem.died deathCount
scoreboard objectives add auto_totem.count dummy

tellraw @a ["",{"text":"[Auto Totem] ","color":"aqua"},{"text":"数据包已加载! ","color":"green"},{"text":"自动从背包激活不死图腾","color":"white"}]
