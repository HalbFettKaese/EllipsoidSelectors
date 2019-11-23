
# square distances

scoreboard players operation $real_dx tdh_el.temp *= $real_dx tdh_el.temp
scoreboard players operation $real_dy tdh_el.temp *= $real_dy tdh_el.temp
scoreboard players operation $real_dz tdh_el.temp *= $real_dz tdh_el.temp

# square delta values

scoreboard players operation $max_dx tdh_el.temp *= $max_dx tdh_el.temp
scoreboard players operation $max_dy tdh_el.temp *= $max_dy tdh_el.temp
scoreboard players operation $max_dz tdh_el.temp *= $max_dz tdh_el.temp

# scale up distances

scoreboard players operation $real_dx tdh_el.temp *= $100 tdh_el.temp
scoreboard players operation $real_dy tdh_el.temp *= $100 tdh_el.temp
scoreboard players operation $real_dz tdh_el.temp *= $100 tdh_el.temp

# divide real values by delta values

scoreboard players operation $real_dx tdh_el.temp /= $max_dx tdh_el.temp
scoreboard players operation $real_dy tdh_el.temp /= $max_dy tdh_el.temp
scoreboard players operation $real_dz tdh_el.temp /= $max_dz tdh_el.temp

# sum up resulting quotients

scoreboard players set $distance² tdh_el.output 0

scoreboard players operation $distance² tdh_el.output += $real_dx tdh_el.temp
scoreboard players operation $distance² tdh_el.output += $real_dy tdh_el.temp
scoreboard players operation $distance² tdh_el.output += $real_dz tdh_el.temp

# test if sum is lower than or equal to 1

execute store success score $result tdh_el.output if score $distance² tdh_el.output matches ..100