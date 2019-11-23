execute store result score $commandfeedback tdh_el.temp run gamerule sendCommandFeedback
execute if score $commandfeedback tdh_el.temp matches 1 run tellraw @a ["[tdh.ellipsoid] ",{"color":"red","text":"Setup error: You need to set input values for the delta values and center position.","hoverEvent":{"action":"show_text","value":["",{"text":"Values that need to be set:\nDelta values:","color":"red"},{"text":"\n$dx tdh_el.input\n$dy tdh_el.input\n$dz tdh_el.input\n"},{"text":"Center values:","color":"red"},{"text":"\n$center_x tdh_el.input\n$center_y tdh_el.input\n$center_z tdh_el.input"},{"text":"\nSecond position values:","color":"red"},{"text":"\n$x2 tdh_el.input\n$y2 tdh_el.input\n$z2 tdh_el.input"}]}}]