#> mine_glass_without_silk_touch:image/process/generate
#
# This function generates the image data.

data modify storage mine_glass_without_silk_touch:image data.current.image_data set from storage mine_glass_without_silk_touch:image data.image_data
data modify storage mine_glass_without_silk_touch:image data.current.description set from storage mine_glass_without_silk_touch:image data.description
data modify storage mine_glass_without_silk_touch:image data.current.pixel_character set from storage mine_glass_without_silk_touch:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data mine_glass_without_silk_touch.image 0
# Set width
execute store result score $width mine_glass_without_silk_touch.image run data get storage mine_glass_without_silk_touch:image data.width
# Set height
execute store result score $height mine_glass_without_silk_touch.image run data get storage mine_glass_without_silk_touch:image data.height
# Set length
scoreboard players operation $length mine_glass_without_silk_touch.image = $width mine_glass_without_silk_touch.image
scoreboard players operation $length mine_glass_without_silk_touch.image *= $height mine_glass_without_silk_touch.image
# Clear remaining entries in tellraw
data remove storage mine_glass_without_silk_touch:image data.tellraw

# Add spacing on top
function mine_glass_without_silk_touch:image/process/append/line_break
# Loop over image data
function mine_glass_without_silk_touch:image/process/loop_over_image_data
# Add spacing on bottom
function mine_glass_without_silk_touch:image/process/append/line_break