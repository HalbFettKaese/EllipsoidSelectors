
# set output to false

scoreboard players set $result tdh_el.output 0

# test for the existence of all the inputs

execute store success score $init_success tdh_el.temp if score $dx tdh_el.input = $dx tdh_el.input 
execute if score $init_success tdh_el.temp matches 1 store success score $init_success tdh_el.temp if score $dy tdh_el.input = $dy tdh_el.input 
execute if score $init_success tdh_el.temp matches 1 store success score $init_success tdh_el.temp if score $dz tdh_el.input = $dz tdh_el.input 
execute if score $init_success tdh_el.temp matches 1 store success score $init_success tdh_el.temp if score $center_x tdh_el.input = $center_x tdh_el.input 
execute if score $init_success tdh_el.temp matches 1 store success score $init_success tdh_el.temp if score $center_y tdh_el.input = $center_y tdh_el.input 
execute if score $init_success tdh_el.temp matches 1 store success score $init_success tdh_el.temp if score $center_z tdh_el.input = $center_z tdh_el.input
execute if score $init_success tdh_el.temp matches 1 store success score $init_success tdh_el.temp if score $x2 tdh_el.input = $x2 tdh_el.input 
execute if score $init_success tdh_el.temp matches 1 store success score $init_success tdh_el.temp if score $y2 tdh_el.input = $y2 tdh_el.input 
execute if score $init_success tdh_el.temp matches 1 store success score $init_success tdh_el.temp if score $z2 tdh_el.input = $z2 tdh_el.input

# if all inputs exist, run main function

execute if score $init_success tdh_el.temp matches 1 run function tdh_el:internal/load_values_from_scores
execute if score $init_success tdh_el.temp matches 1 run function tdh_el:internal/main

# if not all inputs exist, send error message

execute unless score $init_success tdh_el.temp matches 1 run function tdh_el:internal/init_fail_scores

# reset the temporary objective

scoreboard players reset * tdh_el.temp