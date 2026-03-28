# Append blank
function mine_glass_without_silk_touch:image/process/append/blank

data modify storage mine_glass_without_silk_touch:image data.tellraw append \
  from storage mine_glass_without_silk_touch:image data.current.description_text

# Append blank
function mine_glass_without_silk_touch:image/process/append/blank

# Append line_break
execute unless score $index.image_data mine_glass_without_silk_touch.image = $length mine_glass_without_silk_touch.image \
  run function mine_glass_without_silk_touch:image/process/append/line_break

# Remove first element from the description
data remove storage mine_glass_without_silk_touch:image data.current.description[0]
 