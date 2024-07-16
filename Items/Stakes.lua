local pink = {object_type = "Stake",
	name = "cry-Pink Stake",
	key = "pink",
	pos = {x = 0, y = 0},
    atlas = "stake",
    applied_stakes = {"gold"},
	loc_txt = {
        name = "粉注",
        text = {
        "{C:attention}底注{}提升时",
        "过关需求分数的涨幅更大",
        }
    },
    modifiers = function()
        G.GAME.modifiers.scaling = math.max(G.GAME.modifiers.scaling or 0, 4)
    end,
    color = HEX("ff5ee6")
}
local brown = {object_type = "Stake",
	name = "cry-Brown Stake",
	key = "brown",
	pos = {x = 1, y = 0},
    atlas = "stake",
    applied_stakes = {"cry_pink"},
    modifiers = function()
        G.GAME.modifiers.cry_eternal_perishable_compat = true
    end,
	loc_txt = {
        name = "棕注",
        text = {
        "所有{C:attention}标贴",
        "{C:inactive,s:0.8}（永恒、易腐等）",
        "均不互斥"
        }
    },
    color = HEX("883200")
}
local yellow = {object_type = "Stake",
	name = "cry-Yellow Stake",
	key = "yellow",
	pos = {x = 2, y = 0},
    atlas = "stake",
    applied_stakes = {"cry_brown"},
    modifiers = function()
        G.GAME.modifiers.cry_any_stickers = true
    end,
	loc_txt = {
        name = "黄注",
        text = {
        "所有可购买物品",
        "均可能附带{C:attention}标贴"
        }
    },
    color = HEX("f7ff1f")
}
local jade = {object_type = "Stake",
	name = "cry-Jade Stake",
	key = "jade",
	pos = {x = 3, y = 0},
    atlas = "stake",
    applied_stakes = {"cry_yellow"},
    modifiers = function()
        G.GAME.modifiers.flipped_cards = 20
    end,
	loc_txt = {
        name = "玉注",
        text = {
        "卡牌抽取时可能{C:attention}背面朝上",
        }
    },
    shiny = true,
    color = HEX("78953c")
}
local cyan = {object_type = "Stake",
	name = "cry-Cyan Stake",
	key = "cyan",
	pos = {x = 4, y = 0},
    atlas = "stake",
    applied_stakes = {"cry_jade"},
    modifiers = function()
        G.GAME.modifiers.cry_rarer_jokers = true
    end,
	loc_txt = {
        name = "青注",
        text = {
        "{C:green}罕见{}和{C:red}稀有{}小丑牌",
        "出现几率降低",
        }
    },
    color = HEX("39ffcc")
}
local gray = {object_type = "Stake",
	name = "cry-Gray Stake",
	key = "gray",
	pos = {x = 0, y = 1},
    atlas = "stake",
    applied_stakes = {"cry_cyan"},
    modifiers = function()
        G.GAME.modifiers.cry_reroll_scaling = 2
    end,
	loc_txt = {
        name = "灰注",
        text = {
        "重掷费用上涨{C:attention}$2"
        }
    },
    color = HEX("999999")
}
local crimson = {object_type = "Stake",
	name = "cry-Crimson Stake",
	key = "crimson",
	pos = {x = 1, y = 1},
    atlas = "stake",
    applied_stakes = {"cry_gray"},
    modifiers = function()
        G.GAME.modifiers.cry_voucher_restock_antes = 2
    end,
	loc_txt = {
        name = "深红注",
        text = {
        "奖券仅在{C:attention}偶数{}底注中刷新",
        }
    },
    color = HEX("800000")
}
local diamond = {object_type = "Stake",
	name = "cry-Diamond Stake",
	key = "diamond",
	pos = {x = 2, y = 1},
    atlas = "stake",
    applied_stakes = {"cry_crimson"},
    modifiers = function()
        G.GAME.win_ante = 10
    end,
	loc_txt = {
        name = "钻石注",
        text = {
        "赢下游戏需击败底注数提升至{C:attention}10",
        }
    },
    shiny = true,
    color = HEX("88e5d9")
}
local amber = {object_type = "Stake",
	name = "cry-Amber Stake",
	key = "amber",
	pos = {x = 3, y = 1},
    atlas = "stake",
    applied_stakes = {"cry_diamond"},
    modifiers = function()
        G.GAME.modifiers.cry_booster_packs = 1
    end,
	loc_txt = {
        name = "琥珀注",
        text = {
        "商店内补充包槽位{C:attention}-1",
        }
    },
    shiny = true,
    color = HEX("feb900")
}
local bronze = {object_type = "Stake",
	name = "cry-Bronze Stake",
	key = "bronze",
	pos = {x = 4, y = 1},
    atlas = "stake",
    applied_stakes = {"cry_amber"},
    modifiers = function()
        G.GAME.modifiers.cry_voucher_price_hike = 1.5
    end,
	loc_txt = {
        name = "青铜注",
        text = {
        "奖券售价上涨{C:attention}50%",
        }
    },
    shiny = true,
    color = HEX("d27c37")
}
local quartz = {object_type = "Stake",
	name = "cry-Quartz Stake",
	key = "quartz",
	pos = {x = 0, y = 2},
    atlas = "stake",
    applied_stakes = {"cry_bronze"},
    modifiers = function()
        G.GAME.modifiers.cry_enable_pinned_in_shop = true
    end,
	loc_txt = {
        name = "石英注",
        text = {
        "小丑牌可能遭到{C:attention}左极固定",
        "{s:0.8,C:inactive}（强制固定于最左侧）",
        }
    },
    shiny = true,
    color = HEX("e8e8e8")
}
local ruby = {object_type = "Stake",
	name = "cry-Ruby Stake",
	key = "ruby",
	pos = {x = 1, y = 2},
    atlas = "stake",
    applied_stakes = {"cry_quartz"},
    modifiers = function()
        G.GAME.modifiers.cry_big_boss_rate = 0.3
    end,
	loc_txt = {
        name = "红宝石注",
        text = {
        "{C:attention}大{}盲注可能被{C:attention}Boss{}盲注替代",
        }
    },
    shiny = true,
    color = HEX("fc5f55")
}
local glass = {object_type = "Stake",
	name = "cry-Glass Stake",
	key = "glass",
	pos = {x = 2, y = 2},
    atlas = "stake",
    applied_stakes = {"cry_ruby"},
    modifiers = function()
        G.GAME.modifiers.cry_shatter_rate = 30
    end,
	loc_txt = {
        name = "玻璃注",
        text = {
        "卡牌在计分后可能{C:attention}碎裂",
        }
    },
    shiny = true,
    color = HEX("ffffff")
}
local sapphire = {object_type = "Stake",
	name = "cry-Sapphire Stake",
	key = "sapphire",
	pos = {x = 3, y = 2},
    atlas = "stake",
    applied_stakes = {"cry_glass"},
    modifiers = function()
        G.GAME.modifiers.cry_ante_tax = 0.25
        G.GAME.modifiers.cry_ante_tax_max = 10
    end,
	loc_txt = {
        name = "蓝宝石注",
        text = {
        "底注结束时损失当前资金的{C:attention}25%",
        "{s:0.8,C:inactive}（至多损失$10）",
        }
    },
    shiny = true,
    color = HEX("3551fc")
}
local emerald = {object_type = "Stake",
	name = "cry-Emerald Stake",
	key = "emerald",
	pos = {x = 4, y = 2},
    atlas = "stake",
    applied_stakes = {"cry_sapphire"},
    modifiers = function()
        G.GAME.modifiers.cry_enable_flipped_in_shop = true
    end,
	loc_txt = {
        name = "绿宝石注",
        text = {
        "商店内的卡牌、补充包和奖券",
        "均有可能{C:attention}背面朝上",
        "{s:0.8,C:inactive}（购买前无法知悉商品信息）",
        }
    },
    shiny = true,
    color = HEX("06fc2c")
}
local platinum = {object_type = "Stake",
	name = "cry-Platinum Stake",
	key = "platinum",
	pos = {x = 0, y = 3},
    atlas = "stake",
    applied_stakes = {"cry_emerald"},
    modifiers = function()
        G.GAME.modifiers.cry_no_small_blind = true
        G.GAME.round_resets.blind_states['Small'] = 'Hide'
    end,
	loc_txt = {
        name = "铂注",
        text = {
        "{C:attention}没有{}小盲注",
        }
    },
    shiny = true,
    color = HEX("b0f6ff")
}
local twilight = {object_type = "Stake",
	name = "cry-Twilight Stake",
	key = "twilight",
	pos = {x = 1, y = 3},
    atlas = "stake",
    applied_stakes = {"cry_platinum"},
	loc_txt = {
        name = "Twilight Stake",
        text = {
        "Cards can be {C:attention}Banana{}",
        "{s:0.8,C:inactive}(1 in 10 chance of being destroyed each round){}",
        "{s:0.8,C:inactive}(Not yet implemented){}"
        }
    },
    shiny = true,
    color = HEX("ffffff") --temporary before gradients
}
local verdant = {object_type = "Stake",
	name = "cry-Verdant Stake",
	key = "verdant",
	pos = {x = 2, y = 3},
    atlas = "stake",
    applied_stakes = {"cry_twilight"},
	loc_txt = {
        name = "Verdant Stake",
        text = {
        "Required score scales",
        "faster for each {C:attention}Ante",
        "{s:0.8,C:inactive}(Not yet implemented){}",
        }
    },
    shiny = true,
    color = HEX("ffffff") --temporary before gradients
}
local ember = {object_type = "Stake",
	name = "cry-Ember Stake",
	key = "ember",
	pos = {x = 3, y = 3},
    atlas = "stake",
    applied_stakes = {"cry_verdant"},
	loc_txt = {
        name = "Ember Stake",
        text = {
        "All items have no sell value",
        "{s:0.8,C:inactive}(Not yet implemented){}",
        }
    },
    shiny = true,
    color = HEX("ffffff") --temporary before gradients
}
local dawn = {object_type = "Stake",
	name = "cry-Dawn Stake",
	key = "dawn",
	pos = {x = 4, y = 3},
    atlas = "stake",
    applied_stakes = {"cry_ember"},
	loc_txt = {
        name = "Dawn Stake",
        text = {
        "Tarots and Spectrals target {C:attention}1",
        "fewer card",
        "{s:0.8,C:inactive}(Minimum of 1){}",
        "{s:0.8,C:inactive}(Not yet implemented){}",
        }
    },
    shiny = true,
    color = HEX("ffffff") --temporary before gradients
}
local horizon = {object_type = "Stake",
	name = "cry-Horizon Stake",
	key = "horizon",
	pos = {x = 0, y = 4},
    atlas = "stake",
    applied_stakes = {"cry_dawn"},
	loc_txt = {
        name = "Horizon Stake",
        text = {
        "When blind selected, add a",
        "{C:attention}random card{} to deck",
        "{s:0.8,C:inactive}(Not yet implemented){}",
        }
    },
    shiny = true,
    color = HEX("ffffff") --temporary before gradients
}
local blossom = {object_type = "Stake",
	name = "cry-Blossom Stake",
	key = "blossom",
	pos = {x = 1, y = 4},
    atlas = "stake",
    applied_stakes = {"cry_horizon"},
	loc_txt = {
        name = "Blossom Stake",
        text = {
        "{C:attention}Final{} Boss Blinds can appear",
        "after Ante 1",
        "{s:0.8,C:inactive}(Not yet implemented){}",
        }
    },
    shiny = true,
    color = HEX("ffffff") --temporary before gradients
}
local azure = {object_type = "Stake",
	name = "cry-Azure Stake",
	key = "azure",
	pos = {x = 2, y = 4},
    atlas = "stake",
    applied_stakes = {"cry_blossom"},
	loc_txt = {
        name = "Azure Stake",
        text = {
        "Values on Jokers are reduced",
        "by {C:attention}20%{}",
        "{s:0.8,C:inactive}(Not yet implemented){}",
        }
    },
    shiny = true,
    color = HEX("ffffff") --temporary before gradients
}
local ascendant = {object_type = "Stake",
	name = "cry-Ascendant Stake",
	key = "ascendant",
	pos = {x = 3, y = 4},
    atlas = "stake",
    applied_stakes = {"cry_azure"},
	loc_txt = {
        name = "Ascendant Stake",
        text = {
        "{C:attention}-1{} Joker slot",
        "{s:0.8,C:inactive}(Not yet implemented){}",
        }
    },
    shiny = true,
    color = HEX("ffffff") --temporary before gradients
}
local stake_atlas = {object_type = "Atlas",
    key = "stake",
    
    path = "stake_cry.png",
    px = 29,
    py = 29
}
return {name = "More Stakes", 
        init = function(self)
            -- Ante scaling changes
            local gba = get_blind_amount
            function get_blind_amount(ante)
                local k = to_big(0.7)
                if G.GAME.modifiers.scaling == 4 then
                    local amounts = {
                        to_big(300),  to_big(1200), to_big(4000),  to_big(11000),  to_big(30000),  to_big(100000),  to_big(180000),  to_big(300000)
                    }
                    if ante < 1 then return to_big(100) end
                    if ante <= 8 then return amounts[ante] end
                    local a, b, c, d = amounts[8],1.6,ante-8, 1 + 0.2*(ante-8)
                    local amount = a*(b+(k*c)^d)^c
                    if type(amount) == 'table' then
                        if (amount:lt(R.MAX_SAFE_INTEGER)) then
                            local exponent = to_big(10)^(math.floor(amount:log10() - to_big(1))):to_number()
                            amount = math.floor(amount / exponent):to_number() * exponent
                        end
                        amount:normalize()
                    else
                      amount = amount - amount%(10^math.floor(math.log10(amount)-1))
                    end
                    return amount
                else return gba(ante)
                end
            end
            -- Disallow use of Debuffed Perishable consumables
            local cuc = Card.can_use_consumeable
            function Card:can_use_consumeable(any_state, skip_check)
                if self.ability.perishable and self.ability.perish_tally <= 0 then 
                    return false
                end
                return cuc(self, any_state, skip_check)
            end
            -- Overriding Steamodded's registering of Incantation/Familiar/Grim
            local function random_destroy(used_tarot)
                local destroyed_cards = {}
                local temp_hand = {}
                local hasHand = false
                for k, v in ipairs(G.hand.cards) do 
                    if not v.ability.eternal then
                        temp_hand[#temp_hand+1] = v
                        hasHand = true
                    end
                end
                if hasHand then destroyed_cards[#destroyed_cards + 1] = pseudorandom_element(temp_hand, pseudoseed('random_destroy')) end
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.4,
                    func = function()
                        play_sound('tarot1')
                        if used_tarot and used_tarot.juice_up then used_tarot:juice_up(0.3, 0.5) end
                        return true
                    end
                }))
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.1,
                    func = function()
                        for i = #destroyed_cards, 1, -1 do
                            local card = destroyed_cards[i]
                            if card.ability.name == 'Glass Card' then
                                card:shatter()
                            else
                                card:start_dissolve(nil, i ~= #destroyed_cards)
                            end
                        end
                        return true
                    end
                }))
                return destroyed_cards
            end
            SMODS.Consumable:take_ownership('grim', {
                use = function(self, card, area, copier)
                    local used_tarot = copier or card
                    local destroyed_cards = random_destroy(used_tarot)
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.7,
                        func = function()
                            local cards = {}
                            for i = 1, card.ability.extra do
                                cards[i] = true
                                local suit_list = {}
                                for i = #SMODS.Suit.obj_buffer, 1, -1 do
                                    suit_list[#suit_list + 1] = SMODS.Suit.obj_buffer[i]
                                end
                                local _suit, _rank =
                                    SMODS.Suits[pseudorandom_element(suit_list, pseudoseed('grim_create'))].card_key, 'A'
                                local cen_pool = {}
                                for k, v in pairs(G.P_CENTER_POOLS["Enhanced"]) do
                                    if v.key ~= 'm_stone' then
                                        cen_pool[#cen_pool + 1] = v
                                    end
                                end
                                create_playing_card({
                                    front = G.P_CARDS[_suit .. '_' .. _rank],
                                    center = pseudorandom_element(cen_pool, pseudoseed('spe_card'))
                                }, G.hand, nil, i ~= 1, { G.C.SECONDARY_SET.Spectral })
                            end
                            playing_card_joker_effects(cards)
                            return true
                        end
                    }))
                    delay(0.3)
                    for i = 1, #G.jokers.cards do
                        G.jokers.cards[i]:calculate_joker({ remove_playing_cards = true, removed = destroyed_cards })
                    end
                end,
            })
            SMODS.Consumable:take_ownership('familiar', {
                use = function(self, card, area, copier)
                    local used_tarot = copier or card
                    local destroyed_cards = random_destroy(used_tarot)
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.7,
                        func = function()
                            local cards = {}
                            for i = 1, card.ability.extra do
                                cards[i] = true
                                local suit_list = {}
                                for i = #SMODS.Suit.obj_buffer, 1, -1 do
                                    suit_list[#suit_list + 1] = SMODS.Suit.obj_buffer[i]
                                end
                                local faces = {}
                                for _, v in ipairs(SMODS.Rank.obj_buffer) do
                                    local r = SMODS.Ranks[v]
                                    if r.face then table.insert(faces, r.card_key) end
                                end
                                local _suit, _rank =
                                    SMODS.Suits[pseudorandom_element(suit_list, pseudoseed('familiar_create'))].card_key,
                                    pseudorandom_element(faces, pseudoseed('familiar_create'))
                                local cen_pool = {}
                                for k, v in pairs(G.P_CENTER_POOLS["Enhanced"]) do
                                    if v.key ~= 'm_stone' then
                                        cen_pool[#cen_pool + 1] = v
                                    end
                                end
                                create_playing_card({
                                    front = G.P_CARDS[_suit .. '_' .. _rank],
                                    center = pseudorandom_element(cen_pool, pseudoseed('spe_card'))
                                }, G.hand, nil, i ~= 1, { G.C.SECONDARY_SET.Spectral })
                            end
                            playing_card_joker_effects(cards)
                            return true
                        end
                    }))
                    delay(0.3)
                    for i = 1, #G.jokers.cards do
                        G.jokers.cards[i]:calculate_joker({ remove_playing_cards = true, removed = destroyed_cards })
                    end
                end,
            })
            SMODS.Consumable:take_ownership('incantation', {
                use = function(self, card, area, copier)
                    local used_tarot = copier or card
                    local destroyed_cards = random_destroy(used_tarot)
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.7,
                        func = function()
                            local cards = {}
                            for i = 1, card.ability.extra do
                                cards[i] = true
                                local suit_list = {}
                                for i = #SMODS.Suit.obj_buffer, 1, -1 do
                                    suit_list[#suit_list + 1] = SMODS.Suit.obj_buffer[i]
                                end
                                local numbers = {}
                                for _RELEASE_MODE, v in ipairs(SMODS.Rank.obj_buffer) do
                                    local r = SMODS.Ranks[v]
                                    if v ~= 'Ace' and not r.face then table.insert(numbers, r.card_key) end
                                end
                                local _suit, _rank =
                                    SMODS.Suits[pseudorandom_element(suit_list, pseudoseed('incantation_create'))].card_key,
                                    pseudorandom_element(numbers, pseudoseed('incantation_create'))
                                local cen_pool = {}
                                for k, v in pairs(G.P_CENTER_POOLS["Enhanced"]) do
                                    if v.key ~= 'm_stone' then
                                        cen_pool[#cen_pool + 1] = v
                                    end
                                end
                                create_playing_card({
                                    front = G.P_CARDS[_suit .. '_' .. _rank],
                                    center = pseudorandom_element(cen_pool, pseudoseed('spe_card'))
                                }, G.hand, nil, i ~= 1, { G.C.SECONDARY_SET.Spectral })
                            end
                            playing_card_joker_effects(cards)
                            return true
                        end
                    }))
                    delay(0.3)
                    for i = 1, #G.jokers.cards do
                        G.jokers.cards[i]:calculate_joker({ remove_playing_cards = true, removed = destroyed_cards })
                    end
                end,
            })
            
            -- This is short enough that I'm fine overriding it
            function calculate_reroll_cost(skip_increment)
                if G.GAME.current_round.free_rerolls < 0 then G.GAME.current_round.free_rerolls = 0 end
                if G.GAME.current_round.free_rerolls > 0 then G.GAME.current_round.reroll_cost = 0; return end
                G.GAME.current_round.reroll_cost_increase = G.GAME.current_round.reroll_cost_increase or 0
                if not skip_increment then G.GAME.current_round.reroll_cost_increase = G.GAME.current_round.reroll_cost_increase + (G.GAME.modifiers.cry_reroll_scaling or 1) end
                G.GAME.current_round.reroll_cost = (G.GAME.round_resets.temp_reroll_cost or G.GAME.round_resets.reroll_cost) + G.GAME.current_round.reroll_cost_increase
            end
            
            local sc = Card.set_cost
            function Card:set_cost()
                sc(self)
                if self.ability.set == 'Voucher' and G.GAME.modifiers.cry_voucher_price_hike then
                    self.cost = math.floor(self.cost * G.GAME.modifiers.cry_voucher_price_hike)
                    --Update related costs
                    self.sell_cost = math.max(1, math.floor(self.cost/2)) + (self.ability.extra_value or 0)
                    if self.area and self.ability.couponed and (self.area == G.shop_jokers or self.area == G.shop_booster) then self.cost = 0 end
                    self.sell_cost_label = self.facing == 'back' and '?' or self.sell_cost
                end
            end

            for _, v in pairs(self.items) do
                if v.object_type == "Stake" then
                    v.sticker_pos = v.pos
                    v.sticker_atlas = "sticker"
                    local words = {}
                    if string.find(v.loc_txt.name, "注") then
                        words[1] = v.loc_txt.name
                    else
                        words[1], words[2] = v.loc_txt.name:match("(%w+)(.+)")
                    end
                    local stakeName = words[1]
                    v.loc_txt = {description = v.loc_txt}
                    v.loc_txt.sticker = {
                        name = stakeName.."纪念贴",
                        text = {
                            "使用本牌",
                            "赢得了{C:attention}"..stakeName
                        }
                    }
                end
            end
        end,
        items = {stake_atlas, pink, brown, yellow, jade, cyan, gray, crimson, diamond,
        amber, bronze, quartz, ruby, glass, sapphire, emerald, platinum,
        twilight, verdant, ember, dawn, horizon, blossom, azure, ascendant}}