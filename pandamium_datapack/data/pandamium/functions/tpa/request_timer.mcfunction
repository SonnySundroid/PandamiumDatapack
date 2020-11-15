
execute if score @s tpa_request_time matches 0.. run scoreboard players remove @s tpa_request_time 5

tag @s add doing_function
execute unless score @p[tag=doing_function] tpa_request_time matches 0.. as @a if score @p[tag=doing_function] tpa_request = @s id run tellraw @s [{"text":"","color":"gray"},{"text":"[TPA]","color":"dark_gray"}," Your TPA request to ",{"selector":"@p[tag=doing_function]"},{"text":" expired","bold":true},"."]
execute unless score @p[tag=doing_function] tpa_request_time matches 0.. as @a if score @p[tag=doing_function] tpa_request = @s id run tellraw @p[tag=doing_function] [{"text":"","color":"gray"},{"text":"[TPA]","color":"dark_gray"}," ",[{"selector":"@s"},"'s"]," TPA request ",{"text":"expired","bold":true},"."]
tag @s remove doing_function

execute unless score @s tpa_request_time matches 0.. run scoreboard players reset @s tpa_request
execute unless score @s tpa_request_time matches 0.. run scoreboard players reset @s tpa_request_time
