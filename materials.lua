-- see LICENSE.txt
--
-- add nodes for basic materials

minetest.register_node(modname..":chipped_bricks", {
        description = "chipped bricks",
        tiles = {
                "chipped_bricks.png",
        },
        paramtype = "light",
        paramtype2 = "facedir",
        groups = {cracky=1}
})

