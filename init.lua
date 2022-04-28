-- Thx to sangeet79 and 0siribix for helping at rechecking codes

local modname = "ice_cream"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")
local S = minetest.get_translator(minetest.get_current_modname())

-- Ice Creams

minetest.register_node("ice_cream:cone", {
    description = S("Ice Cream Cone"),
    tiles = {"blanktexture.png^[colorize:#b97a57","(blanktexture.png^[colorize:#b97a57)^(edgeblanktexture.png^[colorize:#b97a57)","coneminetest.png"},
    walkable = false,
	drawtype = "nodebox",
	paramtype = "light",
	buildable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, -0.4375, 0.0625},
			
			{-0.125, -0.4375, -0.125, 0.125, -0.3125, 0.125},
			
			{-0.1875, -0.3125, -0.1875, -0.0625, -0.1875, 0.1875},
			{0.1875, -0.3125, -0.1875, 0.0625, -0.1875, 0.1875},
			{-0.1875, -0.3125, -0.1875, 0.1875, -0.1875, -0.0625},
			{0.1875, -0.3125, 0.1875, -0.1875, -0.1875, 0.0625},
			
			{-0.25, -0.1875, -0.25, -0.125, -0.0625, 0.25},
			{0.25, -0.1875, 0.25, 0.125, -0.0625, -0.25},
			{-0.25, -0.1875, -0.125, 0.25, -0.0625, -0.25},
			{0.25, -0.1875, 0.125, -0.25, -0.0625, 0.25},
			
			{-0.3125, -0.0625, -0.3125, -0.1875, 0.125, 0.3125},
			{0.3125, -0.0625, -0.3125, 0.1875, 0.125, 0.3125},
			{-0.3125, -0.0625, -0.1875, 0.3125, 0.125, -0.3125},
			{0.3125, -0.0625, 0.1875, -0.3125, 0.125, 0.3125},
		},
	},
	paramtype2 = "facedir",
	selection_box = {
	   type = "fixed",
	   fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16},
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
       	attached_node = 1},
	on_use = minetest.item_eat(2, ""),
})

minetest.register_node("ice_cream:icecreambanana", {
    description = S("Banana Icecream"),
	tiles = { "blanktexture.png^[colorize:#f4fc70","(blanktexture.png^[colorize:#b97a57)^(edgeblanktexture.png^[colorize:#f4fc70)","Icecreambanana.png"},
    walkable = false,
	drawtype = "nodebox",
	paramtype = "light",
	buildable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, -0.4375, 0.0625},
			{-0.125, -0.4375, -0.125, 0.125, -0.3125, 0.125},
			{-0.1875, -0.3125, -0.1875, 0.1875, -0.1875, 0.1875},
			{-0.25, -0.1875, -0.25, 0.25, -0.0625, 0.25},
			{-0.3125, -0.0625, -0.3125, 0.3125, 0.125, 0.3125},
			
			{-0.375, 0.125, -0.375, 0.375, 0.1875, 0.375},
			{-0.4375, 0.1875, -0.4375, 0.4375, 0.3125, 0.4375},
			{-0.375, 0.3125, -0.375, 0.375, 0.375, 0.375},
			{-0.3125, 0.375, -0.3125, 0.3125, 0.4375, 0.3125},
			{-0.1875, 0.4375, -0.1875, 0.1875, 0.5, 0.1875},
		},
	},
	paramtype2 = "facedir",
	selection_box = {
	   type = "fixed",
	   fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16},
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
       	attached_node = 1},
	on_use = minetest.item_eat(6, ""),
})

minetest.register_node("ice_cream:icecreamchocolate", {
    description = S("Choco Icecream"),
    tiles = {"blanktexture.png^[colorize:#623d28","(blanktexture.png^[colorize:#b97a57)^(edgeblanktexture.png^[colorize:#623d28)","Icecreamchocolate.png"},
    walkable = false,
	drawtype = "nodebox",
	paramtype = "light",
	buildable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, -0.4375, 0.0625},
			{-0.125, -0.4375, -0.125, 0.125, -0.3125, 0.125},
			{-0.1875, -0.3125, -0.1875, 0.1875, -0.1875, 0.1875},
			{-0.25, -0.1875, -0.25, 0.25, -0.0625, 0.25},
			{-0.3125, -0.0625, -0.3125, 0.3125, 0.125, 0.3125},
			
			{-0.375, 0.125, -0.375, 0.375, 0.1875, 0.375},
			{-0.4375, 0.1875, -0.4375, 0.4375, 0.3125, 0.4375},
			{-0.375, 0.3125, -0.375, 0.375, 0.375, 0.375},
			{-0.3125, 0.375, -0.3125, 0.3125, 0.4375, 0.3125},
			{-0.1875, 0.4375, -0.1875, 0.1875, 0.5, 0.1875},
		},
	},
	paramtype2 = "facedir",
	selection_box = {
	   type = "fixed",
	   fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16},
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
       	attached_node = 1},
	on_use = minetest.item_eat(6, ""),
})
minetest.register_node("ice_cream:icecreammatcha", {
    description = S("Matcha Icecream"),
    tiles = {"blanktexture.png^[colorize:#a0ce17","(blanktexture.png^[colorize:#b97a57)^(edgeblanktexture.png^[colorize:#a0ce17)","Icecreammatcha.png"},
    walkable = false,
	drawtype = "nodebox",
	paramtype = "light",
	buildable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, -0.4375, 0.0625},
			{-0.125, -0.4375, -0.125, 0.125, -0.3125, 0.125},
			{-0.1875, -0.3125, -0.1875, 0.1875, -0.1875, 0.1875},
			{-0.25, -0.1875, -0.25, 0.25, -0.0625, 0.25},
			{-0.3125, -0.0625, -0.3125, 0.3125, 0.125, 0.3125},
			
			{-0.375, 0.125, -0.375, 0.375, 0.1875, 0.375},
			{-0.4375, 0.1875, -0.4375, 0.4375, 0.3125, 0.4375},
			{-0.375, 0.3125, -0.375, 0.375, 0.375, 0.375},
			{-0.3125, 0.375, -0.3125, 0.3125, 0.4375, 0.3125},
			{-0.1875, 0.4375, -0.1875, 0.1875, 0.5, 0.1875},
		},
	},
	paramtype2 = "facedir",
	selection_box = {
	   type = "fixed",
	   fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16},
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
       	attached_node = 1},
	on_use = minetest.item_eat(6, ""),
})

