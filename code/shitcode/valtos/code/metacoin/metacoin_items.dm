
/datum/metacoin_shop_item
	var/name = ""
	var/cost = 0
	var/id = ""
	var/enabled = FALSE

	//shat for icons
	var/icon
	var/icon_state
	var/icon_dir = 2

/datum/metacoin_shop_item/proc/buy(client/C)
	if (!SSdbcore.IsConnected())
		to_chat(C, "<span class='rose bold'>ОШИБОЧКА! Попробуй ещё раз!</span>")
		return
	var/metacoins = C.get_metabalance()
	if (metacoins < cost)
		to_chat(C, "<span class='rose bold'>Не хватает средст для покупки [name]!</span>")
		return
	C.inc_metabalance(-cost, reason="Shop purchase.")
	after_buy(C)
	to_chat(C, "<span class='rose bold'>Покупаю [name] за [cost] метакоинов!</span>")

/datum/metacoin_shop_item/proc/after_buy(client/C)
	//giving them the item they bought

/datum/metacoin_shop_item/proc/get_icon(client/C) //getting the icon for the shop
	return icon2html(icon, C, icon_state, icon_dir)

/datum/metacoin_shop_item/rjaka
	name = "ржака"
	cost = 50
	id = "rjaka"
	enabled = FALSE

/datum/metacoin_shop_item/rjaka/after_buy(client/C)
	to_chat(C, "<span class='notice'>Произошла ржака!</span>")
	playsound(src,'code/shitcode/hule/SFX/rjach.ogg', 200, 7, pressure_affected = FALSE)

/datum/metacoin_shop_item/only_one //you can only buy this item once
	name = "only one"
	cost = 0 //gl with that one
	enabled = FALSE
	var/class //used for classifying different types of items, like wings, hair, undershirts, etc


/datum/metacoin_shop_item/only_one/buy(client/C)
	C.update_metacoin_items()
	if(id in C.metacoin_items)
		return
	..()

/datum/metacoin_shop_item/only_one/after_buy(client/C)
	var/datum/DBQuery/query_metacoin_item_purchase = SSdbcore.NewQuery("INSERT INTO [format_table_name("metacoin_item_purchases")] (ckey, purchase_date, item_id, item_class) VALUES ('[C.ckey]', Now(), '[id]', '[class]')")
	query_metacoin_item_purchase.warn_execute()
	qdel(query_metacoin_item_purchase)
	C.update_metacoin_items()
