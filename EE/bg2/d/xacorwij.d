//{ XACORWIJ
APPEND XACORWIJ
	//{ #region Corwin Sex 1 
	IF ~
		Global("XA_LC_CorwinSex_1","GLOBAL",1)
		AreaCheck("XAEXPL01")
	~ THEN BEGIN XA_LC_XAEXPL01
		SAY @0 /* ~This room is perfect.~ */
		
		= @1 /* ~(She turns to you.)~ */
		
		= @2 /* ~Help me take this armor off.~  */
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @3 /* ~(Lift off her chainmail armor and set it aside.)~ */
		GOTO XA_LC_CorwinSex1_2
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN REPLY @3
		GOTO XA_LC_CorwinSex1_8
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_2
		SAY @4 /* ~Thanks.~ */
		
		= @5 /* ~(She turns around and kneels. After removing her boots, she releases the clasps on her two leg harnesses and discards them, then stands with her back towards you.)~ */
		
		= @6 /* ~(Next, she slowly removes her vestment, revealing her bare shoulders and back. Her skin is smooth, and glistening with sweat. You notice her sharply defined back and shoulder muscles, and your pulse quickens in anticipation of what is about to happen.)~ */
		
		= @7 /* ~(She steps out of her leggings, revealing her firm, well-rounded bottom, shapely thighs and muscular calves. With her hands on her hips, she turns around and faces you.)~*/
		
		= @8 /* ~(You stand in awe and silent amazement. Schael's breasts are round, full and tanned, her nipples tiny buds on light brown areolas. Her legs, arms and midsection are packed with lean muscle, but her physique detracts in no way from her femininity. The fullness of her chest accentuates her slim waist and her wide, inviting hips. Her womanhood is hidden behind a delicate patch of hair, as dark as the hair on her head.)~  */
		
		= @9 /* ~Well?~  */
		
		IF ~~ THEN REPLY @10 /* ~Schael, y-you're so beautiful, I.. I —~ */
		GOTO XA_LC_CorwinSex1_3
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_3
		SAY @11 /* ~What are you doing? Get out of those clothes!~ */
		= @12 /* ~(She's as used to giving orders in the bedroom as she is outside of it, you think to yourself.)~ */
		
		IF ~~ THEN REPLY @13 /* ~R-right.~ */
		GOTO XA_LC_ScarTalk
	END
	
	IF ~~ THEN BEGIN XA_LC_ScarTalk
		SAY @163 /* ~(You hurriedly remove your armor, then your shirt. Before you can remove your pants, she gasps.)~ */
		
		= @164 /*~What... gods, look what he did do to you...~*/
		
		= @165 /* ~(She places her hands on your chest and gently moves them on and around the scars left behind from your imprisonment at the hands of the wizard.)~*/
		
		= @166 /* ~Irenicus... damn him! I... I'm so sorry that you had to endure this. It must've been excruciating.~ */
		
		IF ~~ THEN REPLY @169  /*~Listen... if you're having second thoughts... I'd understand.~ */
		GOTO XA_LC_ScarTalk2
	END
	
	IF ~~ THEN BEGIN XA_LC_ScarTalk2
		SAY @170 /* ~Don't be ridiculous. I love you, <CHARNAME>. I just wasn't prepared for it, that's all. Where else did he hurt you?~*/
		
		IF ~~ THEN REPLY @171 /*~My back mainly, and p-parts of my legs.~*/
		GOTO XA_LC_ScarTalk3
	END
	
	IF ~~ THEN BEGIN XA_LC_ScarTalk3
		SAY @172 /*~Let me see.~*/
		
		= @173 /* ~(You turn around and hear a slight gasp. In moments, she reaches out to touch your scars. The feeling of her fingers caressing your back is soothing. In moments, you feel something warm and wet touch your skin... It's Schael, kissing one the largest of the many scars that were left on your back.)~*/
		
		= @175 /* ~Now turn around, and take those off.~ */
		
		IF ~~ THEN
		GOTO XA_LC_CorwinSex1_4
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_4
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
		GOTO XA_LC_CorwinSex1_5
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_5
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
		GOTO XA_LC_CorwinSex1_6
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_6
		SAY @33 /* ~I'll take that as a yes.~ */
		
		= @34 /* ~(She shoves you onto the bed, and climbs in so that she is atop your midsection. Without another word, she presses down on you).~  */
		
		= @35 /* ~(Thanks to your pre-cum and her saliva, you slide into her easily. The feeling is exquisite, and you gasp in delight.)~  */
		
		= @36 /* ~(You begin thrusting your hips upward with a steady rhythm, which causes her breasts to bounce, down, up and down again. The sight is extremely erotic. With your left hand, you hold her right hip, and you reach up with your right hand to gently massage her left breast.)~ */
		
		= @37 /* ~Ohhh, <CHARNAME>... don't stop, take me, harder... harder... oh...!~ */
		
		= @38 /* ~(You increase the pace and strength of your thrusts. Suddenly, Schael lets out a loud moan and cries out your name. You fear that you may have hurt her, and stop your thrusting.)~ */
		
		IF ~~ THEN REPLY @39 /* ~Schael, are you alright? Am I hurting — d-do you want me to stop?~  */
		GOTO XA_LC_CorwinSex1_7
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex1_7
		SAY @40 /* ~(She pulls your head up to hers and gives you a savage kiss.)~ */
		
		= @41 /* ~No, you're not hurting me, but I may hurt you if you stop again. Fuck me, hero! FUCK ME!!~ */
		
		= @42 /* ~(That was all you needed. With a roar, you lift her up with your hands and hips, then turn so that you're on top of her. Using the headboard as leverage, you ferociously and repeatedly penetrate her. She howls in delight as you push and push, meeting your thrusts with thrusts of her own, while her nails rake into your back.)~*/
		
		= @43 /* ~(Together, your animalistic cries reach a new pitch as you near your orgasms, and then you're there. You shudder and scream as you release a truly massive load into her. She scissors her taut, muscled legs around you and pulls you in, draining your member of every last drop.)~*/
		
		= @44 /* ~(This last exertion on her part sends her over the edge, and she moans in ecstasy as the wave of her orgasm sweeps through her, from her head to her toes, crashing through her and carrying her away on a tidal wave of pleasure.)~*/
		
		= @45 /* ~(As you lay there together, you inhale the smells of sweat and sex in the air, and try to comprehend what has just happened. Eventually, you are able to gather yourselves. Your member shrinks to its former size and you pull out of her, but you remain locked in an embrace with her legs wrapped around your hips, and your head resting next to hers.)~ */
		
		= @46 /* ~(Finally, you roll to your left, so that you're laying side by side.)~  */
		
		= @47 /* ~Mm, <CHARNAME>. That was wonderful.~ */
		
		= @48 /* ~(She plants a kiss on your forehead.)~ */
		 
		= @49 /* ~You don't know how much I needed that. Thank you, love.~  */
		
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
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XAEX01EX")
		~
		EXIT
	END
