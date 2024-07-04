local very_fair = {
    object_type = "Back",
    name = "Very Fair Deck",
    key = "very_fair",
	config = {hands = -2, discards = -2, cry_no_vouchers = true},
	pos = {x = 0, y = 0},
	loc_txt = {
        name = "很合理的牌组",
        text = {
            "每回合出牌和弃牌次数各{C:red}-2",
            "商店内不再出现{C:attention}奖券"
        }
    },
    --[[loc_vars = function(self, info_queue, center)
        return {vars = {center.effect.config.hands, center.effect.config.discards}}
    end,--]] --this doesn't work, will fix later
    atlas = "very_fair"
}

-- Thanks to many members of the community for contributing to all of these quips!
-- There's too many to credit so just go here: https://discord.com/channels/1116389027176787968/1209506360987877408/1237971471146553406
-- And here: https://discord.com/channels/1116389027176787968/1219749193204371456/1240468252325318667
very_fair_quips = {
    {"烂！", "要奖券？没门！", ""},
    {"把奖券给你这种垃圾啊？", "又开始想屁吃了", ""},
    {"别做梦了！", "没奖券卖！", "去美团领外卖券去吧！"},
    {"菜就多练行不行？", "奖券白送你你都赢不了", ""},
    {"金宝忘进货了，", "不好意思哈", ""},
    {"哦哟！", "没奖券", ""},
    {"你活像个沙口", "看你*呢看？", "笑嘻了"},
    {"奖券昨晚出去喝酒了", "一宿没回来", "你要不去外面找找吧"},
    {"$0", "空白奖券", "（懂？）"},
    {"ERROR", "CANNOT DO ARITHMETIC ON A NIL VALUE", "(tier4vouchers.lua)"},
    {"全场奖券", "全部白送", "（已售罄）"},
    {"改日再来吧", "提一嘴：改日再来", "你也买不起"},
    {"啊？", "蒋劝？谁啊？", "没听过不认识"},
    {"首先告诉大家一个技巧", "英文输入法下长按R键", "可以刷新奖券！"},
    {"你知道吗？", "按下ALT+F4", "可免费领取奖券一张！"},
    {"十分抱歉", "本年度预算不足", "故无奖券供应"},
    {"请拨打1-600-JIMBO", "对奖券使用体验评分", "期待您的宝贵建议"},
    {"通关底注39", "即可刷新奖券", ""},
    {"给你变个魔术", "看，奖券没了吧？", "我变没的"},
    {"奖券长啥样啊？", "能拿来搓澡吗？", ""},
    {"把您的奖券", "留给更需要它的赛局吧", ""},
    {"冷知识：",
    "骆驼和鲨鱼永远不能相见", "所以为啥要管它叫奖券呢？"},
    {"对不起", "奖券找妈妈去了", ""},
    {"很不幸", "作者本来要重制奖券内容的", "现在他不想做了"},
    {"击败BOSS盲注", "意味着", "BOSS盲注被你击败了"},
    {"你站在桥上看风景", "看风景人在楼上看你", "看你个小丑搁这儿找奖券"},
    {"我们非常抱歉地通知您", "所有奖券由于沙门氏菌超标", "现已全部召回"},
    {"VOUCHERS COULDN'T ARRIVE", "DUE TO SHOP LAYOUT BEING", "200% OVERBUDGET"},
    {"YOU LIKE", "BUYING VOUCHERS, DON'T YOU", "YOU'RE A VOUCHERBUYER"},
    {"VOUCHERS", "!E", "VOUCHER POOL"},
    {"THERE", "IS NO", "VOUCHER"},
    {"THERE IS", "NO SANTA", "AND THERE ARE NO VOUCHERS"},
    {"", "VOUCHERN'T", ""},
    {"YOU", "JUST LOST", "THE GAME"},
    {"CAN I OFFER YOU", "A NICE EGG", "IN THESE TRYING TIMES?"},
    {"GO TOUCH GRASS", "INSTEAD OF USING", "THIS DECK"},
    {"YOU COULD BE", "PLAYING ON BLUE DECK", "RIGHT NOW"},
    {"FREE EXOTICS", "GET THEM BEFORE ITS", "TOO LATE (sold out)"},
    {"PROVE THEM WRONG", "BUY BUYING AN INVISIBLE", "VOUCHER FOR $10"},
    {"", "no vouchers?", ""},
    {"see this ad?", "if you are, then it's working", "and you could have it for your own"},
    {"YOU'RE MISSING OUT ON", "AT LEAST 5 VOUCHERS RIGHT NOW", "tonktonktonktonktonk"},
    {"10", "20 NO VOUCHER XD", "30 GOTO 10"},
    {"VOUCHERS", "ARE A PREMIUM FEATURE", "$199.99 JOLLARS TO UNLOCK"},
    {"TRUE VOUCHERLESS!?!?", "ASCENDANT STAKE ONLY", "VERY FAIR DECK"},
    {"ENJOYING YOUR", "VOUCHER EXPERIENCE? GIVE US A", "FIVE STAR RATING ON JESTELP"},
    {"FREE VOUCHERS", "HOT VOUCHERS NEAR YOU", "GET VOUCHERS QUICK WITH THIS ONE TRICK"},
    {"INTRODUCING", "THE VERY FIRST TIER 0 VOUCHER!", "(coming to Cryptid 1.0 soon)"},
    {"A VOUCHER!", "IT'S JUST IMAGINARY", "WE IMAGINED YOU WOULD WANT IT, THAT IS"},
    {"TURN OFF ADBLOCKER", "WITHOUT ADS, WE WOULDN'T", "BE ABLE TO SELL YOU VOUCHERS"},
    {"IF YOU HAVE", "A PROBLEM WITH THIS", "EMAIL IT TO US AT NORESPONSE@JMAIL.COM"},
    {"NOT ENOUGH MONEY", "TO BUY THIS VOUCHER", "SO WHY WOULD WE PUT IT HERE?"},
    {"WANT A VOUCHER?", "WELL SHUT UP", "YOU CAN'T HAVE ANY LOL"},
    {"^$%& NO", "VOUCHERS ^%&% %&$^% FOR", "$%&%%$ %&$&*%$^ YOU"},
    {"A VOUCHER (TRUST)", "|\\/|", "|/\\|"},
    {"... --- ...", ".--. .-.. .- -.-- . .-. -.. . -.-. --- -.. . -.. -- --- .-. ... .", "-.-. --- -.. . - --- ..-. .. -. -.. .- ...- --- ..- -.-. .... . .-."},
    {"盯着这里使劲看", "看了两个小时半", "没有奖券真完蛋"},
    {"WE'RE VERY SORRY", "THE LAST GUY PANIC BOUGHT", "ALL THE VOUCHERS"},
    {"喜提0张奖券感觉如何？", "微商女强人的100条经验之谈", "点击“跳过”立即阅读"},
    {"JIMBO GOT A NAT 1", "AND DUMPED ALL THE", "VOUCHERS IN A DITCH"},
    {"ATTEMPT TO INDEX", "FIELD 'VOUCHER'", "(A NIL VALUE)"},
    {"OH YOU REALLY THOUGHT THAT READING ALL THESE LINES WOULD BRING YOUR VOUCHERS BACK?", "SORRY TO TELL YOU, BUT THIS DECK DOESN'T CONTAIN THE VOUCHERS YOU SEEK.", "THIS ABNORMALLY LONG TEXT IS HERE AND DESIGNED TO WASTE YOUR TIME AND EFFORT WHILE YOU READ IT."},
    {"GO TO", "https://youtu.be/p7YXXieghto", "FOR FREE VOUCHERS"}
}
very_fair_quip = {}

