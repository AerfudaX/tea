-- Thx to sangeet79 and 0siribix for helping at rechecking codes

local modname = "tea"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")
local S = minetest.get_translator(minetest.get_current_modname())

-- Tea Bushes

local function grow_new_tea(pos)
if not default.can_grow(pos) then

		minetest.get_node_timer(pos):start(math.random(240,600))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-1, y = pos.y, z = pos.z-1}, modpath.."/schematics/tea.mts", "0", nil, false)
end

minetest.register_decoration({
	name = "tea:green_tea_bush",
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.001,
		scale = 0.002,
		spread = {x = 200, y = 200, z = 200},
		seed = 3462,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"deciduous_forest"},
	y_min = 1,
	y_max = 20,
	schematic = modpath.."/schematics/tea.mts",
	flags = "place_center_x, place_center_z, force_placement",
	rotation = "random",
})

minetest.register_node("tea:tea_sapling", {
    description = S("Tea Sapling"),
    drawtype = "plantlike",
    tiles = {"TeaGreenSapling.png"},
    inventory_image = "TeaGreenSapling.png",
    wield_image = "TeaGreenSapling.png",
    paramtype = "light",
    sunlight_propagates = true,
    walkable = false,
    on_timer = grow_new_tea,
	selection_box = {
	   type = "fixed",
	   fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16},
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
       	attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(2400,4800))
	end,
	
	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"tea:tea_sapling",
			{x = -1, y = 1, z = -1},
			{x = 1, y = 0, z = 1},
			4)

		return itemstack
	end,
})

minetest.register_node("tea:greentea_bush", {
    description = S("Green Tea Bush"),
	tiles = {"TeaGreenBushBlock.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 3},
	drawtype = "glasslike",
	is_ground_content = false,
	drop = {
		max_items = 1,
		items = {
			{items = {"tea:tea_sapling"}, rarity = 5},
			{items = {"tea:matchaleaves 2"}},
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

minetest.register_craftitem("tea:crushedmatcha", {
    description = S("Crushed Matcha"),
	inventory_image = "CrushedgreenTea.png",
})

minetest.register_craftitem("tea:matchaleaves", {
    description = S("Green Tea Leaves"),
	inventory_image = "GreenTealeaves.png",
})

minetest.register_craft({
    type = "shapeless",
	output = "tea:crushedmatcha",
	recipe = {
	    "farming:mortar_pestle",
		"tea:matchaleaves",
		"tea:matchaleaves",
		"tea:matchaleaves",
		"tea:matchaleaves",
	},
	replacements = {{"farming:mortar_pestle", "farming:mortar_pestle"}},
})

minetest.register_craftitem("tea:green_tea", {
    description = S("Matcha Tea"),
	inventory_image = "GreenTeaCup.png",
	on_use = minetest.item_eat(4, "vessels:drinking_glass"),
})

minetest.register_craft({
    type = "shapeless",
	output = "tea:green_tea",
	recipe = {
	    "vessels:drinking_glass",
		"tea:crushedmatcha",
		"bucket:bucket_river_water"
	},
	replacements = {{"bucket:bucket_river_water", "bucket:bucket_empty"}},
})

if minetest.get_modpath("bonemeal") ~= nil then
    bonemeal:add_sapling({
	     {"tea:tea_sapling", grow_new_tea, "default:dirt_with_grass"},
	})
end