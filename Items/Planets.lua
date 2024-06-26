function HandLoc(t)
    local o = {}
    for _, v in ipairs(t) do
        table.insert(o, G.localization.misc['poker_hands'][v])
    end
    return o
end

local timantti = {
    object_type = "Consumable",
    set = "Planet",
    name = "cry-Timantti",
    key = "Timantti",
    pos = {x=0,y=0},
    config = {hand_types = {'High Card', 'Pair', 'Two Pair'}},
    loc_txt = {
        name = '方片·提曼蒂',
        text = {
            "升级{C:attention}#1#{}、{C:attention}#2#{}、{C:attention}#3#"
        }
    },
    cost = 4,
    discovered = true,
    atlas = "c_suits",
    can_use = function(self, card)
        return true
    end,
    loc_vars = function(self, info_queue, center)
        return {vars = HandLoc(self.config.hand_types)}
    end,
    use = function(self, card, area, copier)
        suit_level_up(self, card, area, copier)
    end,
    bulk_use = function(self, card, area, copier, number)
        suit_level_up(self, card, area, copier, number)
    end
}
local klubi = {
    object_type = "Consumable",
    set = "Planet",
    name = "cry-Klubi",
    key = "Klubi",
    pos = {x=1,y=0},
    config = {hand_types = {'Three of a Kind', 'Straight', 'Flush'}},
    loc_txt = {
        name = '梅花·克鲁比',
        text = {
            "升级{C:attention}#1#{}、{C:attention}#2#{}、{C:attention}#3#"
        }
    },
    cost = 4,
    discovered = true,
    atlas = "c_suits",
    can_use = function(self, card)
        return true
    end,
    loc_vars = function(self, info_queue, center)
        return {vars = HandLoc(self.config.hand_types)}
    end,
    use = function(self, card, area, copier)
        suit_level_up(self, card, area, copier)
    end,
    bulk_use = function(self, card, area, copier, number)
        suit_level_up(self, card, area, copier, number)
    end
}
local sydan = {
    object_type = "Consumable",
    set = "Planet",
    name = "cry-Sydan",
    key = "Sydan",
    pos = {x=2,y=0},
    config = {hand_types = {'Four of a Kind', 'Straight Flush', 'Full House'}},
    loc_txt = {
        name = '红桃·苏旦',
        text = {
            "升级{C:attention}#1#{}、{C:attention}#2#{}、{C:attention}#3#"
        }
    },
    cost = 4,
    discovered = true,
    atlas = "c_suits",
    can_use = function(self, card)
        return true
    end,
    loc_vars = function(self, info_queue, center)
        return {vars = HandLoc(self.config.hand_types)}
    end,
    use = function(self, card, area, copier)
        suit_level_up(self, card, area, copier)
    end,
    bulk_use = function(self, card, area, copier, number)
        suit_level_up(self, card, area, copier, number)
    end
}
local lapio = {
    object_type = "Consumable",
    set = "Planet",
    name = "cry-Lapio",
    key = "Lapio",
    pos = {x=3,y=0},
    config = {hand_types = {'Five of a Kind', 'Flush House', 'Flush Five'}, softlock = true},
    loc_txt = {
        name = '黑桃·拉匹奥',
        text = {
            "升级{C:attention}#1#{}、{C:attention}#2#{}、{C:attention}#3#"
        }
    },
    cost = 4,
    discovered = true,
    atlas = "c_suits",
    can_use = function(self, card)
        return true
    end,
    loc_vars = function(self, info_queue, center)
        return {vars = HandLoc(self.config.hand_types)}
    end,
    use = function(self, card, area, copier)
        suit_level_up(self, card, area, copier)
    end,
    bulk_use = function(self, card, area, copier, number)
        suit_level_up(self, card, area, copier, number)
    end
}

function suit_level_up(center, card, area, copier, number)
    for _, v in pairs(card.config.center.config.hand_types) do
        update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(v, 'poker_hands'),chips = G.GAME.hands[v].chips, mult = G.GAME.hands[v].mult, level=G.GAME.hands[v].level})
        level_up_hand(card, v, nil, number)
        update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
    end
end

local suits_sprite = {
	object_type = "Atlas",
    key = "c_suits",
    path = "c_cry_suits.png",
    px = 71,
    py = 95
}

return {name = "Planets", 
        init = function()
            
        end,
        items = {suits_sprite, sydan, klubi, lapio, timantti}}