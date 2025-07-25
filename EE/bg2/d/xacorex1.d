BEGIN XACOREX1

	//{ #region Corwin Sex 1
	IF ~
		GlobalLT("XA_LCE_CorwinSex1_Part2", "MYAREA", 1)
		Global("XA_LC_CorwinSex_1","GLOBAL",1)
		AreaCheck("XAEXPL01")
	~ THEN BEGIN XA_LC_XAEXPL01
		SAY @9 /* ~Well?~  */
		
		IF ~~ THEN REPLY @10 /* ~Schael, y-you're so beautiful, I.. I —~ */
		DO ~
			SetGlobal("XA_LCE_TS_Prep", "MYAREA", 3)
		~
		GOTO XA_LC_CorwinSex1_3
		
		IF ~~ THEN REPLY @219 /*~*Gulp*~ */
		DO ~
			SetGlobal("XA_LCE_TS_Prep", "MYAREA", 3)
		~
		GOTO XA_LC_CorwinSex1_3
		
		IF ~~ THEN REPLY @220 /* ~Ohhh.... oh WOW...~*/
		DO ~
			SetGlobal("XA_LCE_TS_Prep", "MYAREA", 3)
		~
		GOTO XA_LC_CorwinSex1_3
	END
	
	//{ M/F
	IF ~~ THEN BEGIN XA_LC_ScarTalk_M
		SAY @163 /* ~(You hurriedly remove your armor, then your shirt. Before you can remove your pants, she gasps.)~ */
		
		= @164 /*~What... gods, look what he did do to you...~*/
		
		= @165 /* ~(She places her hands on your chest and gently moves them on and around the scars left behind from your imprisonment at the hands of the wizard.)~*/
		
		IF ~~ THEN
		GOTO XA_LC_ScarTalk_Excruciating
	END

	IF ~~ THEN BEGIN XA_LC_ScarTalk3_M
		SAY @172 /*~Let me see.~*/
		
		= @173 /* ~(You turn around and hear a slight gasp. In moments, she reaches out to touch your scars. The feeling of her fingers caressing your back is soothing. In moments, you feel something warm and wet touch your skin... It's Schael, kissing one the largest of the many scars that were left on your back.)~*/
		
		= @175 /* ~Now turn around, and take those off.~ */
		
		IF ~~ THEN
		GOTO XA_LC_CorwinSex1_4_M
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_4_M
		SAY @176 /* ~(You quickly lower your pants and nearly trip over yourself while doing so. She laughs, and a wide smile graces her face as she eyes your throbbing, erect member.)~*/
		
		= @178 /* ~Well... at least he had the decency to leave *some* parts of you unharmed. You have a beautiful cock, and ... you're even bigger than I expected. What a pleasant surprise.~ */
		
		= @17 /* ~Come here, hero.~ */
		
		= @18 /* ~(You pull eachother into a tight embrace, and lock lips during a long, sensual kiss. Slowly, you slide your hands down her back, from her shoulder blades to her waist, while she does the same. You caress and squeeze her round, firm behind, as she giggles in delight.)~ */
		
		= @159 /* ~(Unable to resist, you bury your head in Schael's ample breasts, and begin to kiss them. They are warm and soft, and smell of lilacs.)~ */
		
		= @160 /* ~(She laughs as she strokes the back of your head.)~*/
		
		= @20 /* ~It seems that demigods have the same breast fixation as normal men.~ */
		
		= @21 /*  ~(She reaches down and begins to gently stroke your already leaking member with one hand, while massaging your jewels with the other. The feeling of her soft, skilled hands on your package is indescribable, and you gasp in pleasure.)~ */
		
		= @19 /* ~This is what you want, isn't it lover?~ */
		
		IF ~~ THEN REPLY @22 /* @22 = ~Ohhhh.... Schael....~ */
		GOTO XA_LC_CorwinSex1_5_M
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_5_M
		SAY @23 /* ~(In a fluid motion, she pulls back, and drops to her knees. Realizing what is about to happen, you brace yourself.) ~ */
		
		= @24 /* ~It's about time you received a worthy reward for all that you've done.~   */
		
		= @25 /* ~(Crooning softly, Schael begins to kiss and lick your engorged member, starting at the base and slowly working her way up. You quiver in anticipation as she kisses your sensitive tip.)~*/
		
		= @26 /* ~(She looks up at you and smiles, before quickly taking you into her mouth).~ */
		
		= @27 /* ~(In and out. In and out. Her cheeks dimple as she bobs up and down on your member, while gazing lovingly into your eyes. Holding the base of your shaft firm in her left hand, she fingers herself sensually with her right hand.)~ */
		
		= @28 /* ~(You begin to take stock of your situation. Just a short time ago, you were locked away in Candlekeep with your foster father Gorion, learning about things like science, history, love and sex from an old book in the library. Now, the woman you love, one of the most beautiful women in Faerûn, is giving you a fantastic blowjob. You think to yourself that heroism does indeed have its benefits.)~ */
		
		= @29 /* ~(You're jerked back into yourself as she begins to deepthroat you. You moan uncontrollably while you run your hands through her silky dark hair.)~ */
		
		= @30 /* ~(Your breathing becomes labored, and you begin to grunt. Schael, knowing what's about to happen, suddenly stops and ignores your groan as she rises to her feet.)~ */
		
		= @31 /* ~Mm. Normally, I'd ask you to return the favor, but today is about you, love. Are you ready?~ */
		
		IF ~~ THEN REPLY @32 /* ~(Forcefully grab her hips and pull them into your own).~  */
		GOTO XA_LC_CorwinSex1_6_M
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_6_M
		SAY @33 /* ~I'll take that as a yes.~ */
		
		= @34 /* ~(She shoves you onto the bed, and climbs in so that she is atop your midsection. Without another word, she presses down on you).~  */
		
		= @35 /* ~(Thanks to your pre-cum and her saliva, you slide into her easily. The feeling is exquisite, and you gasp in delight.)~  */
		
		= @36 /* ~(You begin thrusting your hips upward with a steady rhythm, which causes her breasts to bounce, down, up and down again. The sight is extremely erotic. With your left hand, you hold her right hip, and you reach up with your right hand to gently massage her left breast.)~ */
		
		= @37 /* ~Ohhh, <CHARNAME>... don't stop, take me, harder... harder... oh...!~ */
		
		= @38 /* ~(You increase the pace and strength of your thrusts. Suddenly, Schael lets out a loud moan and cries out your name. You fear that you may have hurt her, and stop your thrusting.)~ */
		
		IF ~~ THEN REPLY @39 /* ~Schael, are you alright? Am I hurting — d-do you want me to stop?~  */
		GOTO XA_LC_CorwinSex1_7_M
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_7_M
		SAY @40 /* ~(She pulls your head up to hers and gives you a savage kiss.)~ */
		
		= @41 /* ~No, you're not hurting me, but I may hurt you if you stop again. Fuck me, hero! FUCK ME!!~ */
		
		= @42 /* ~(That was all you needed. With a roar, you lift her up with your hands and hips, then turn so that you're on top of her. Using the headboard as leverage, you ferociously and repeatedly penetrate her. She howls in delight as you push and push, meeting your thrusts with thrusts of her own, while her nails rake into your back.)~*/
		
		= @43 /* ~(Together, your animalistic cries reach a new pitch as you near your orgasms, and then you're there. You shudder and scream as you release a truly massive load into her. She scissors her taut, muscled legs around you and pulls you in, draining your member of every last drop.)~*/
		
		= @44 /* ~(This last exertion on her part sends her over the edge, and she moans in ecstasy as the wave of her orgasm sweeps through her, from her head to her toes, crashing through her and carrying her away on a tidal wave of pleasure.)~*/
		
		= @45 /* ~(As you lay there together, you inhale the smells of sweat and sex in the air, and try to comprehend what has just happened. Eventually, you are able to gather yourselves. Your member shrinks to its former size and you pull out of her, but you remain locked in an embrace with her legs wrapped around your hips, and your head resting next to hers.)~ */
		
		= @46 /* ~(Finally, you roll to your left, so that you're laying side by side.)~  */
		
		= @47 /* ~Mm, <CHARNAME>. That was wonderful.~ */
		
		= @48 /* ~(She plants a kiss on your forehead.)~ */
		
		IF ~~ THEN
		GOTO XA_LC_CorwinSex1_Finished
		
	END
	//}
	
	//{ F/F
	IF ~~ THEN BEGIN XA_LC_ScarTalk_F
		SAY @221 /* ~(Try as you might, you're unable to pull your gaze away from her even as you begin to undress. It's as though her body is some kind of magnificent sculpture that has been brought to life. Her tits, in particular, seem to beckon to you; you imagine what it would be like to taste them, while running your hands over her amazing, powerful physique.)~*/
		
		=@222 /* ~(You take a deep breath and are able regain your composure. Quickly, yet methodically, you work on undoing each of the knots holding your vestment in place. The last knot, however, turns out to be quite stubborn and resists all of your efforts to untie it. Seeing your growing frustration, Schael laughs.)~  */		
		
		= @223 /* ~Heh. Here, let me help you with that.~*/
		
		= @224 /* ~(She walks up so that she is behind you, and you can feel her breasts pressing into your back. With her skilled hands, she reaches around and undoes the troublesome knot. After planting a soft, gentle kiss on your neck, she removes your vestment, and lets out an audible gasp.)~*/
		
		= @164 /* ~What... gods, what did he do to you...~ */
		
		= @225 /* ~(You're suddenly reminded of the grievous scars left behind from your imprisonment at the hands of Irenicus. You feel your face flush with shame and embarrassment, and, unsure of what to do, you try and take back the vestment from Schael's hands.)~*/
		
		= @226 /* ~No, stop it! I ... I want to see. Please.~ */
		
		= @227 /* ~(She places her hands on your chest and gently moves them on and around your scars. The feeling of her hands on your breasts is soothing, and you can feel your nipples harden in response to her touch.)~ */
		
		IF ~~ THEN
		GOTO XA_LC_ScarTalk_Excruciating
	END
	
	IF ~~ THEN BEGIN XA_LC_ScarTalk3_F
		SAY @172 /* ~Let me see.~ [xalce123] */ 
		
		= @228 /* ~(You turn around and hear a slight gasp. Soon, you feel something warm and wet against your skin... It's Schael, kissing the largest of the many scars that mar your back. You're pulse quickens, and with each kiss, the warmth and wetness of your sex becomes more pronounced.)~ */
		
		= @175 /* ~Now turn around, and take those off.~ [xalce124] */
		
		= @229 /* ~(You quickly lower your pants and nearly trip over yourself while doing so. She laughs, and a wide smile graces her face as she eyes your snatch and emerging clit.)~*/
		
		= @230 /* ~Well... at least he had the decency to leave *some* parts of you unharmed.~ */
		
		= @231 /* ~Come here, love.~ */
		
		IF ~~ THEN REPLY @232 /* ~Schael, you should know that I ... I've never been with another woman before. I, ah... I don't want to disappoint you.~ */
		GOTO XA_LC_ScarTalkEnd_F_1
		
		IF ~~ THEN REPLY @233 /* ~Are you sure that my scars don't bother you?~*/
		GOTO XA_LC_ScarTalkEnd_F_2
	END
	
	IF ~~ THEN BEGIN XA_LC_ScarTalkEnd_F_1
		SAY @234 /* ~Disappoint me?~ */
		
		= @235 /* ~(She takes hold of your hand.)~ */
		
		= @236 /* ~You could never. Besides, I suspected as much ... Candlekeep, from the little I know of it, isn't exactly renowned for welcoming women. I, on the other hand ... ~*/
		
		= @240 /* ~(She reaches down and gently pulls your hips into hers.)~ */
		
		= @237 /*~... take pride in making a woman feel welcome in the bedroom.~*/
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex1_4_F
	END
	
	IF ~~ THEN BEGIN XA_LC_ScarTalkEnd_F_2
		SAY @239 /*~They don't bother me. What bothers me is that the monster that gave you those scars is still out there. But we'll get to that another time. This <DAYNIGHT> is for us. And besides ...~ */
		
		= @240 /* ~(She reaches down and gently pulls your hips into hers.)~ */
		
		= @241 /* ~... I've my own share of scars. You'll learn to live with yours as I have mine.~*/
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex1_4_F
	END
	
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_4_F
		SAY @242 /* ~(You embrace, and lock lips during a long, sensual kiss. Slowly, you slide your hands down her back, from her shoulder blades to her waist, while she does the same. You caress and squeeze her round, firm behind, as she giggles in delight.)~ */
		
		= @244 /* ~(The lovely scent of feminine arousal, yours and hers, fills your nostrils as you bury your head between her breasts. They are warm, full and soft, and smell of lilacs. Unable to resist any longer, you begin to lick and suck on her hardened nipples. Schael quivers and gasps with delight as you flick your tongue on her nipple while it rests between your teeth.)~ */
		
		= @245/*~Hah... a demi-goddess with the same breast fixation as the other men and women who've shared my bed...~ */
		
		= @246 /* ~(While you continue your oral worship of her breasts, she reaches down and begins to expertly finger your engorged clit. Her touch on your most sensitive area is electrifying, and you feel yourself start to lose control.)~*/
		
		= @19 /* ~This is what you want, isn't it lover?~ [xalce168] */
		
		IF ~~ THEN REPLY @247 /* ~Oh.... oh! Schael!~*/
		GOTO XA_LC_CorwinSex1_5_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_5_F
		SAY @23 /* ~(In a fluid motion, she pulls back, and drops to her knees. Realizing what is about to happen, you brace yourself.)~ */
		
		= @24 /* ~It's about time you received a worthy reward for all that you've done.~ [xalce103]*/
		
		= @248 /* ~(She inserts her tongue into your vagina, and begins to slowly and deeply lick from the front to the back. Interspersed with the vigorous licking are kisses and flicks of her tongue on your sensitive clit. It's clear that she's had a lot of experience, and the pleasure you feel is unlike anything you could have imagined.)~*/
		
		= @243 /* ~(You take a moment to consider the situation. Just a short time ago, you were locked away in Candlekeep with your foster father Gorion, learning about things like science, history, love and sex from a collection of old, dusty books in the library. Now, the woman you love, one of the most beautiful women in Faerûn, is eagerly eating your pussy. Heroism, it seems, does indeed have its benefits.)~ */
		
		= @249 /* ~(You're pulled back into the moment as Schael begins to finger your g-spot while sucking on your clit. The intense pleasure causes you to moan uncontrollably, and you run your hands through her silky dark hair.)~  */
		
		= @250 /*~(Sensing that you're close to the edge, Schael increases the pace and intensity of her efforts. With a scream and a shudder, the orgasm crashes through you, and your cunt rewards her face and mouth with an eruption of cum.)~*/
		
		= @251 /*~(Overwhelmed with the pleasure of the most powerful orgasm you've ever experienced, you collapse toward the floor...)~ */
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XAEX01F2")
		~
		EXIT
	END
	
	IF ~
		Global("XA_LCE_CorwinSex1_Part2", "MYAREA", 2)
	~ THEN BEGIN XA_LC_CorwinSex1_6_F
		SAY @260 /* ~(You awaken on the bed, in Schael's tender, loving embrace.)~ */
		
		= @252 /*~<CHARNAME>. Hey. Wake up, sleeping beauty.~ */
		
		IF ~~ THEN REPLY @253 /* ~W... what happened?~ */
		DO ~
			SetGlobal("XA_LCE_CorwinSex1_Part2", "MYAREA", 3)
		~
		GOTO XA_LC_CorwinSex1_7_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_7_F
		SAY @254 /* ~Well, you came like a volcano and passed out. First time for everything, I suppose. I was barely able to catch you before you hit the floor, then I carried you to bed. Are you feeling alright, dear?~*/
		
		IF ~~ THEN REPLY @255 /* ~Yeah... I feel amazing, actually. *You* were amazing, love.~ */
		GOTO XA_LC_CorwinSex1_8_F
		
		IF ~~ THEN REPLY @369 /* ~I feel a bit woozy, but none the worse for wear.~ */
		GOTO XA_LC_CorwinSex1_7FB
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_7FB
		SAY @370 /* ~Here, I poured you a glass of water while you were out. Drink it, it'll help.~*/
		
		IF ~~ THEN REPLY @371 /* ~Thanks... ah, much better.~*/
		GOTO XA_LC_CorwinSex1_8_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_8_F
		SAY @256 /* ~I'm surprised you lasted as long as you did. You certainly gave my tongue a work out, not that I mind... you taste wonderful, you know.~*/
		
		IF ~~ THEN REPLY @257 /*~Oh gosh, I'm so sorry. I'm sure you wanted me to —~*/
		GOTO XA_LC_CorwinSex1_9_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_9_F
		SAY @258 /*~Return the favor? Of course, but I think you've had enough for one <DAYNIGHT>.~*/
		
		IF ~~ THEN REPLY @273 /* ~But I feel fine, I promise. We've been waiting for this <DAYNIGHT> for so long, and I don't want it to end so soon!~*/
		DO ~
			SetGlobal("XA_LC_CorwinSex_1_Penetration", "GLOBAL", 1)
		~
		GOTO XA_LC_CorwinSex1_10_F
		
		IF ~~ THEN REPLY @261 /*~You're right, as usual. I love you, Schael.~*/
		GOTO XA_LC_CorwinSex1_9_F_END
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_9_F_END
		SAY @262 /*~I love you too, <CHARNAME>.~*/
		
		= @259 /*~(You kiss, and fall asleep in her arms.)~ */
		
		IF ~
			Global("XA_LC_PortraitChange_LCA", "GLOBAL", 1)
		~ THEN 
		DO ~
			ReallyForceSpellRES("XACHNG01", "XACORWIN")
			StartCutSceneMode()
			StartCutScene("XAEX01EX")
		~
		EXIT
		
		IF ~
			Global("XA_LC_PortraitChange_LCA", "GLOBAL", 0)
		~ THEN 
		DO ~
			ReallyForceSpellRES("XACHNG02", "XACORWIN")
			StartCutSceneMode()
			StartCutScene("XAEX01EX")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_10_F
		SAY @263/* ~Well... if you say so... there was one thing I wanted to show you.~ */
		
		IF ~~ THEN REPLY @264/* ~What is it?~*/
		GOTO XA_LC_CorwinSex1_11_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_11_F
		SAY @265/* ~Go get my knapsack and open it. There's something in there that I think you'll enjoy.~*/
		
		= @266/* ~(You leave the bed and fetch her knapsack. After rummaging through her things, you reach in and pull out a ...)~*/
		
		IF ~~ THEN REPLY @267/* ~Hah! A strap-on? And it's pink, too! Somehow I don't think this is standard issue for Flaming Fist officers.~*/
		GOTO XA_LC_CorwinSex1_12_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_12_F
		SAY @268/* ~No kidding. I picked it up at the Promenade not long after I arrived. Now put it on, come back into bed, and fuck me. That's an *order*, hero.~*/
		
		IF ~~ THEN REPLY @271 /* ~It's huge... I don't think it will fit.~ */
		GOTO XA_LC_CorwinSex1_13A_F
		
		IF ~~ THEN REPLY @275 /* ~Me? Are you sure?~ */
		GOTO XA_LC_CorwinSex1_13B_F
	
		IF ~~ THEN REPLY @373 /* ~I thought you would be the one doing the fucking.~*/
		GOTO XA_LC_CorwinSex1_13C_F
		
		IF ~~ THEN REPLY @374 /* ~Far be it from me to disobey orders.~*/
		GOTO XA_LC_CorwinSex1_14_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_13A_F
		SAY @272 /* ~There's only one way to find out. Now... Get. Over. Here. I won't ask again.~ */
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex1_14_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_13B_F
		SAY @282 /* ~You?~ */
		
		IF ~~ THEN
		GOTO XA_LC_CorwinSex1_13B_F_A
		
		IF ~
			InParty("Nalia")
		~ THEN
		GOTO XA_LC_CorwinSex1_13B_F_B
		
		IF ~
			InParty("Neera")
		~ THEN
		GOTO XA_LC_CorwinSex1_13B_F_C
		
		IF ~
			InParty("Jaheira")
		~ THEN
		GOTO XA_LC_CorwinSex1_13B_F_D
		
		IF ~
			InParty("Aerie")
		~ THEN
		GOTO XA_LC_CorwinSex1_13B_F_E
		
		IF ~
			InParty("Viconia")
		~ THEN
		GOTO XA_LC_CorwinSex1_13B_F_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_13B_F_A
		SAY @281 /* ~Is there anyone else in this damn room? Gods, wake up! Put it on and get over here, or I'll beat you with it!~ */
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex1_14_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_13B_F_B
		SAY @280 /* ~No, Nalia. Gods, wake up! Put it on and get over here, or I'll beat you with it!~ */
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex1_14_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_13B_F_C
		SAY @279 /* ~No, Neera. Gods, wake up! Put it on and get over here, or I'll beat you with it!~ */
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex1_14_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_13B_F_D
		SAY @277 /* ~No, Jaheira. Gods, wake up! Put it on and get over here, or I'll beat you with it!~ */
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex1_14_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_13B_F_E
		SAY @276 /* ~No, Aerie. Gods, wake up! Put it on and get over here, or I'll beat you with it!~ */
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex1_14_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_13B_F_F
		SAY @278 /* ~No, Viconia. Gods, wake up! Put it on and get over here, or I'll beat you with it!~ */
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex1_14_F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_13C_F
		SAY @372 /* ~So did I, but I'd be remiss to make you cum again so soon after that fainting episode.~ */
		
		IF ~~ THEN REPLY @271 /* ~It's huge... I don't think it will fit.~ */
		GOTO XA_LC_CorwinSex1_13A_F
		
		IF ~~ THEN REPLY @374 /* ~Far be it from me to disobey orders.~*/
		GOTO XA_LC_CorwinSex1_14_F
	END
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_14_F
		SAY @283 /* ~(You quickly tie the strap-on around your waist and jump back into bed. Schael turns and faces the headboard, and raises her behind toward you. You place one hand on her firm, round ass, while you gently finger her pussy  starting from the front and slowly working toward the back. She's so unbelievably wet already that you're sure you won't need any lube.)~*/
		
		= @284 /* ~(Gently, you insert the phallus into vagina, and you hear a slight gasp. She then moves backward slightly, taking more of the phallus into her sex. It's nearly fully inserted now, and you feel some resistance as the tip edges closer toward her cervix.)~ */
		
		= @285 /*~Oh... that feels amazing...~*/
		
		= @286 /*~(She places her right hand on the headboard, then moves forward, backward, and forward again at a steady pace. You time your thrusts so that you're moving forward while she is moving backward.)~*/
		
		= @287 /*~Good... oh gods... just like that...~*/
		
		= @288 /*~(You move your hands around her ass, back and legs as you continue to smash her cervix. Every inch of her is perfect in your eyes, even those scars left behind from old wounds. Her beautiful body begins to glisten as she increases the pace of her gyrations.)~*/
		
		= @289 /*~Harder... faster...~*/
		
		= @290 /*~(You happily oblige, and raise the frequency and ferocity of your thrusts. With your left hand placed firmly on her hip, you reach down and begin to fondle her right breast. Schael responds with a shudder and long, slow moan, and begins to pant as she edges closer to her climax.)~*/
		
		= @291 /*~(Suddenly, she arches her back and cries out your name. You fear that you may have hurt her, and stop your thrusting. She turns her head to look back toward you, and you see in her eye a fiery intensity unlike anything you've seen from her before.)~*/
		
		= @292 /*~You're not *pant* hurting me... *huff* ... but I may *pant* hurt you if you stop again. Fuck me, hero! FUCK ME!~*/
		
		= @293 /*~(You immediately oblige and resume your thrusts, except this time you don't hold back. Schael moans wildly with delight as you mercilessly pound her cunt. Sensing that she's on the brink, you squeeze her breast with one hand while vigorously fingering her clit with the other.)~*/
		
		= @294 /*~(This last effort on your part sends her over the edge, and she screams in ecstasy as the wave of her orgasm sweeps through her, from her head to her toes, crashing through her and carrying her away on a tidal wave of pleasure.)~  */
		
		=@295 /*=~Oh.... Oh, <CHARNAME>...~*/
		
		=@296 /*~(Your thrusts slow, then stop, and you plant a soft kiss on her neck. Schael turns to her side as you pull out of her. You remove the strap-on and run your hand over the shaft, which is now completely covered in her juices. Unable to resist the urge, you hold your hand to your mouth and lick her cum off of your fingers. It has a pleasant aroma, and a kind of sweet and salty taste.)~*/
		
		=@297 /*~(You rest your head next to hers, and gaze into her eyes. As you lay there together, you inhale the smells of sweat and sex in the air, and try to comprehend what has just happened. Eventually, you're able to gather yourselves.)~*/
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex1_Finished
	END
	//}
	
	//{ Shared
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_3
		SAY @11 /* ~What are you doing? Get out of those clothes!~ */
		= @12 /* ~(She's as used to giving orders in the bedroom as she is outside of it, you think to yourself.)~ */
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @13 /* ~R-right.~ */
		GOTO XA_LC_ScarTalk_M
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN REPLY @13  /* ~R-right.~ */
		GOTO XA_LC_ScarTalk_F
		
		IF ~~ THEN REPLY @375 /* ~Sorry, I uh... I was admiring the view.~ */
		GOTO XA_LC_PleasantView
	END
	
	IF ~~ THEN BEGIN XA_LC_PleasantView
		SAY @376 /* ~(She crosses her powerful, sculpted arms beneath her tits and taps her bare foot with impatience.)~*/
		
		= @377 /* =~Oh, how I *love* that sense of humor. I wonder if you'll have more jokes to tell after I shove your underwear down your throat!~*/
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @378/* ~Okay, okay! Clothes are coming off, relax!~*/
		GOTO XA_LC_ScarTalk_M
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN REPLY @378/* ~Okay, okay! Clothes are coming off, relax!~*/
		GOTO XA_LC_ScarTalk_F
		
		IF ~
			GlobalLT("XA_LCE_LiftedPlayer", "LOCALS", 1)
		~ THEN REPLY @379 /* ~That actually doesn't sound too bad.~*/
		DO ~
			SetGlobal("XA_LCE_LiftedPlayer", "LOCALS", 1)
		~
		GOTO XA_LC_Lift
	END
	
	IF ~~ THEN BEGIN XA_LC_Lift
		SAY @405 //... 
		
		= @380 /* ~(Her annoyance with you is evident as she tenses the muscles in her arms and midsection. Without warning, she reaches forward and grabs you by the underside of your collar. To your astonishment, she easily lifts you about a foot off the floor with just her right arm. Her immense strength causes you to shudder with fear and arousal, as she draws her left arm back, threatening to strike you.)~   */
		
		COPY_TRANS XACOREX1 XA_LC_PleasantView
	END
	
	IF ~~ THEN BEGIN XA_LC_ScarTalk_ExcruciatingA
		SAY @170 /*~Don't be ridiculous. I love you, <CHARNAME>. I just wasn't prepared for it, that's all. Where else did he hurt you?~  */
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @171 /*~My back mainly, and p-parts of my legs.~*/
		GOTO XA_LC_ScarTalk3_M
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN REPLY @171 /*~My back mainly, and p-parts of my legs.~*/
		GOTO XA_LC_ScarTalk3_F
	END
	
	IF ~~ THEN BEGIN XA_LC_ScarTalk_ExcruciatingB
		SAY @368 /* ~Such cruelty... it's worse than I could've imagined. Where else did he hurt you?~*/
		
		COPY_TRANS XACOREX1 XA_LC_ScarTalk_ExcruciatingA
	END
	
	IF ~~ THEN BEGIN XA_LC_ScarTalk_Excruciating
		SAY @166 /*~Irenicus... damn him! I... I'm so sorry that you had to endure this. It must've been excruciating.~  */
		
		IF ~~ THEN REPLY @169 /* ~Listen... if you're having second thoughts... I'd understand.~*/
		GOTO XA_LC_ScarTalk_ExcruciatingA
		
		IF ~~ THEN REPLY @367 /* ~He placed me under some kind of paralysis spell, but I could feel everything... the knives piercing my skin, the needles, the chemicals... all of it. I never stopped fighting to break free, but it was no use.~*/
		GOTO XA_LC_ScarTalk_ExcruciatingB
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_Finished
		SAY @49 /* ~You don't know how much I needed that. Thank you, love.~  */
		
		IF ~~ THEN REPLY @50 /* ~Schael, you were incredible, I - I can't even —~ */
		GOTO XA_LC_CorwinSex1_8
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_8
		SAY @51 /* ~(She smiles warmly, and places her finger across your lips.)~ */
		
		= @52 /* ~Shh, lover. It's time for us to get some rest. Just know that this, and more, is what awaits you when we finally return home. I love you, <CHARNAME>.~ */
		
		IF ~~ THEN REPLY @53 /* ~I love you too, Schael. */
		GOTO XA_LC_CorwinSex1_9
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_9
		SAY @54 /* ~(You kiss and embrace, and try to get some sleep. Eventually, you give up, and the two of you make love again, and again, and again. Mercifully, you finally pass out from sheer exhaustion).~*/
		
		IF ~
			Global("XA_LC_PortraitChange_LCA", "GLOBAL", 1)
		~ THEN 
		DO ~
			ReallyForceSpellRES("XACHNG01", "XACORWIN")
			StartCutSceneMode()
			StartCutScene("XAEX01EX")
		~
		EXIT
		
		IF ~
			Global("XA_LC_PortraitChange_LCA", "GLOBAL", 0)
		~ THEN 
		DO ~
			ReallyForceSpellRES("XACHNG02", "XACORWIN")
			StartCutSceneMode()
			StartCutScene("XAEX01EX")
		~
		EXIT
	END
	//}
	
//} #endregion
