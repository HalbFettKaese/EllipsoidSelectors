
# set up boundaries

scoreboard players operation $-max_dx tdh_el.temp = $max_dx tdh_el.temp
scoreboard players operation $-max_dy tdh_el.temp = $max_dy tdh_el.temp
scoreboard players operation $-max_dz tdh_el.temp = $max_dz tdh_el.temp

# if original score is positive, set up other boundary to be negative

execute if score $max_dx tdh_el.temp matches 1.. run scoreboard players operation $-max_dx tdh_el.temp *= $-1 tdh_el.temp
execute if score $max_dy tdh_el.temp matches 1.. run scoreboard players operation $-max_dy tdh_el.temp *= $-1 tdh_el.temp
execute if score $max_dz tdh_el.temp matches 1.. run scoreboard players operation $-max_dz tdh_el.temp *= $-1 tdh_el.temp

# if original score is negative, change it to be positive

execute if score $max_dx tdh_el.temp matches ..1 run scoreboard players operation $max_dx tdh_el.temp *= $-1 tdh_el.temp
execute if score $max_dy tdh_el.temp matches ..1 run scoreboard players operation $max_dy tdh_el.temp *= $-1 tdh_el.temp
execute if score $max_dz tdh_el.temp matches ..1 run scoreboard players operation $max_dz tdh_el.temp *= $-1 tdh_el.temp

# if real distance is within delta values, set output to true

execute store result score $result tdh_el.output if score $-max_dx tdh_el.temp <= $real_dx tdh_el.temp if score $real_dx tdh_el.temp <= $max_dx tdh_el.temp if score $-max_dy tdh_el.temp <= $real_dy tdh_el.temp if score $real_dy tdh_el.temp <= $max_dy tdh_el.temp if score $-max_dz tdh_el.temp <= $real_dz tdh_el.temp if score $real_dz tdh_el.temp <= $max_dz tdh_el.temp