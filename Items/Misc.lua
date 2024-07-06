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
local astral_shader = {
    object_type = "Shader",
    key = 'astral', 
    path = 'astral.fs'
}
local astral = {
    object_type = "Edition",
    key = "astral",
    weight = 0.3, --very rare
    shader = "astral",
    in_shop = true,
    extra_cost = 3,
	sound = {
		sound = 'cry_^Mult',
		per = 1,
		vol = 0.5
	},
    get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_txt = {
        name = "玄星",
        label = "玄星",
        text = {
            "{X:dark_edition,C:white}^#1#{}倍率"
        }
    },
    config = {pow_mult = 1.1},
    loc_vars = function(self, info_queue)
        return {vars = {self.config.pow_mult}}
    end
}

local echo_atlas = {
    object_type = 'Atlas',
    key = 'echo_atlas',
    path = 'm_cry_echo.png',
    px = 71,
    py = 95,
}

local echo = {
    object_type = 'Enhancement',
    key = 'echo',
    loc_txt = {
        name = '回响牌',
        text = {'有{C:green}#2#/#3#{}的几率',
        '{C:attention}重新触发{}#1#次'}
    },
    atlas = 'echo_atlas',
    config = {retriggers = 2, extra = 2},
    loc_vars = function(self, info_queue)
        return {vars = {self.config.retriggers,G.GAME.probabilities.normal, self.config.extra}}
    end
}

local eclipse_atlas = {
    object_type = 'Atlas',
    key = 'eclipse_atlas',
    path = 'c_cry_eclipse.png',
    px = 71,
    py = 95,
}

local eclipse = {
    object_type = "Consumable",
    set = "Tarot",
    name = "cry-Eclipse",
    key = "eclipse",
    pos = {x=0,y=0},
	config = {mod_conv = 'm_cry_echo', max_highlighted = 1},
    loc_txt = {
        name = '蚀',
        text = {
			"将{C:attention}#1#{}张选定卡牌",
			"增强为{C:attention}回响牌"
        }
    },
    atlas = "eclipse_atlas",
	discovered = true,
    loc_vars = function(self, info_queue)
        return {vars = {self.config.max_highlighted}}
    end,
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
			cry_misprintize(self, {min=2,max=2})
		end
		if self.edition and self.edition.cry_glitched then
			cry_misprintize(self, {min=0.1,max=10})
		end
            end
        --echo card
            cs = Card.calculate_seal
        function Card:calculate_seal(context)
            cs(self,context)
        if context.repetition then
		    if self.config.center == G.P_CENTERS.m_cry_echo then
                if pseudorandom('echo') < G.GAME.probabilities.normal/self.ability.extra then
                    return {
                        message = localize('k_again_ex'),
                        repetitions = self.ability.retriggers,
                        card = self
                    }
                end
            end
        end
        end
        end,
        items = {mosaic_shader, mosaic, oversat_shader, oversat, glitched_shader, glitched, astral_shader, astral, echo_atlas, echo, eclipse_atlas, eclipse}}

