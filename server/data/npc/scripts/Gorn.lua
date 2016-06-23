dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'torch'}, 					ID_torch, 2)
shopModule:addBuyableItem({'bag'}, 					ID_bag, 5)
shopModule:addBuyableItem({'backpack'}, 					ID_backpack, 20)
shopModule:addBuyableItem({'present'}, 					ID_present, 10)
shopModule:addBuyableItem({'scroll'}, 					ID_scroll, 5)
shopModule:addBuyableItem({'document'}, 					ID_document, 12)
shopModule:addBuyableItem({'parchment'}, 					ID_parchment, 8)
shopModule:addBuyableItem({'brown book'}, 					ID_brownbook, 15)
shopModule:addBuyableItem({'black book'}, 					ID_blackbook, 15)
shopModule:addBuyableItem({'small book'}, 					ID_smallbook, 15)
shopModule:addBuyableItem({'bucket'}, 					ID_bucket, 4, 0)
shopModule:addBuyableItem({'bottle'}, 					ID_bottle, 3, 0)
shopModule:addBuyableItem({'mug'}, 					ID_mug, 4, 0)
shopModule:addBuyableItem({'cup'}, 					ID_cup, 2, 0)
shopModule:addBuyableItem({'jug'}, 					ID_jug, 10, 0)
shopModule:addBuyableItem({'plate'}, 					ID_plate, 6, 0)
shopModule:addBuyableItem({'watch'}, 					ID_watch, 20)
shopModule:addBuyableItem({'football'}, 					ID_football, 111)
shopModule:addBuyableItem({'rope'}, 					ID_rope, 50)
shopModule:addBuyableItem({'machete'}, 					ID_machete, 40)
shopModule:addBuyableItem({'scythe'}, 					ID_scythe, 50)
shopModule:addBuyableItem({'pick'}, 					ID_pick, 50)
shopModule:addBuyableItem({'shovel'}, 					ID_shovel, 50)
shopModule:addBuyableItem({'rod'}, 					ID_fishingrod, 150, 0, 'fishing rod')
shopModule:addBuyableItem({'worm'}, 					ID_worm, 1, 0, 'worms')

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling equipment of all kinds. Do you need anything?"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Gorn. My goods are known all over Tibia."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you are looking for food, go to Frodo's Hut."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king supports Tibia's economy a lot."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king supports Tibia's economy a lot."})
keywordHandler:addKeyword({'quentin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He advices newcomers to buy at my store. I love that guy!"})
keywordHandler:addKeyword({'lynda'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's a pretty one."})
keywordHandler:addKeyword({'harkath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hardly know him."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Armies are too hierarchical for my taste."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We had a clash or two in the old days."})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't like titles."})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Strong as an ox, could armwrestle a minotaur, I bet."})
keywordHandler:addKeyword({'frodo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Frodo is a jolly fellow."})
keywordHandler:addKeyword({'elaine'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elane is the leader of the paladin guild."})
keywordHandler:addKeyword({'paladin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elane is the leader of the paladin guild."})
keywordHandler:addKeyword({'muriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can find Muriel in the sorcerer guild."})
keywordHandler:addKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can find Muriel in the sorcerer guild."})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even the strong knights need my equipment on their travels though Tibia."})
keywordHandler:addKeyword({'knight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even the strong knights need my equipment on their travels though Tibia."})
keywordHandler:addKeyword({'marvik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These druids are nice people, you will find them in the east of the town."})
keywordHandler:addKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These druids are nice people, you will find them in the east of the town."})
keywordHandler:addKeyword({'bozo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah! Go away with this bozoguy."})
keywordHandler:addKeyword({'baxter'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Old Baxter was a rowdy, once. In our youth we shared some adventures and women."})
keywordHandler:addKeyword({'oswald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This Oswald has not enough to work and too much time to spread rumours."})
keywordHandler:addKeyword({'sherry'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hardly know the McRonalds."})
keywordHandler:addKeyword({'donald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hardly know the McRonalds."})
keywordHandler:addKeyword({'mcronald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hardly know the McRonalds."})
keywordHandler:addKeyword({'lurgi'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Never heared that name."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would pay thousands of gold coins for this weapon."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Taxes will increase soon, so buy as much as you can right now."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My inventory is large, just have a look at the blackboards."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My inventory is large, just have a look at the blackboards."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My inventory is large, just have a look at the blackboards."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My inventory is large, just have a look at the blackboards."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My inventory is large, just have a look at the blackboards."})
keywordHandler:addKeyword({'ammunition'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Galuna sells them now in her own shop. Go and ask her about that."})
keywordHandler:addKeyword({'crossbow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Galuna sells them now in her own shop. Go and ask her about that."})
keywordHandler:addKeyword({'bow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Galuna sells them now in her own shop. Go and ask her about that."})
keywordHandler:addKeyword({'arrow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Galuna sells them now in her own shop. Go and ask her about that."})
keywordHandler:addKeyword({'bolt'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Galuna sells them now in her own shop. Go and ask her about that."})
keywordHandler:addKeyword({'galuna'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In the past she delivered me with all the bows and arrows. She has now her own shop at the paladin guild."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Magic? Ask a sorcerer or druid about that."})
keywordHandler:addKeyword({'fluid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Find the magic shop."})
keywordHandler:addKeyword({'xodet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He owns the magic shop here. But be aware: The prices are enormous."})
keywordHandler:addKeyword({'book'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I offer different kind of books: brown, black and small books. Which book do you want?"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is exactly |TIME|. Maybe you want to buy a watch?"})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())