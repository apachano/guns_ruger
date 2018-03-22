local path = minetest.get_modpath("guns_ruger")

local entity = {}
	entity.visual = "sprite"
	entity.visual_size = {x = 0.5, y = 0.5}
	entity.textures = {"22.png"}
	entity.hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 2},
		}, nil)
	end
	entity.hit_node = function(self, pos, node)
	end


guns.register_ammo("guns_ruger",{
		name = "22cal",
		max_ammo = 100,
		damage = 1,
		entity = entity,
		inventory_image = "22.png"
	})

guns.register_gun("guns_ruger",{
		name = "ruger",
		ammo = "guns_ruger:22cal",
		inventory_image = "ruger.png",
		sound_fire = "ruger_fire",
		sound_empty = "ruger_empty",
	})