minetest.register_node("ice_cream:icecreamstrawberry", {
    description = S("Strawberry Icecream"),
    tiles = {"blanktexture.png^[colorize:#f9b6ab","(blanktexture.png^[colorize:#b97a57)^(edgeblanktexture.png^[colorize:#f9b6ab)","Icecreamstrawberry.png"},
    walkable = false,
	drawtype = "nodebox",
	paramtype = "light",
	buildable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, -0.4375, 0.0625},
			{-0.125, -0.4375, -0.125, 0.125, -0.3125, 0.125},
			{-0.1875, -0.3125, -0.1875, 0.1875, -0.1875, 0.1875},
			{-0.25, -0.1875, -0.25, 0.25, -0.0625, 0.25},
			{-0.3125, -0.0625, -0.3125, 0.3125, 0.125, 0.3125},
			
			{-0.375, 0.125, -0.375, 0.375, 0.1875, 0.375},
			{-0.4375, 0.1875, -0.4375, 0.4375, 0.3125, 0.4375},
			{-0.375, 0.3125, -0.375, 0.375, 0.375, 0.375},
			{-0.3125, 0.375, -0.3125, 0.3125, 0.4375, 0.3125},
			{-0.1875, 0.4375, -0.1875, 0.1875, 0.5, 0.1875},
		},
	},
	paramtype2 = "facedir",
	selection_box = {
	   type = "fixed",
	   fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16},
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
       	attached_node = 1},
	on_use = minetest.item_eat(6, ""),
})

minetest.register_node("ice_cream:icecreamvanilla", {
    description = S("Vanilla Icecream"),
    tiles = {"blanktexture.png^[colorize:#f4ecc6","(blanktexture.png^[colorize:#b97a57)^(edgeblanktexture.png^[colorize:#f4ecc6)","Icecreamvanilla.png"},
	walkable = false,
	drawtype = "nodebox",
	paramtype = "light",
	buildable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, -0.4375, 0.0625},
			{-0.125, -0.4375, -0.125, 0.125, -0.3125, 0.125},
			{-0.1875, -0.3125, -0.1875, 0.1875, -0.1875, 0.1875},
			{-0.25, -0.1875, -0.25, 0.25, -0.0625, 0.25},
			{-0.3125, -0.0625, -0.3125, 0.3125, 0.125, 0.3125},
			
			{-0.375, 0.125, -0.375, 0.375, 0.1875, 0.375},
			{-0.4375, 0.1875, -0.4375, 0.4375, 0.3125, 0.4375},
			{-0.375, 0.3125, -0.375, 0.375, 0.375, 0.375},
			{-0.3125, 0.375, -0.3125, 0.3125, 0.4375, 0.3125},
			{-0.1875, 0.4375, -0.1875, 0.1875, 0.5, 0.1875},
		},
	},
	paramtype2 = "facedir",
	selection_box = {
	   type = "fixed",
	   fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16},
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
       	attached_node = 1},
	on_use = minetest.item_eat(6, ""),
})

minetest.register_craft({
    output = "ice_cream:cone",
	recipe = {
	    {"","group:food_flour","mobs:egg"},
	    {"group:food_sugar","mobs:bucket_milk",""},
	    {"","",""},
	},
	replacements = {
		{"mobs:bucket_milk","bucket:bucket_empty"},
	},
})

minetest.register_craft({
    output = "ice_cream:icecreambanana 2",
	recipe = {
	    {"ethereal:banana","",""},
		{"mobs:egg","group:food_sugar",""},
		{"ice_cream:cone","default:ice",""},
	},
	replacements = {
	    {"default:ice", "default:ice"},
	},
})

minetest.register_craft({
    output = "ice_cream:icecreamchocolate 2",
	recipe = {
	    {"group:food_cocoa","",""},
		{"mobs:egg","group:food_sugar",""},
		{"ice_cream:cone","default:ice",""},
	},
	replacements = {
	    {"default:ice", "default:ice"},
	},
})

minetest.register_craft({
    output = "ice_cream:icecreamstrawberry 2",
	recipe = {
	    {"ethereal:strawberry","",""},
		{"mobs:egg","group:food_sugar",""},
		{"ice_cream:cone","default:ice",""},
	},
	replacements = {
	    {"default:ice", "default:ice"},
	},
})

minetest.register_craft({
    output = "ice_cream:icecreamvanilla 2",
	recipe = {
	    {"farming:vanilla_extract","",""},
		{"mobs:egg","group:food_sugar",""},
		{"ice_cream:cone","default:ice",""},
	},
	replacements = {
	    {"farming:vanilla_extract","vessels:glass_bottle"},
		{"default:ice", "default:ice"},
	},
})

minetest.register_craft({
output = "ice_cream:icecreammatcha 2",
    recipe = {
	    {"tea:crushedmatcha","",""},
	    {"mobs:egg","group:food_sugar",""},
	    {"ice_cream:cone","default:ice",""},
    },
    replacements = {
	    {"default:ice", "default:ice"},
	},
})