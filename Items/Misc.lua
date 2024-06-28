--Edition code based on Bunco's Glitter Edition

local mosaic_shader = {
    object_type = "Shader",
    key = 'mosaic', 
    path = 'mosaic.fs'
}
local mosaic = {
    object_type = "Edition",
    key = "mosaic",
    weight = 0.8, --slightly rarer than Polychrome
    shader = "mosaic",
    in_shop = true,
    extra_cost = 6,
    config = {Xchips = 2.5},
	sound = {
		sound = 'cry_e_mosaic',
		per = 1,
		vol = 0.5
	},
    get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_vars = function(self, info_queue)
        return {vars = {self.config.Xchips}}
    end,
    loc_txt = {
        name = "拼花",
        label = "拼花",
        text = {
            "{X:chips,C:white}X#1#{}筹码"
        }
    }
}
local oversat_shader = {
    object_type = "Shader",
    key = 'oversat', 
    path = 'oversat.fs'
}
local oversat = {
    object_type = "Edition",
    key = "oversat",
    weight = 1,
    shader = "oversat",
    in_shop = true,
    extra_cost = 5,
	sound = {
		sound = 'cry_e_oversaturated',
		per = 1,
		vol = 0.5
	},
    get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_txt = {
        name = "过曝",
        label = "过曝",
        text = {
            "所有数值{C:attention}翻倍",
            "{C:inactive}（如果可能）"
        }
    }
}
local glitched_shader = {
    object_type = "Shader",
    key = 'glitched', 
    path = 'glitched.fs'
}
local glitched = {
    object_type = "Edition",
    key = "glitched",
    weight = 15,
    shader = "glitched",
    in_shop = true,
    extra_cost = 3,
	sound = {
		sound = 'cry_e_glitched',
		per = 1,
		vol = 0.5
	},
    get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_txt = {
        name = "故障",
        label = "故障",
        text = {
            "所有数值",
            "{C:dark_edition}随机{C:blue}X0.1{} - {C:red}X10",
            "{C:inactive}（如果可能）"
        }
    }
}
return {name = "Misc.", 
        init = function()
            se = Card.set_edition
            function Card:set_edition(x,y,z)
                local was_oversat = self.edition and (self.edition.cry_oversat or self.edition.cry_glitched)
                se(self,x,y,z)
		if was_oversat then
			cry_misprintize(self,nil,true)
		end
		if self.edition and self.edition.cry_oversat then
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.001, func = function()
			cry_misprintize(self, {min=2,max=2})
			return true end }))
		end
		if self.edition and self.edition.cry_glitched then
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.001, func = function()
				cry_misprintize(self, {min=0.1,max=10})
			return true end }))
		end
            end
        end,
        items = {mosaic_shader, mosaic, oversat_shader, oversat, glitched_shader, glitched}}
