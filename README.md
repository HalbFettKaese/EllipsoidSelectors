# Ellipsoid Selectors
This data pack allows the position of an entity or a position stored in scores to be compared to a ellipsoid area in Minecraft 1.14+

The calculation follows the formula `x²/dx² + y²/dy² + z² + dz² <= 1`.
All input numbers use a scaling factor of 10, the distance output can't be said to use proper distances but uses a scaling factor of 100.

To avoid an integer overflow during calculations, the system first detects the given position being outside a cuboid area following the sizes of the ellipsoid area. Being outside will result in an output distance of `-1`.
## What this can't do
* Rotating the area without fully exchanging the axes
* Detecting the full hitbox of an entity intersecting with the ellipsoid area
## How to use
* Scoreboard inputs to set up
  All inputs are written into the `tdh_el:inputs` objective.
  List of fake players to set scores for:
  * `$center_x`
  * `$center_y`
  * `$center_z`
    * Set the center position of the target area.
  * `$dx`
  * `$dy`
  * `$dz`
    * Set the size of the targeted area.
  * `$x2`
  * `$y2`
  * `$z2`
    * Only required and used to compare the area to a position previously stored in a score.
* Functions
  * `tdh_el:detect_from_entity`
    * Compares the position of the executing entity to the ellipsoid area defined by the input scores.
      Stores a value of `1` in the `$result tdh_el.output` score if the position is inside the area, else stores a value of `0`.  
      If the position was inside of the cuboid area that extends for as far as the delta values go from the center position, the `$distance² tdh_el.output` score is set to the square of the distance between the center position and the entity with a scaling factor of 100. Else, a value of `-1` is stored as the square of the distance.
  * `tdh_el:detect_from_scores`
    * Has the same effect as the function `tdh_el:detect_from_entity`, but instead of taking the position of the executing entity, it takes the position stored in the scoreboard values of `$x2`, `$y2` and `$z2` in the objective `tdh_el:inputs`.
  * `tdh_el:entity_pos_to_center_input`
    * Stores the current position of the executing entity as the center position of the ellipsoid area.
  * `tdh_el:entity_pos_to_second_pos_input`
    * Stores the current position of the executing entity as the position used by the function `tdh_el:detect_from_scores` instead of the entity position.
