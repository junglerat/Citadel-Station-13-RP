/mob/living/simple_mob/humanoid/wolfgirl
	name = "wolfgirl"
	desc = "AwooOOOOoooo!"
	tt_desc = "Homo lupus"
	icon = 'icons/mob/vore.dmi'
	icon_state = "wolfgirl"
	icon_living = "wolfgirl"
	icon_dead = "wolfgirl-dead"

	faction = "wolfgirl"
	maxHealth = 30
	health = 30

	ai_holder_type = /datum/ai_holder/simple_mob/retaliate/cooperative

	response_help = "pats the"
	response_disarm = "gently pushes aside the"
	response_harm = "hits the"

	harm_intent_damage = 8
	melee_damage_lower = 15
	melee_damage_upper = 15
	attacktext = list("slashed")

	say_list_type = /datum/say_list/wolfgirl

	var/loopstop = 0 //To prevent circular awoooos.

/mob/living/simple_mob/humanoid/wolfgirl/hear_say()
	if(world.time - loopstop < 5 SECONDS)
		return
	else
		loopstop = world.time
		..()

// Activate Noms!
/mob/living/simple_mob/humanoid/wolfgirl
	vore_active = 1
	vore_pounce_chance = 40
	vore_icons = SA_ICON_LIVING

/datum/say_list/wolfgirl
	speak = list("AwoooOOOOoooo!",
				"Awoo~",
				"I'll protect the forest! ... Where's the forest again?",
				"All I need is my sword!",
				"Awoo?",
				"Anyone else smell that?")
	emote_hear = list("awoooos!","hmms to herself","plays with her sword")
	emote_see = list("narrows her eyes","sniffs the air")
	say_understood = list()
	say_cannot = list()
	say_maybe_target = list("An enemy!?","What was that?","Is that...?","Hmm?")
	say_got_target = list("You won't get away!","I've had it!","I'll vanquish you!","AWOOOOO!")
