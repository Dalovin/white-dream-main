/obj/item/clothing/under/rank/omon
	name = "omon jumpsuit"
	desc = "A tactical security jumpsuit for Russian officers."
	alternate_worn_icon = 'code/shitcode/valtos/icons/clothing/uniform.dmi'
	icon = 'code/shitcode/valtos/icons/clothing/uniforms.dmi'
	icon_state = "omon"
	item_state = "b_suit"
	item_color = "omon"
	armor = list("melee" = 15, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 30)
	strip_delay = 50
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
	can_adjust = FALSE

/obj/item/clothing/under/rank/omon/green
	icon_state = "omon-2"
	item_state = "g_suit"
	item_color = "omon-2"


/obj/item/clothing/suit/armor/riot/omon
	name = "omon riot suit"
	desc = "Designed for effective extermination."
	alternate_worn_icon = 'code/shitcode/valtos/icons/clothing/suit.dmi'
	icon = 'code/shitcode/valtos/icons/clothing/suits.dmi'
	icon_state = "omon_riot"

/obj/item/clothing/suit/armor/bulletproof/omon
	name = "bulletproof omon armor"
	desc = "If you wear it, then obviously you are going to kill people."
	alternate_worn_icon = 'code/shitcode/valtos/icons/clothing/suit.dmi'
	icon = 'code/shitcode/valtos/icons/clothing/suits.dmi'
	icon_state = "omon_armor"

/datum/job/officer/omon
	title = "Russian Officer"
	outfit = /datum/outfit/job/security/omon

/datum/outfit/job/security/omon
	name = "Russian Officer uniform"
	jobtype = /datum/job/officer/omon

	belt = /obj/item/pda/security
	ears = /obj/item/radio/headset/headset_sec/alt
	uniform = /obj/item/clothing/under/rank/omon/green
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/helmet/sec
	suit = /obj/item/clothing/suit/armor/vest/alt
	shoes = /obj/item/clothing/shoes/jackboots
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld
	suit_store = /obj/item/gun/energy/disabler
	backpack_contents = list(/obj/item/melee/baton/loaded=1)

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	box = /obj/item/storage/box/security

	implants = list(/obj/item/implant/mindshield/, /obj/item/implant/krav_maga)

	chameleon_extras = list(/obj/item/gun/energy/disabler, /obj/item/clothing/glasses/hud/security/sunglasses, /obj/item/clothing/head/helmet)

/datum/outfit/job/hos
	implants = list(/obj/item/implant/mindshield/, /obj/item/implant/krav_maga)

/datum/outfit/job/warden
	implants = list(/obj/item/implant/mindshield/, /obj/item/implant/krav_maga)

/datum/outfit/job/security
	implants = list(/obj/item/implant/mindshield/, /obj/item/implant/krav_maga)

/datum/job/officer/kazakh
	title = "Kazakhstan Officer"
	total_positions = 1
	spawn_positions = 1
	minimal_player_age = 28
	exp_requirements = 6000
	exp_type = EXP_TYPE_CREW
	exp_type_department = EXP_TYPE_SECURITY
	access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_COURT, ACCESS_MAINT_TUNNELS, ACCESS_MECH_SECURITY,
					ACCESS_MORGUE, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS, ACCESS_MINERAL_STOREROOM, ACCESS_ENGINE, ACCESS_ENGINE_EQUIP,
					ACCESS_TECH_STORAGE, ACCESS_MAINT_TUNNELS, ACCESS_MECH_ENGINE, ACCESS_EXTERNAL_AIRLOCKS, ACCESS_CONSTRUCTION,
					ACCESS_ATMOSPHERICS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_COURT, ACCESS_WEAPONS, ACCESS_MECH_SECURITY,
					ACCESS_MINERAL_STOREROOM, ACCESS_ATMOSPHERICS, ACCESS_CONSTRUCTION, ACCESS_MECH_ENGINE, ACCESS_MINERAL_STOREROOM) // See /datum/job/officer/get_access()
	outfit = /datum/outfit/job/security/kazakh

/datum/outfit/job/security/kazakh
	name = "Kazakh Officer uniform"
	jobtype = /datum/job/officer/kazakh

	belt = /obj/item/pda/security
	ears = /obj/item/radio/headset/headset_sec/alt/department/engi
	uniform = /obj/item/clothing/under/rank/omon/green
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/helmet/sec
	suit = /obj/item/clothing/suit/armor/vest/alt
	shoes = /obj/item/clothing/shoes/jackboots
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld
	suit_store = /obj/item/gun/energy/disabler
	backpack_contents = list(/obj/item/melee/baton/loaded=1, /obj/item/clothing/under/rank/engineering/atmospheric_technician=1,
	/obj/item/modular_computer/tablet/preset/advanced=1, /obj/item/pipe_dispenser=1)

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	box = /obj/item/storage/box/security

	implants = list(/obj/item/implant/mindshield/, /obj/item/implant/krav_maga)

	chameleon_extras = list(/obj/item/gun/energy/disabler, /obj/item/clothing/glasses/hud/security/sunglasses, /obj/item/clothing/head/helmet)
