
# set constants

scoreboard players set $100 tdh_el.temp 100
scoreboard players set $-1 tdh_el.temp -1

# load delta values from input

scoreboard players operation $max_dx tdh_el.temp = $dx tdh_el.input
scoreboard players operation $max_dy tdh_el.temp = $dy tdh_el.input
scoreboard players operation $max_dz tdh_el.temp = $dz tdh_el.input

# get position of entity into scores

scoreboard players operation $real_dx tdh_el.temp = $x2 tdh_el.input
scoreboard players operation $real_dy tdh_el.temp = $y2 tdh_el.input
scoreboard players operation $real_dz tdh_el.temp = $z2 tdh_el.input

# get center of the ellipsoid area into temporary objective

scoreboard players operation $center_x tdh_el.temp = $center_x tdh_el.input
scoreboard players operation $center_y tdh_el.temp = $center_y tdh_el.input
scoreboard players operation $center_z tdh_el.temp = $center_z tdh_el.input
