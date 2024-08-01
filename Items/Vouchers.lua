local copies_atlas = {
    object_type = "Atlas",
    key = "cry_copies",
    path = "v_cry_copies.png",
    px = 71,
    py = 95
}
local copies = {
    object_type = "Voucher",
	key = "copies",
    atlas = "cry_copies",
	pos = {x = 0, y = 0},
	loc_txt = {
        name = '三重复制',
        text = {
			"双倍标签变为{C:attention}三倍标签",
            "且出现频率{C:attention}X2"
		}
    },
    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = {set = "Tag", key = "tag_double"}
        info_queue[#info_queue+1] = {set = "Tag", key = "tag_cry_triple", specific_vars = {2}}
        return {vars = {}}
    end,
}
local tag_printer_atlas = {
    object_type = "Atlas",
    key = "cry_tag_printer",
    path = "v_cry_tag_printer.png",
    px = 71,
    py = 95
}
local tag_printer = {
    object_type = "Voucher",
	key = "tag_printer",
    atlas = "cry_tag_printer",
	pos = {x = 0, y = 0},
	loc_txt = {
        name = '四重印刷',
        text = {
			"双倍标签变为{C:attention}四倍标签",
            "且出现频率{C:attention}X3"
		}
    },
    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = {set = "Tag", key = "tag_double"}
        info_queue[#info_queue+1] = {set = "Tag", key = "tag_cry_quadruple", specific_vars = {3}}
        return {vars = {}}
    end,
    requires = {"v_cry_copies"}
}
local clone_machine_atlas = {
    object_type = "Atlas",
    key = "cry_clone_machine",
    path = "v_placeholder_t3.png",
    px = 71,
    py = 95
}
local clone_machine = {
    object_type = "Voucher",
	key = "clone_machine",
    atlas = "cry_clone_machine",
	pos = {x = 0, y = 0},
	loc_txt = {
        name = '克隆工厂',
        text = {
			"双倍标签变为{C:attention}五倍标签",
            "且出现频率{C:attention}X4"
		}
    },
    loc_vars = function(self, info_queue)
        info_queue[#info_queue+1] = {set = "Tag", key = "tag_double"}
        info_queue[#info_queue+1] = {set = "Tag", key = "tag_cry_quintuple", specific_vars = {4}}
        return {vars = {}}
    end,
    requires = {"v_cry_tag_printer"}
}
local command_prompt_atlas = {
    object_type = "Atlas",
    key = "cry_command_prompt",
    path = "v_commandprompt.png",
    px = 71,
    py = 95
}
local command_prompt = {
    object_type = "Voucher",
	key = "command_prompt",
    atlas = "cry_command_prompt",
	pos = {x = 0, y = 0},
	loc_txt = {
        name = 'Command Prompt',
        text = {
			"{C:attention}Code Cards{} can appear",
            "in {C:attention}shop{}"
		}
    },
    loc_vars = function(self, info_queue)
        return {vars = {}}
    end,
    redeem = function(self)
        G.E_MANAGER:add_event(Event({func = function()
            G.GAME.code_rate = 4
        return true end }))
    end
}
local satellite_uplink_atlas = {
    object_type = "Atlas",
    key = "cry_satellite_uplink",
    path = "v_satelliteuplink.png",
    px = 71,
    py = 95
}
local satellite_uplink = {
    object_type = "Voucher",
	key = "satellite_uplink",
    atlas = "cry_satellite_uplink",
	pos = {x = 0, y = 0},
	loc_txt = {
        name = 'Satellite Uplink',
        text = {
			"{C:attention}Code Cards{} count as",
            "in {C:planet}Planet Cards{}"
		}
    },
    loc_vars = function(self, info_queue)
        return {vars = {}}
    end,
    requires = {"v_cry_command_prompt"}
}
local quantum_computing_atlas = {
    object_type = "Atlas",
    key = "cry_quantum_computing",
    path = "v_quantumcomputing.png",
    px = 71,
    py = 95
}
local quantum_computing = {
    object_type = "Voucher",
	key = "quantum_computing",
    atlas = "cry_quantum_computing",
	pos = {x = 0, y = 0},
	loc_txt = {
        name = 'Quantum Computing',
        text = {
			"All {C:attention}Code Cards{}",
            "spawn as {C:dark_edition}Negative{}"
		}
    },
    loc_vars = function(self, info_queue)
        return {vars = {}}
    end,
    requires = {"v_cry_satellite_uplink"}
}
local triple = {
    object_type = "Tag",
    atlas = "tag_cry",
    pos = {x=0, y=1},
    config = {type = 'tag_add', num = 2},
    key = "triple",
    loc_txt = {
        name = "三倍标签",
        text = {
            "为下一个获得的{C:attention}标签",
            "额外生成{C:attention}#1#{}个复制品",
            "{s:0.8,C:inactive}复制型标签除外"
        }
    },
    loc_vars = function(self, info_queue)
        return {vars = {self.config.num}}
    end,
    apply = function(tag, context)
        if context.type == 'tag_add' and context.tag.key ~= 'tag_double' and context.tag.key ~= 'tag_cry_triple' and context.tag.key ~= 'tag_cry_quadruple' and context.tag.key ~= 'tag_cry_quintuple' and context.tag.key ~= 'tag_cry_memory' then
            local lock = tag.ID
            G.CONTROLLER.locks[lock] = true
            tag:yep('+', G.C.RED,function()
                if context.tag.ability and context.tag.ability.orbital_hand then
                    G.orbital_hand = context.tag.ability.orbital_hand
                end
                for i = 1, tag.config.num do
                    add_tag(Tag(context.tag.key))
                end
                G.orbital_hand = nil
                G.CONTROLLER.locks[lock] = nil
                return true
            end)
            tag.triggered = true
        end
        return true
    end,
    in_pool = function()
        return G.GAME.used_vouchers.v_cry_copies
    end
}
local quadruple = {
    object_type = "Tag",
    atlas = "tag_cry",
    pos = {x=1, y=1},
    config = {type = 'tag_add', num = 3},
    key = "quadruple",
    loc_txt = {
        name = "四倍标签",
        text = {
            "为下一个获得的{C:attention}标签",
            "额外生成{C:attention}#1#{}个复制品",
            "{s:0.8,C:inactive}复制型标签除外"
        }
    },
    loc_vars = function(self, info_queue)
        return {vars = {self.config.num}}
    end,
    apply = function(tag, context)
        if context.type == 'tag_add' and context.tag.key ~= 'tag_double' and context.tag.key ~= 'tag_cry_triple' and context.tag.key ~= 'tag_cry_quadruple' and context.tag.key ~= 'tag_cry_quintuple' and context.tag.key ~= 'tag_cry_memory' then
            local lock = tag.ID
            G.CONTROLLER.locks[lock] = true
            tag:yep('+', G.C.RED,function()
                if context.tag.ability and context.tag.ability.orbital_hand then
                    G.orbital_hand = context.tag.ability.orbital_hand
                end
                for i = 1, tag.config.num do
                    add_tag(Tag(context.tag.key))
                end
                G.orbital_hand = nil
                G.CONTROLLER.locks[lock] = nil
                return true
            end)
            tag.triggered = true
        end
        return true
    end,
    in_pool = function()
        return G.GAME.used_vouchers.v_cry_tag_printer
    end
}
local quintuple = {
    object_type = "Tag",
    atlas = "tag_cry",
    pos = {x=2, y=1},
    config = {type = 'tag_add', num = 4},
    key = "quintuple",
    loc_txt = {
        name = "五倍标签",
        text = {
            "为下一个获得的{C:attention}标签",
            "额外生成{C:attention}#1#{}个复制品",
            "{s:0.8,C:inactive}复制型标签除外"
        }
    },
    loc_vars = function(self, info_queue)
        return {vars = {self.config.num}}
    end,
    apply = function(tag, context)
        if context.type == 'tag_add' and context.tag.key ~= 'tag_double' and context.tag.key ~= 'tag_cry_triple' and context.tag.key ~= 'tag_cry_quadruple' and context.tag.key ~= 'tag_cry_quintuple' and context.tag.key ~= 'tag_cry_memory' then
            local lock = tag.ID
            G.CONTROLLER.locks[lock] = true
            tag:yep('+', G.C.RED,function()
                if context.tag.ability and context.tag.ability.orbital_hand then
                    G.orbital_hand = context.tag.ability.orbital_hand
                end
                for i = 1, tag.config.num do
                    add_tag(Tag(context.tag.key))
                end
                G.orbital_hand = nil
                G.CONTROLLER.locks[lock] = nil
                return true
            end)
            tag.triggered = true
        end
        return true
    end,
    in_pool = function()
        return G.GAME.used_vouchers.v_cry_clone_machine
    end
}
return {name = "Vouchers", 
        init = function()
            --Copies and upgrades
            local gcp = get_current_pool
            function get_current_pool(type, rarity, legendary, append, z)
                pool, pool_append = gcp(type, rarity, legendary, append, z)
                if type == 'Tag' then
                    for i = 1, #pool do
                        if pool[i] == "tag_double" and G.GAME.used_vouchers.v_cry_copies then
                            pool[i] = "tag_cry_triple"
                        end
                        if (pool[i] == "tag_double" or pool[i] == "tag_cry_triple") and G.GAME.used_vouchers.v_cry_tag_printer then
                            pool[i] = "tag_cry_quadruple"
                        end
                        if (pool[i] == "tag_double" or pool[i] == "tag_cry_triple" or pool[i] == "tag_cry_quadruple") and G.GAME.used_vouchers.v_cry_clone_machine then
                            pool[i] = "tag_cry_quintuple"
                        end
                    end
                elseif type == 'Planet' and G.GAME.used_vouchers.v_cry_satellite_uplink then
                    local new_pool = {}
                    for i, j in ipairs(pool) do
                        table.insert(new_pool, j)
                    end
                    local code_pool, q = gcp('Code', rarity, legendary, append, z)
                    for i, j in ipairs(code_pool) do
                        table.insert(new_pool, j)
                    end
                    pool = new_pool
                end
                return pool, pool_append
            end
            local tinit = Tag.init
            function Tag:init(tag, y, z)
                if tag == "tag_double" and G.GAME.used_vouchers.v_cry_copies then
                    tag = "tag_cry_triple"
                end
                if (tag == "tag_double" or tag == "tag_cry_triple") and G.GAME.used_vouchers.v_cry_tag_printer then
                    tag = "tag_cry_quadruple"
                end
                if (tag == "tag_double" or tag == "tag_cry_triple" or tag == "tag_cry_quadruple") and G.GAME.used_vouchers.v_cry_clone_machine then
                    tag = "tag_cry_quintuple"
                end
                return tinit(self,tag,y,z)
            end
        end,
        items = {copies_atlas, copies, tag_printer_atlas, tag_printer, clone_machine_atlas, clone_machine, triple, quadruple, quintuple, command_prompt_atlas, command_prompt, satellite_uplink_atlas, satellite_uplink, quantum_computing_atlas, quantum_computing}}