//} #endregion

	//{ #region Corwin Sex 2 - Dialog J-47 - Tested 2023-04-17
	IF ~
		Global("XA_LC_CorwinSex_2", "GLOBAL", 1)
		AreaCheck("XAEXPL02")
		// play romance song
	~ THEN BEGIN XA_LC_XAEXPL02
		SAY @161 /* ~Gods, I've been looking forward to this all day. Help me get this armor off, lover.~ */
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex2_1
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_1
		SAY @55 /* ~(You happily oblige, and watch as Schael gets undressed. The experience is as exhilarating and titilating as the first time the two of you made love. You also undress, and you engage in some sensual and passionate foreplay.)~ */
		
		IF ~
			Gender(Player1, MALE)
		~ THEN GOTO XA_LC_CorwinSex2_1M
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN GOTO XA_LC_CorwinSex2_12
	END	

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_1M
		SAY @58 /* ~(She pushes you back as your cock bobs up and down with eager anticipation.)~  */
		
		= @56 /* @56 = ~Mm. Before we get started. About what we discussed — your fighting skills.~  */
		
		IF ~~ THEN REPLY @57 /* ~You want to discuss this *now*?~ */
		GOTO XA_LC_CorwinSex2_2
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_2
		SAY @59 /* ~Now's as good a time as any. Plus...~ */
		
		= @60 /* ~(She smiles, and gives your member a playful tug.)~ */
		
		= @61 /* ~I think this'll be a lot more fun in the nude.~ */
		
		IF ~~ THEN REPLY @83 /* ~Fine...~ */
		GOTO XA_LC_CorwinSex2_2_Now
		
		IF ~~ THEN REPLY @84 /* ~Can't we do this afterward?~ */
		GOTO XA_LC_CorwinSex2_2_Later
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_2_Now
		SAY @62 /* ~As I was saying earlier, your hand-to-hand skills are lacking, to put it mildly.~ */
		
		= @63 /* ~You can be easily overpowered and controlled by a lesser, but more skilled opponent.~ */
		
		IF ~~ THEN REPLY @64 /* ~Like who?~ */
		GOTO XA_LC_CorwinSex2_3
		
		IF ~~ THEN REPLY @65 /* ~Oh, I doubt that.~ */
		GOTO XA_LC_CorwinSex2_2A
	END
	IF ~~ THEN BEGIN XA_LC_CorwinSex2_2_Later
		SAY @85 /* ~We can do this now, or I can get dressed, find another room, and leave you here to solve that ... (she eyes your throbbing member) ... problem, on your own. Your call, lover.~ */
		
		IF ~~ THEN REPLY @86 /* ~Point taken.~ */
		GOTO XA_LC_CorwinSex2_2_Now
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_2A
		SAY @67 /* ~Doubt it all you want, it doesn't change the fact that you'd lose in a fist fight to someone like...~ */
		
		IF ~~ THEN GOTO XA_LC_CorwinSex2_3
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_3
		SAY @66 /* ~Me, for instance.~ */
		
		IF ~~ THEN REPLY @68 /* ~Schael, I love you, but there's no way you can overpower me. For all of your strength, you're just a woman. A very beautiful, talented and strong woman, but a woman nonetheless.~ */
		GOTO XA_LC_CorwinSex2_4
		
		IF ~~ THEN REPLY @69 /* ~You're capable I'm sure, Schael, but I don't like your chances.~ */
		GOTO XA_LC_CorwinSex2_4
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_4
		SAY @70 /*~Mm, is that so? Tell me something, hero...~ */
		
		= @180 /*~Do you trust me?~*/
		
		IF ~~ THEN REPLY @181 /* ~Of course I do.~ */
		GOTO XA_LC_ChooseSafeWord
		
		IF ~~ THEN REPLY @182 /* ~With my life, you know that.~ */
		GOTO XA_LC_ChooseSafeWord
		
		IF ~~ THEN REPLY @183 /* ~What are you getting at?~ */
		GOTO XA_LC_CorwinSex2_4B
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex2_4B
		SAY @184 /* ~It's a simple enough question. Do you trust me, or not?~*/
		
		IF ~~ THEN REPLY @185 /*~You know I do.~*/
		GOTO XA_LC_ChooseSafeWord
	END
	
	IF ~~ THEN BEGIN XA_LC_ChooseSafeWord
		SAY @186 /* ~Good...~*/
		
		= @198 /*~Now, this might get a little intense. I want you to pick a safe word. If things get to be too much for you, just say the safe word and I'll stop.~*/
		
		IF ~~ THEN REPLY @199 /*~That won't be necessary. I'm sure I can handle whatever you have in store for me.~*/
		GOTO XA_LC_NoSafeWord
		
		IF ~~ THEN REPLY @201 /*~A safe word, eh? How about 'Elephant'?~*/
		DO ~
			SetGlobal("XA_LC_SafeWord", "LOCALS", 1)
		~
		GOTO XA_LC_ChoseElephant
		
		IF ~~ THEN REPLY @202 /*~I like the sound of this... let's use 'Pumpkin' as the safe word.~*/
		DO ~
			SetGlobal("XA_LC_SafeWord", "LOCALS", 2)
		~
		GOTO XA_LC_ChosePumpkin
		
		IF ~~ THEN REPLY @203 /*~I'll choose 'Meadow' as my safe word.~*/
		DO ~
			SetGlobal("XA_LC_SafeWord", "LOCALS", 3)
		~
		GOTO XA_LC_ChoseMeadow
	END

	IF ~~ THEN BEGIN XA_LC_NoSafeWord
		SAY @200 /* ~Suit yourself.~*/
		
		IF ~~ THEN
		GOTO XA_LC_CorwinSex2_4A 
	END

	IF ~~ THEN BEGIN XA_LC_ChoseElephant
		SAY @204 /*~Elephant? Very well...~*/
		
		IF ~~ THEN
		GOTO XA_LC_CorwinSex2_4A
	END
	
	IF ~~ THEN BEGIN XA_LC_ChosePumpkin
		SAY @205 /*~Pumpkin? They're not in season, but I suppose it's as good a word as any...~*/
		
		IF ~~ THEN
		GOTO XA_LC_CorwinSex2_4A
	END
	
	IF ~~ THEN BEGIN XA_LC_ChoseMeadow
		SAY @206 /*~Meadow? Mm... there's nothing quite like laying on the grass on a spring day, under a clear blue sky... One day, you and I should... well. First things first.~*/
		
		IF ~~ THEN
		GOTO XA_LC_CorwinSex2_4A
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_4A
		SAY @207 /* ~Let's get started, then.~ */
		
		= @187 /*~(She widens her stance a bit, places her hands on her hips, and rolls her shoulders forwards and backwards. Slowly, she tenses the muscles in her arms, midsection and legs. You feel your cock become even harder, almost painfully so, as her beautiful breasts bounce slightly while she flexes her pectorals. The sight of her powerful, magnificent physique in all its nude glory causes you gasp in awe.)~*/
		
		= @188 /*~(A smile graces her face as she eyes your wildly-throbbing member...)~*/
		
		= @189 /* ~Mm. I can beat you easily. Come on, try and hit me.~ */
		
		IF ~~ THEN REPLY @71 /* ~Are you serious?~ */
		GOTO XA_LC_CorwinSex2_5
		
		IF ~~ THEN REPLY @73 /* ~Schael, I don't want to see you harmed.~ */
		GOTO XA_LC_CorwinSex2_5
		
		IF ~~ THEN REPLY @190 /*~W-what?~*/
		GOTO XA_LC_CorwinSex2_5
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_5
		SAY @74 /* ~If it makes you feel better, love, I promise you won't hurt me.~  */
		
		IF ~~ THEN REPLY @72 /* ~Fine. You asked for it. (Attack her.)~ */
		GOTO XA_LC_CorwinSex2_6
		
		IF ~~ THEN REPLY @75 /* ~No. I'm not going to hit you.~  */
		GOTO XA_LC_CorwinSex2_5A
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_5A
		SAY @76 /* ~What are you afraid of, hero? Hit me!~ */
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex2_5C
		
		IF ~
			GlobalGT("XA_LC_PlayerSoulStolen", "GLOBAL", 0)
		~
		THEN GOTO XA_LC_CorwinSex2_5B //OK
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_5B
		SAY @77 /* ~Or did Irenicus take your balls, too?~ */
		
		= @78 /* ~(Her last comment sets you off, and you attack.)~ */
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex2_6
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_5C
		SAY @80 /* ~(She stands with her arms crossed just beneath her alluring breasts, and a look of disappointment on her face.)~ */
			
		IF ~~ THEN REPLY @81 /* ~I said no!~ */
		DO ~
			SetGlobal("XA_LCE_WontAttack", "LOCALS", 1)
		~
		GOTO XA_LC_CorwinSex2_5D
		
		IF ~~ THEN REPLY @72 /* ~Fine. You asked for it. (Attack her.)~ */
		GOTO XA_LC_CorwinSex2_6
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_5D
		SAY @79 /* ~Fine. This'll be easier than I thought.~ */
		
		= @82 /* ~(In a swift, fluid motion, she moves toward you and delivers a solid uppercut to your jaw that sends you crashing to the floor.)~ */
		
		IF ~~ THEN
		GOTO XA_LC_CorwinSex2_7
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_6
		SAY @93 /* (You throw a looping right hook to her head. She easily ducks under it, advances forward and delivers a solid uppercut to your jaw that sends you crashing to the floor.) */
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex2_7
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_7A
		SAY @94 /* ~Again, like you mean it this time.~ */
		
		IF ~~ THEN
		GOTO XA_LC_CorwinSex2_7END
	END
	IF ~~ THEN BEGIN XA_LC_CorwinSex2_7B
		SAY @162 /*  ~Good. Now, hit me damnit!~  */
		
		IF ~~ THEN REPLY @152 /* ~Ugh... you asked for it! (Attack her.)~*/
		GOTO XA_LC_CorwinSex2_7END
	END
	IF ~~ THEN BEGIN XA_LC_CorwinSex2_7END
		SAY @95 /* ~(You throw a series of one-two combinations, but she easily dodges or parries your blows. Your throbbing tool flails in all directions as you try and fail to hit her. She laughs.)~ */
		
		= @96 /* ~Not bad. But as much as I like watching that big dick swing around, we're getting nowhere.~*/
		
		= @97 /* ~(You throw another right hook. She dodges, turns her body and grabs your right arm in one motion, then throws you over her back. As you try and scramble back to your feet, she takes your back and puts you into a sleeper hold, then wraps her legs around yours.)~*/
		
		= @98 /* ~Try and break out of this hold, lover.~ */
		
		= @99 /* ~(You're on your left side, with your left arm pinned behind your body. Her right forearm is tight across your neck, with her right hand holding her left bicep. Her left hand is behind your head, pushing it down into her right forearm.)~ */
		
		= @197 /* ~(With your right arm, you try to pull her arm away from your neck, but to your surprise, she doesn't budge. Panicking, you try and use your legs to push yourself forward in an attempt to free your pinned arm, but to no avail; her beautiful, well-muscled legs are wrapped too tightly around yours. Gradually, she increases the pressure of her forearm against your neck, and soon you're on the verge of blacking out.)~
*/
		
		= @100 /* ~Come on, hero. I thought a big, strong man like you couldn't be beaten by a woman.*/
		
		IF ~~ THEN REPLY @155 /*~Ugh... Sch—~*/
		DO ~
			IncrementGlobal("XA_LC_Ordeal", "LOCALS", 1)
		~
		GOTO XA_LC_CorwinSex2_7ENDA
		
		IF ~
			Global("XA_LC_SafeWord", "LOCALS", 1)
		~ THEN REPLY @208 /*El... elephant!*/
		GOTO XA_LC_GiveUp_0
		
		IF ~
			Global("XA_LC_SafeWord", "LOCALS", 2)
		~ THEN REPLY @209 /*Pum... pumpkin!*/
		GOTO XA_LC_GiveUp_0
		
		IF ~
			Global("XA_LC_SafeWord", "LOCALS", 3)
		~ THEN REPLY @210 /*M... meadow!*/
		GOTO XA_LC_GiveUp_0
	END
	
	IF ~~ THEN BEGIN XA_LC_GiveUp_0
		SAY @212 /*~(Hearing you utter the safe word, Schael immediately releases her hold on your neck, and gives you a moment to regain your composure.)~*/
		
		= @213 /*~So, that's it? The real fun hadn't even started.~*/
		
		IF ~~ THEN REPLY @214 /*~Fun for you, maybe, ugh...~*/
		DO ~
			SetGlobal("XA_LCE_UsedSafeWord", "GLOBAL", 1)
		~
		GOTO XA_LC_GiveUp_0_2
	END
	
	IF ~~ THEN BEGIN XA_LC_GiveUp_0_2
		SAY @215 /*~I'm sorry. I was too rough with you. Here, take my hand.~*/
		
		= @216 /*~(She helps you to your feet.)~*/
		
		= @217 /*~You've had a long day. Let's get to bed.~ */
		
		IF ~~ THEN
		DO ~
			StartCutSceneMode()
			StartCutScene("XAEX02E2")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LC_GiveUp_1
		SAY @211 /*~(Hearing you utter the safe word, Schael immediately releases her hold on your neck and genitals, and gives you a moment to regain your composure.)~*/
		
		IF ~~ THEN
		GOTO XA_LC_Released
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex2_7ENDA
		SAY @156 /*~What was that? You *are* a man, aren't you?~*/
		
		= @101 /* ~(In a fluid motion, she shifts her hold so that her left forearm is across your neck, while her right hand moves lower to seize your testicles.)~*/
		
		= @102 /* ~Yep, you're definitely a man, with all of a man's weaknesses.~ */
		
		= @103 /* ~(She squeezes your balls gently at first, then harder.)~ */
		
		= @104 /* ~(Your member shrinks due to the pain, and you frantically try with your right arm to break the vice-like grip she has on your balls. She responds by increasing the pressue on your neck. Your vision becomes dark as you try instead to pull her arm away from your neck, but as you do, she squeezes your jewels harder. Nearly in tears, you cry out in agony.)~ */
		
		IF ~~ THEN REPLY @105 /* ~Schael, y-you're hurting me! Please, stop! Let... aagh...  go!~*/
		DO ~
			IncrementGlobal("XA_LC_Ordeal", "LOCALS", 1)
		~
		GOTO XA_LC_CorwinSex2_8
		
		IF ~
			Global("XA_LC_SafeWord", "LOCALS", 1)
		~ THEN REPLY @208 /*El... elephant!*/
		GOTO XA_LC_GiveUp_1
		
		IF ~
			Global("XA_LC_SafeWord", "LOCALS", 2)
		~ THEN REPLY @209 /*Pum... pumpkin!*/
		GOTO XA_LC_GiveUp_1
		
		IF ~
			Global("XA_LC_SafeWord", "LOCALS", 3)
		~ THEN REPLY @210 /*M... meadow!*/
		GOTO XA_LC_GiveUp_1
	END
	IF ~~ THEN BEGIN XA_LC_CorwinSex2_7
		SAY @87 /* ~(Dazed, you look up and see her standing over you, with her hands on her hips. Satisfied that you aren't getting up any time soon, she takes a seat on the edge of the bed, just next to where you went down.)~*/
		
		= @88 /* ~(She smiles and, using her toes, she fondles your balls and gives the tip of your member a gentle squeeze. Your penis rewards her toes with a steady flow of pre-cum.))~ */
		
		= @89 /* ~(Laughing gleefully, she continues with her footjob, and you moan loudly in pleasure as she brings you closer and closer to the edge.)~ */
		
		= @90 /* ~(Before you can release your seed onto her foot, she stops and gets back on her feet. She walks over and past you, giving you the most amazing, if brief, view of her vagina and ass. Turning toward you, she again places her hands on her hips.)~*/
		
		= @91 /* ~Get up.~ */
		
		= @92 /* ~(With a groan, you shake off the cobwebs and unsteadily get back on your feet.)~*/
		
		IF ~~ THEN
		GOTO XA_LC_CorwinSex2_7A
		
		IF ~
			Global("XA_LCE_WontAttack", "LOCALS", 1)
		~ THEN
		GOTO XA_LC_CorwinSex2_7B
		
		
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_8
		SAY @106 /* ~Hm, is this all that it takes to defeat the hero of Baldur's Gate? I hope not.~ */
		
		= @107 /* ~(She squeezes even harder.)~ */
		
		IF ~~ THEN REPLY @108 /* ~AAAHH!~ */
		DO ~
			IncrementGlobal("XA_LC_Ordeal", "LOCALS", 1)
		~
		GOTO XA_LC_CorwinSex2_9
		
		IF ~
			Global("XA_LC_SafeWord", "LOCALS", 1)
		~ THEN REPLY @208 /*El... elephant!*/
		GOTO XA_LC_GiveUp_1
		
		IF ~
			Global("XA_LC_SafeWord", "LOCALS", 2)
		~ THEN REPLY @209 /*Pum... pumpkin!*/
		GOTO XA_LC_GiveUp_1
		
		IF ~
			Global("XA_LC_SafeWord", "LOCALS", 3)
		~ THEN REPLY @210 /*M... meadow!*/
		GOTO XA_LC_GiveUp_1
	END

	IF ~~ THEN BEGIN XA_LC_Released
		SAY @111 /* ~You see, love? Raw strength and power are not enough to win every fight. You need to learn how and where to apply your strength.~ */
		
		= @112 /* ~(She dismounts you and rises to her feet, while you slowly recover from your ordeal. You're still groggy, and don't notice her standing over your legs until she uses hers to gently move them apart. She kneels, so that her knees are resting against your groin and inner thighs. Unsure of what to expect, your flinch in fear as she suddenly grabs your package once again.)~*/
		
		= @113 /* ~Easy, dear. You'll enjoy this.~ */
		
		= @114 /* ~(Instead of squeezing, she begins to lovingly and gently caress your aching balls, one in each of her skilled hands, while whispering a healing spell. Immediately, the pain in your genitals begins to subside. With her right hand, she softly strokes your member, while she continues to massage your balls with her left. In moments, you're once again sporting a rock hard erection.)~ */
		
		= @167 /*~That's right, love. Just relax...~*/
		
		= @115 /* ~(Her hand, now fully lubricated with your pre-cum, glides effortlessly up and down your shaft, slowly at first, then faster. It takes her less than a minute to force your milky white seed out of you; the first and most powerful blast hits her square in the chest, just above and in between her beautiful breasts. She continues to furiously stroke your cock in the midst of your orgasm, while you moan weakly in submission, defeat, and ... pleasure.)~ */
		
		= @148 /* ~(After rewarding Schael with more and more of its warm and voluminous offering, your penis finally softens in her hands, which are now completely covered in your copious ejaculate. That she's so easily able to dominate you physically and sexually is equal parts humiliating and erotic, you think to yourself.)~ */
		
		= @153 /* ~(She looks down at her chest as your cum slowly drips down between her breasts, and onto the ridges of her sculpted abdominal muscles.)~ */
		
		= @154 /* ~Heh... looks like you finally managed to land a clean shot, hero. What a mess.~ */
		
		= @157 /*~(She again rises to her feet, then lays down on a carpeted area of the floor directly across from you. As you continue your recovery from your beating and subsequent orgasm, you hear Schael moaning, softly at first, then louder.)~  */
		
		= @158 /* ~(You lift your head and look to her; she's on her back, with her left leg raised and bent at the knee, so that her heel is flat on the floor. Another sensual moan leaves her lips, while she uses left hand to massage her breasts. Her right hand, meanwhile, is occupied with the delightful task of fingering her most private area.)~*/
		
		= @119 /* ~Ohhh... <CHARNAME>... my man... my love... my... my hero! Ohh! OHH!~*/
		
		= @120 /* ~(The sight and sound of Schael pleasuring herself while moaning your name is enough to reinvigorate you, and you summon your recovered strength to get to your feet. Standing over her, you begin to stroke your tool back to life.)~*/
		
		= @149 /*~(Although mere minutes have passed since you experienced one of the most powerful orgasms of your young life, your virility is such that your cock begins to harden, in response to both your physical stimulation and Schael's seductive, stunning beauty. Lustily eyeing your growing, throbbing cock, she spreads her powerful legs and invites you in.)~*/
		
		= @121 /* ~Give it to me, lover! Show me how a hero fucks his woman!~ [xalce120] */
		
		= @122 /*  ~(You immediately mount her and ram your member deep inside of her. She's extraordinarily tight, and the feeling is exquisite. You passionately kiss as you increase and try to synchronize the pace of your thrusts.)~ */
		
		= @123 /*  ~(Once your thrusts are in sync, you fondle and then squeeze Schael's ample breasts, which are still wet from your previous explosion. The combined sensation of your forceful penetration and compression of her breasts is enough to send her over the edge. Screaming wildly in pleasure, she arches her body as she experiences an earth-shattering climax.)~ */
		
		= @124 /*  ~(With a few more savage thrusts, you reach your own orgasm. Schael, still recovering from her orgasm, weakly scissors her legs around your waist as you release your semen deep inside of her.)~  */
		
		= @125 /* ~(You pull out of Schael and roll over, so that you're laying side by side on the carpeted floor. Just in case she has any more ideas, you decide to cover your still twitching package with your hands. She gets up first, and groggily walks over and falls into bed. You follow her and similarly collapse into bed.)~ */
		
		= @126 /* ~(Completely exhausted, you both sleep soundly... for a while at least. After a couple of hours, you find yourself awake in bed and turn to look at Schael. Your mind is filled with thoughts of how much this beautiful, strong and incredible woman has changed your life for the better, and the confluence of events that've led you to each other.)~*/
		
		IF ~~ THEN REPLY @127 /* ~My love? Are you awake?~ */ 
		GOTO XA_LC_CorwinSex2_10
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_9
		SAY @109 /* ~(You let out a high pitch scream that she quickly silences by increasing the pressure on your neck. Your vision darkens again, and one last, pitiful shudder marks the end of your feeble attempts at resistance. Thoroughly beaten, you unclench your fists in an involuntary sign of surrender, and lay still.)~ */
		
		= @110 /* ~(Just as you are about to lose consciousness, she mercifully releases her grip on your genitals and loosens her choke hold. You feel your blood rush back into your head, and you regain your lucidity.)~ */
		
		IF ~~ THEN 
		GOTO XA_LC_Released
		
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_10
		SAY @128 /*  ~(She slowly opens her eyes.)~ */
		
		= @129 /*~Mmm, yes hon.~*/
		
		= @130 /*~I hope I wasn't too rough with you earlier.~*/
		
		IF ~~ THEN REPLY @131 /* ~You were, a little, but ... how do I say this. I'm finding more and more that I enjoy being, ah, under your control in the bedroom.~*/
		GOTO XA_LC_CorwinSex2_10A
		
		IF ~~ THEN REPLY @132 /* ~No, you were *amazing* Schael. You certainly know how to keep things interesting in the bedroom.~*/
		GOTO XA_LC_CorwinSex2_10B
		
		IF ~
			Global("XA_LC_SafeWord", "LOCALS", 0)
		~ THEN REPLY @133 /* ~We'll need a safe word next time for sure.~ */
		GOTO XA_LC_CorwinSex2_10C
		
		IF ~
			GlobalGT("XA_LC_SafeWord", "LOCALS", 0)
		~ THEN REPLY @218 /*~It's a good thing I had that safe word...~*/
		GOTO XA_LC_CorwinSex2_10C
		
		IF ~~ THEN REPLY @191 /* ~I haven't felt that helpless since I was captured by Irenicus.~ */
		GOTO XA_LC_CorwinSex2_10D
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_10A
		SAY @134 /* ~(She smiles.)~ */
		
		= @135 /* ~Somehow I knew that you're the type of man that would appreciate being controlled by a woman.~ */
		
		IF ~~ THEN REPLY @139 /* ~So, what did I do wrong? How was I supposed to break out of that hold?~*/
		GOTO XA_LC_CorwinSex2_11
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_10B
		SAY @134 /* ~(She smiles.)~ */
		
		= @136 /* ~Variety is the spice of life, my love. I'd hate for our love life to become boring. Somehow... ~ */
		
		= @137 /* ~(She playfully pats your inert member.)~*/
		
		= @138 /* ~... I dont think we'll need to worry about that.~ */
		
		IF ~~ THEN REPLY @139 /* ~So, what did I do wrong? How was I supposed to break out of that hold?~*/
		GOTO XA_LC_CorwinSex2_11
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_10C
		SAY @140 /* ~I'm sorry. I guess I got a little carried away.~ */
		
		IF ~~ THEN REPLY @139 /* ~So, what did I do wrong? How was I supposed to break out of that hold?~*/
		GOTO XA_LC_CorwinSex2_11
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex2_10D
		SAY @192 /*~I... I don't know what to say. The last thing I wanted was for you to relive that nightmare. Forgive me, love.~*/
		
		IF ~~ THEN REPLY @193 /*~I know that wasn't your intent, and... I'm ashamed to admit it, but I enjoyed it, Schael.~*/
		GOTO XA_LC_CorwinSex2_10E
		
		IF ~~ THEN REPLY @139 /* ~So, what did I do wrong? How was I supposed to break out of that hold?~*/
		GOTO XA_LC_CorwinSex2_11
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_10E
		SAY @194 /*~Don't feel ashamed, dear. We all have our own little fantasies and... fetishes. What's important is that we trust each other enough to explore them, together.~ */
		
		IF ~~ THEN REPLY @195 /*~Ah, I understand. That's why you asked me if I trusted you. I still do — now, more than ever.~*/
		GOTO XA_LC_CorwinSex2_10F
	END
	
	IF ~~ THEN BEGIN XA_LC_CorwinSex2_10F
		SAY @196 /*~(She leans in and kisses you on the cheek.)~*/
		
		IF ~~ THEN REPLY @139 /* ~So, what did I do wrong? How was I supposed to break out of that hold?~*/
		GOTO XA_LC_CorwinSex2_11
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_11
		SAY @141 /* ~You needed to shift your weight and turn your body to free your left arm. If you'd done that, you probably would've been able to pry my right arm away and break the hold over your neck. Also, when I was holding your neck with one arm, you should've been able to break free. Instead, you tried to free those big, beautiful balls of yours from my grip.~*/
		
		= @142 /* ~Not that I blame you. They're quite precious, after all.~  */
		
		= @143 /* ~(She reaches over and gently massages your package. The pain from earlier is completely gone, and you feel a twitch as your member begins to awaken from its slumber.)~ */
		
		= @144 /* ~Come on, get up. There are a few more things I need to show you.~ */
		
		= @145 /* ~(You spend the rest of the time going over a series of choke holds, leg locks, and armbars. She teaches you how to apply them, and how to break free from them. It'll take several years of practice before you're as proficient as she is, but you feel that the knowledge she's imparted to you has already increased your fighting ability.)~  */
		
		= @146 /* ~(During the lessons, it was difficult at times to focus, as the now familiar, strangely comforting feeling of being under Schael's total control sent your arousal through the roof.)~*/
		
		IF ~~ THEN 
		GOTO XA_LC_CorwinSex2_12
	END

	IF ~~ THEN BEGIN XA_LC_CorwinSex2_12
		SAY @147 /* ~(Once the lessons has concluded, you eagerly made love to each other yet again, before finally falling asleep.)~ */
		
		IF ~~ THEN
		DO ~
			StartCutSceneMode()
			StartCutScene("XAEX02EX")
		~
		EXIT
	END
	//} 

END
//}

