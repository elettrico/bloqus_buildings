-- see LICENSE.txt
--
-- add nodes for basic materials

-- define simple nodes (no complex textures, light and facedir params)
local simple_nodes = {}

-- format: node description, node name, node side texture, node up and down texture
simple_nodes = {
    {"blue bricks"   , "blue_bricks"   , "bricks_blue"   , ""},
    {"chipped bricks", "chipped_bricks", "bricks_chipped", ""},
    {"dark green bricks", "dark_green_bricks", "bricks_dark_green", ""},
    {"oblique bricks", "oblique_bricks", "bricks_oblique", ""},
    {"square bricks" , "square_bricks", "bricks_square", ""},
    {"vertical stone bricks" , "vertical_stone_bricks", "bricks_vertical_stone", ""},
    {"tiled blocks"  , "tiled_blocks"  , "tiled_blocks"  , ""},
    {"rusty concrete", "rusty_concrete", "rusty_concrete_wall"  , "concrete"},
}

-- generate nodes

for _, row in ipairs(simple_nodes) do
    local desc = row[1] 
    local name = row[2]  
    local texture_side = row[3] 
    local texture_updown = row[4]
    if texture_updown == "" then
        texture_updown = texture_side
    end
    -- node
    minetest.register_node(modname..":"..name, {
        description = desc,
        tiles = {
            texture_updown..".png",
            texture_updown..".png",
            texture_side..".png",
            texture_side..".png",
            texture_side..".png",
            texture_side..".png",
        },
        groups = {cracky=1},     
        paramtype = "light",
        paramtype2 = "facedir",      
    })
end