local very_fair_sprite = {
    object_type = "Atlas",
    key = "very_fair",
    
    path = "b_cry_very_fair.png",
    px = 71,
    py = 95
}

local equilibrium = {
    object_type = "Back",
    name = "cry-Equilibrium",
    key = "equilibrium",
	config = {vouchers = {'v_overstock_norm','v_overstock_plus'}, cry_equilibrium = true},
	pos = {x = 0, y = 0},
	loc_txt = {
        name = "Deck of Equilibrium",
        text = {
            "All cards have the",
            "{C:attention}same chance{} of",
            "appearing in shops,",
            "start run with",
            "{C:attention,T:v_overstock_plus}Overstock Plus"
        }
    },
    atlas = "equilibrium"
}
local equilibrium_sprite = {
    object_type = "Atlas",
    key = "equilibrium",
    path = "b_cry_equilibrium.png",
    px = 71,
    py = 95
}
local misprint = {
    object_type = "Back",
    name = "cry-Misprint",
    key = "misprint",
	config = {cry_misprint_min = 0.1, cry_misprint_max = 10},
	pos = {x = 0, y = 0},
	loc_txt = {
        name = "Misprint Deck",
        text = {
            "Values of cards",
            "and poker hands",
            "are {C:attention}randomized"
        }
    },
    atlas = "misprint"
}
local misprint_sprite = {
    object_type = "Atlas",
    key = "misprint",
    path = "b_cry_misprint.png",
    px = 71,
    py = 95
}
local infinite = {
    object_type = "Back",
    name = "cry-Infinite",
    key = "infinite",
	config = {cry_highlight_limit = 1e20},
	pos = {x = 0, y = 0},
    atlas = "infinite",
	loc_txt = {
        name = "Infinite Deck",
        text = {
            "You can select {C:attention}any",
            "number of cards"
        }
    },
}
local infinite_sprite = {
    object_type = "Atlas",
    key = "infinite",
    path = "b_cry_infinite.png",
    px = 71,
    py = 95
}
local conveyor = {
    object_type = "Back",
    name = "cry-Conveyor",
    key = "conveyor",
    config = {cry_conveyor = true},
    pos = {x = 0, y = 0},
    atlas = "conveyor",
    loc_txt = {
        name = "Conveyor Deck",
        text = {
            "Jokers may {C:attention}not{} be moved",
            "At start of round,",
            "{C:attention}duplicate{} rightmost Joker",
            "and {C:attention}destroy{} leftmost Joker"
        }
    }
}
local conveyor_sprite = {
    object_type = "Atlas",
    key = "conveyor",
    path = "b_cry_conveyor.png",
    px = 71,
    py = 95
}
local CCD = {
    object_type = "Back",
    name = "cry-CCD",
    key = "CCD",
    config = {cry_ccd = true},
    pos = {x = 0, y = 0},
    atlas = "CCD",
    loc_txt = {
        name = "CCD Deck",
        text = {
            "Every card is also",
            "a {C:attention}random{} consumable"
        }
    }
}
local ccd_sprite = {
    object_type = "Atlas",
    key = "CCD",
    path = "b_cry_ccd.png",
    px = 71,
    py = 95
}
return {name = "Misc. Decks",
        init = function()
            local Backapply_to_runRef = Back.apply_to_run
            function Back.apply_to_run(self)
                Backapply_to_runRef(self)
                if self.effect.config.cry_no_vouchers then 
                    G.GAME.modifiers.cry_no_vouchers = true
                end
                if self.effect.config.cry_equilibrium then 
                    G.GAME.modifiers.cry_equilibrium = true
                end
                if self.effect.config.cry_conveyor then 
                    G.GAME.modifiers.cry_conveyor = true
                end
                if self.effect.config.cry_misprint_min then
                    G.GAME.modifiers.cry_misprint_min = self.effect.config.cry_misprint_min
                    G.GAME.modifiers.cry_misprint_max = self.effect.config.cry_misprint_max
                end
                if self.effect.config.cry_highlight_limit then
                    G.GAME.modifiers.cry_highlight_limit = self.effect.config.cry_highlight_limit
                end
                if self.effect.config.cry_ccd then
                    G.GAME.modifiers.cry_ccd = true
                end
            end
            --equilibrium deck patches
            local gcp = get_current_pool
            function get_current_pool(t, r, l, a, override_equilibrium_effect)
                if G.GAME.modifiers.cry_equilibrium and not override_equilibrium_effect and (a == 'sho' or t == 'Voucher' or t == 'Booster') then 
                    if t ~= "Enhanced" and t ~= "Edition" and t ~= "Back" and t ~= "Tag" and t ~= "Seal" and t ~= "Stake" then
                        if not P_CRY_ITEMS then
                            P_CRY_ITEMS = {}
                            local valid_pools = {"Joker", "Consumeables", "Voucher", "Booster"}
                            for _, id in ipairs(valid_pools) do
                                for k, v in pairs(G.P_CENTER_POOLS[id]) do
                                    P_CRY_ITEMS[#P_CRY_ITEMS+1] = v.key
                                end
                            end
                            for k, v in pairs(G.P_CARDS) do
                                P_CRY_ITEMS[#P_CRY_ITEMS+1] = v.key
                            end
                        end
                        return P_CRY_ITEMS, "cry_equilibrium"..G.GAME.round_resets.ante
                    end
                end
                return gcp(t,r,l,a)
            end
            local gp = get_pack
            function get_pack(k, t)
                if G.GAME.modifiers.cry_equilibrium then
                    if not P_CRY_ITEMS then
                        P_CRY_ITEMS = {}
                        local valid_pools = {"Joker", "Consumeables", "Voucher", "Booster"}
                        for _, id in ipairs(valid_pools) do
                            for k, v in pairs(G.P_CENTER_POOLS[id]) do
                                P_CRY_ITEMS[#P_CRY_ITEMS+1] = v.key
                            end
                        end
                        for k, v in pairs(G.P_CARDS) do
                            P_CRY_ITEMS[#P_CRY_ITEMS+1] = v.key
                        end
                    end
                    return G.P_CENTERS[pseudorandom_element(P_CRY_ITEMS,pseudoseed('cry_equipackbrium'..G.GAME.round_resets.ante))]
                end
                return gp(k,t)
            end
            --Misprint Deck patches
            function cry_log_random(seed,min,max)
                math.randomseed(seed)
                local lmin = math.log(min,2.718281828459045)
                local lmax = math.log(max,2.718281828459045)
                local poll = math.random()*(lmax-lmin)+lmin
                return math.exp(poll)
            end
        end,
        items = {very_fair_sprite, equilibrium_sprite, misprint_sprite, infinite_sprite, conveyor_sprite, ccd_sprite, 
        very_fair, equilibrium, misprint, infinite, conveyor, CCD}}
