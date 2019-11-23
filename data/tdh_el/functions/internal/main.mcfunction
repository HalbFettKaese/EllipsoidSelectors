
# set constants
# load delta values from input into scores:                 $max_dx, $max_dy, $max_dz
# get position of entity into scores:                       $real_dx, $real_dy, $real_dz
# get center position of the ellipsoid area into scores:    $x, $y, $z

function tdh_el:internal/load_values

# get difference between center position and entity position

scoreboard players operation $real_dx tdh_el.temp -= $center_x tdh_el.temp
scoreboard players operation $real_dy tdh_el.temp -= $center_y tdh_el.temp
scoreboard players operation $real_dz tdh_el.temp -= $center_z tdh_el.temp

# check if entity is in cuboid area defined by delta values

function tdh_el:internal/compare_cuboid

# only check if entity is within ellipsoid area if it is in cuboid area, else set calculated distance to -1

execute unless score $result tdh_el.output matches 1 run scoreboard players set $distance² tdh_el.output -1
execute if score $result tdh_el.output matches 1 run function tdh_el:internal/compare_ellipsoid
