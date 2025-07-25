BEGIN XACOREX2
	//{ #region Corwin Sex 2 - Dialog J-47 - Tested 2023-04-17

	//{ Shared
		IF ~
			Global("XA_LC_CorwinSex_2", "GLOBAL", 1)
			AreaCheck("XAEXPL02")
			// play romance song
		~ THEN BEGIN XA_LC_CorwinSex2_2
			SAY @56 /* @56 = ~Mm. Before we get started. About what we discussed — your fighting skills.~  */
		
			IF ~
				Gender(Player1, MALE)
			~ THEN REPLY @57 /* ~You want to discuss this *now*?~ */
			DO ~
				SetGlobal("XA_LCE_TS_Prep", "MYAREA", 3)
			~	
			GOTO XA_LC_CorwinSex2_2M
			
			IF ~
				Gender(Player1, FEMALE)
			~ THEN REPLY @57 /* ~You want to discuss this *now*?~ */
			DO ~
				SetGlobal("XA_LCE_TS_Prep", "MYAREA", 3)
			~	
			GOTO XA_LC_CorwinSex2_2F
			
			IF ~~ THEN REPLY @399 /*~Ah, right. You told me you didn't like what you were seeing.~ */
			GOTO XA_LC_CorwinSex2_2_Now
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_2_Now
			SAY @62 /* ~As I was saying earlier, your hand-to-hand skills are lacking, to put it mildly.~ */
			
			= @63 /* ~You can be easily overpowered and controlled by a lesser, but more skilled opponent.~ */
			
			IF ~~ THEN REPLY @64 /* ~Like who?~ */
			GOTO XA_LC_CorwinSex2_3
			
			IF ~~ THEN REPLY @65 /* ~Oh, I doubt that.~ */
			GOTO XA_LC_CorwinSex2_2A
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_2A
			SAY @67 /* ~Doubt it all you want, it doesn't change the fact that you'd lose in a fist fight to someone like...~ */
			
			IF ~~ THEN GOTO XA_LC_CorwinSex2_3
		END

		IF ~~ THEN BEGIN XA_LC_CorwinSex2_3
			SAY @66 /* ~Me, for instance.~ */
			
			IF ~
				Gender(Player1, MALE)
			~ THEN REPLY @68 /* ~Schael, I love you, but there's no way you can overpower me. For all of your strength, you're just a woman. A very beautiful, talented and strong woman, but a woman nonetheless.~ */
			GOTO XA_LC_CorwinSex2_4
			
			IF ~
				Gender(Player1, FEMALE)
			~ THEN REPLY @301 /*~Schael, I love you, but there's no way you can overpower me. I am the daughter of a god... for all of your strength, you're just a woman. A very beautiful, talented and strong woman, but a woman nonetheless.~*/
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
			
			IF ~~ THEN REPLY @382 /*~After all that we've been through, you more than any other have earned my trust.~*/
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
			
			IF ~
				Gender(Player1, MALE)
			~
			THEN GOTO XA_LC_CorwinSex2_4A_M
			
			IF ~
				Gender(Player1, FEMALE)
			~
			THEN GOTO XA_LC_CorwinSex2_4A_F
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_5_Select
			SAY @189 /* ~Mm. I can beat you easily. Come on, try and hit me.~ */
			
			IF ~~ THEN REPLY @71 /* ~Are you serious?~ */
			GOTO XA_LC_CorwinSex2_5
			
			IF ~~ THEN REPLY @73 /* ~Schael, I don't want to see you harmed.~ */
			GOTO XA_LC_CorwinSex2_5
			
			IF ~~ THEN REPLY @190 /*~W-what?~*/
			GOTO XA_LC_CorwinSex2_5

		END

		IF ~~ THEN BEGIN XA_LC_CorwinSex2_5
			SAY @74 /* ~If it makes you feel better, love, I promise you won't hurt me.~  */
			
			IF ~
				Gender(Player1, MALE)
			~ THEN REPLY @72 /* ~Fine. You asked for it. (Attack her.)~ */
			GOTO XA_LC_CorwinSex2_6M
			
			IF ~
				Gender(Player1, FEMALE)
			~ THEN REPLY @72 /* ~Fine. You asked for it. (Attack her.)~ */
			GOTO XA_LC_CorwinSex2_6F
			
			IF ~~ THEN REPLY @75 /* ~No. I'm not going to hit you.~  */
			GOTO XA_LC_CorwinSex2_5A
		END

		IF ~~ THEN BEGIN XA_LC_CorwinSex2_5A
			SAY @76 /* ~What are you afraid of, hero? Hit me!~ */
			
			IF ~~ THEN 
			GOTO XA_LC_CorwinSex2_5C
			
			IF ~
				Gender(Player1, MALE)
				GlobalGT("XA_LC_PlayerSoulStolen", "GLOBAL", 0)
			~
			THEN GOTO XA_LC_CorwinSex2_5B //OK
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_5C
			SAY @80 /* ~(She stands with her arms crossed just beneath her alluring breasts, and a look of disappointment on her face.)~ */
				
			IF ~
				Gender(Player1, MALE)
			~ THEN REPLY @81 /* ~I said no!~ */
			DO ~
				SetGlobal("XA_LCE_WontAttack", "LOCALS", 1)
			~
			GOTO XA_LC_CorwinSex2_5D
			
			IF ~
				Gender(Player1, FEMALE)
			~ THEN REPLY @81 /* ~I said no!~ */
			DO ~
				SetGlobal("XA_LCE_WontAttack", "LOCALS", 1)
			~
			GOTO XA_LC_CorwinSex2_5D_F
			
			IF ~
				Gender(Player1, MALE)
			~ THEN REPLY @72 /* ~Fine. You asked for it. (Attack her.)~ */
			GOTO XA_LC_CorwinSex2_6M
			
			IF ~
				Gender(Player1, FEMALE)
			~ THEN REPLY @72 /* ~Fine. You asked for it. (Attack her.)~ */
			GOTO XA_LC_CorwinSex2_6F
		END
		
		IF ~~ THEN BEGIN XA_LC_Technique
			SAY @383 /*~My father began teaching me at a young age, not long after my mother died. Given *how* she died, he didn't want me to become a victim, too.~*/
			
			IF ~
				GlobalLT("XA_LCE_MothersName", "LOCALS", 1)
			~ THEN REPLY @384 /*~What was her name?~*/
			DO ~
				SetGlobal("XA_LCE_MothersName", "LOCALS", 1)
			~
			GOTO XA_LC_MothersName
			
			IF ~
				GlobalLT("XA_LCE_MotherDied", "LOCALS", 1)
			~ THEN REPLY @386 /*~How she died? What do you mean?~*/
			DO ~
				SetGlobal("XA_LCE_MotherDied", "LOCALS", 1)
			~
			GOTO XA_LC_HowDied
		END
		
		IF ~~ THEN BEGIN XA_LC_HowDied
			SAY @387 /*~Well, the perp mugged her, then tried to ... you know. When she fought back, he killed her.~*/
			
			= @391 /*~When she didn't come home, my father gathered a team to look for her. He and the other gauntlets searched everywhere... but by the time they found her body, it was too late for the temples to do anything for her.~ */
			
			IF ~
				GlobalLT("XA_LCE_FoundKiller", "LOCALS", 1)
			~ THEN REPLY @392 /*~Did they find the one responsible?~*/
			DO ~
				SetGlobal("XA_LCE_FoundKiller", "LOCALS", 1)
			~
			GOTO XA_LC_Responsible
			
			IF ~
				GlobalLT("XA_LCE_MothersName", "LOCALS", 1)
			~ THEN REPLY @394 /*~I'm sorry. That couldn't have been easy. What was her name?~*/
			DO ~
				SetGlobal("XA_LCE_MothersName", "LOCALS", 1)
			~
			GOTO XA_LC_MothersName
			
			IF ~
				GlobalLT("XA_LCE_MomProud", "LOCALS", 1)
			~ THEN REPLY @390 /*~I'm sure she'd be proud of the woman you've become.~*/
			DO ~
				SetGlobal("XA_LCE_MomProud", "LOCALS", 1)
			~
			GOTO XA_LC_MomWouldBeProud
			
			IF ~
				GlobalLT("XA_LCE_ParentsKilled", "LOCALS", 1)
			~ THEN REPLY @401 /*~The pain of losing a parent in such a way... I'm afraid I know it all too well.~*/
			DO ~
				SetGlobal("XA_LCE_ParentsKilled", "LOCALS", 1)
			~
			GOTO XA_LC_ParentsKilled
		END
		
		IF ~~ THEN BEGIN XA_LC_ParentsKilled
			SAY @402  /*~My father and I at least had each other... we were able to make it through, together. You didn't have anyone, yet you persevered.~*/
			
			= @403 /*~It's just another reason why I and so many others admire you, my love.~*/
			
			= @404 /*~(She plants a soft kiss on your cheek.)~*/
			
			COPY_TRANS XACOREX2 XA_LC_HowDied
			
			IF ~
				Gender(Player1, FEMALE)
			~ THEN REPLY @139 /*~I understand... so, how was I supposed to break out of that hold?~*/
			GOTO XA_LC_CorwinSex2_8F
			
			IF ~
				Gender(Player1, MALE)
			~ THEN REPLY @139 /* ~So, what did I do wrong? How was I supposed to break out of that hold?~*/
			GOTO XA_LC_CorwinSex2_11
		END
		
		IF ~~ THEN BEGIN XA_LC_Responsible
			SAY @393 /*~They did. He was a common thug, and a follower of Cyric.~ */
			
			= @395 /*~Duke Eltan was gracious enough to allow my father to carry out the sentence.~*/
			
			COPY_TRANS XACOREX2 XA_LC_HowDied
			
			IF ~
				Gender(Player1, FEMALE)
			~ THEN REPLY @320 /*~I understand... so, how was I supposed to break out of that hold?~*/
			GOTO XA_LC_CorwinSex2_8F
			
			IF ~
				Gender(Player1, MALE)
			~ THEN REPLY @139 /* ~So, what did I do wrong? How was I supposed to break out of that hold?~*/
			GOTO XA_LC_CorwinSex2_11
		END
		
		IF ~~ THEN BEGIN XA_LC_MothersName
			SAY @385 /*~Her name was Ilara.~*/
			
			= @389 /*~I don't remember much of her, beyond her face... my father keeps a portrait of her on the mantle.~ */
			
			COPY_TRANS XACOREX2 XA_LC_HowDied
			
			IF ~
				Gender(Player1, FEMALE)
			~ THEN REPLY @320 /*~I understand... so, how was I supposed to break out of that hold?~*/
			GOTO XA_LC_CorwinSex2_8F
			
			IF ~
				Gender(Player1, MALE)
			~ THEN REPLY @139 /* ~So, what did I do wrong? How was I supposed to break out of that hold?~*/
			GOTO XA_LC_CorwinSex2_11
		END
		
		IF ~~ THEN BEGIN XA_LC_MomWouldBeProud
			SAY @396 /*~Sweet of you to say... I imagine Gorion would be equally proud of you.~*/
			
			= @397 /*~I imagine Gorion would be equally proud of you.~*/
			
			COPY_TRANS XACOREX2 XA_LC_HowDied
			
			IF ~
				Gender(Player1, FEMALE)
			~ THEN REPLY @361 /*So, what should I have done to break out of that hold?~*/
			GOTO XA_LC_CorwinSex2_8F
			
			IF ~
				Gender(Player1, MALE)
			~ THEN REPLY @139 /* ~So, what did I do wrong? How was I supposed to break out of that hold?~*/
			GOTO XA_LC_CorwinSex2_11
		END
	//}

	//{ M/F
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_2M
			SAY @59 /* ~Now's as good a time as any. Plus...~ */
			
			= @60 /* ~(She smiles, and gives your member a playful tug.)~ */
			
			= @61 /* ~I think this'll be a lot more fun in the nude.~ */
			
			IF ~~ THEN REPLY @83 /* ~Fine...~ */
			GOTO XA_LC_CorwinSex2_2_Now
			
			IF ~~ THEN REPLY @84 /* ~Can't we do this afterward?~ */
			GOTO XA_LC_CorwinSex2_2M_Later
		END

		IF ~~ THEN BEGIN XA_LC_CorwinSex2_2M_Later
			SAY @85 /* ~We can do this now, or I can get dressed, find another room, and leave you here to solve that ... (she eyes your throbbing member) ... problem, on your own. Your call, lover.~ */
			
			IF ~~ THEN REPLY @86 /* ~Point taken.~ */
			GOTO XA_LC_CorwinSex2_2_Now
		END

		IF ~~ THEN BEGIN XA_LC_CorwinSex2_4A_M
			SAY @187 /*~(She widens her stance a bit, places her hands on her hips, and rolls her shoulders forwards and backwards. Slowly, she tenses the muscles in her arms, midsection and legs. You feel your cock become even harder, almost painfully so, as her beautiful breasts bounce slightly while she flexes her pectorals. The sight of her powerful, magnificent physique in all its nude glory causes you gasp in awe.)~*/
			
			= @188 /*~(A smile graces her face as she eyes your wildly-throbbing member...)~*/
			
			IF ~~ THEN
			GOTO XA_LC_CorwinSex2_5_Select
		END

		IF ~~ THEN BEGIN XA_LC_CorwinSex2_5B
			SAY @77 /* ~Or did Irenicus take your balls, too?~ */
			
			= @78 /* ~(Her last comment sets you off, and you attack.)~ */
			
			IF ~~ THEN 
			GOTO XA_LC_CorwinSex2_6M
		END


		IF ~~ THEN BEGIN XA_LC_CorwinSex2_5D
			SAY @79 /* ~Fine. This'll be easier than I thought.~ */
			
			= @82 /* ~(In a swift, fluid motion, she moves toward you and delivers a solid uppercut to your jaw that sends you crashing to the floor.)~ */
			
			IF ~~ THEN
			GOTO XA_LC_CorwinSex2_7
		END

		IF ~~ THEN BEGIN XA_LC_CorwinSex2_6M
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
		
			= @197 /* ~(With your right arm, you try to pull her arm away from your neck, but to your surprise, she doesn't budge. Panicking, you try and use your legs to push yourself forward in an attempt to free your pinned arm, but to no avail; her beautiful, well-muscled legs are wrapped too tightly around yours. Gradually, she increases the pressure of her forearm against your neck, and soon you're on the verge of blacking out.)~*/
			
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
			
			IF ~~ THEN REPLY @400 /*~*pant* You call that fun?~ */
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
			
			IF ~~ THEN REPLY @398 /*~I never imagined I could be subdued so easily.~*/
			GOTO XA_LC_Technique
		END

		IF ~~ THEN BEGIN XA_LC_CorwinSex2_10B
			SAY @134 /* ~(She smiles.)~ */
			
			= @136 /* ~Variety is the spice of life, my love. I'd hate for our love life to become boring. Somehow... ~ */
			
			= @137 /* ~(She playfully pats your inert member.)~*/
			
			= @138 /* ~... I dont think we'll need to worry about that.~ */
			
			COPY_TRANS XACOREX2 XA_LC_CorwinSex2_10A
		END

		IF ~~ THEN BEGIN XA_LC_CorwinSex2_10C
			SAY @140 /* ~I'm sorry. I guess I got a little carried away.~ */
			
			COPY_TRANS XACOREX2 XA_LC_CorwinSex2_10A
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_10D
			SAY @192 /*~I... I don't know what to say. The last thing I wanted was for you to relive that nightmare. Forgive me, love.~*/
			
			IF ~~ THEN REPLY @193 /*~I know that wasn't your intent, and... I'm ashamed to admit it, but I enjoyed it, Schael.~*/
			GOTO XA_LC_CorwinSex2_10E
			
			COPY_TRANS XACOREX2 XA_LC_CorwinSex2_10A
		END

		IF ~~ THEN BEGIN XA_LC_CorwinSex2_10E
			SAY @194 /*~Don't feel ashamed, dear. We all have our own little fantasies and... fetishes. What's important is that we trust each other enough to explore them, together.~ */
			
			IF ~~ THEN REPLY @195 /*~Ah, I understand. That's why you asked me if I trusted you. I still do — now, more than ever.~*/
			GOTO XA_LC_CorwinSex2_10F_M
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_10F_M
			SAY @196 /*~(She leans in and kisses you on the cheek.)~*/
			
			COPY_TRANS XACOREX2 XA_LC_CorwinSex2_10A
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

	//{ F/F		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_2F
			SAY @59 /* ~Now's as good a time as any. Plus...~ */
			
			= @299 /*~(She smiles, and reaches down to stroke your clit.)~*/
			
			= @61 /*~I think this'll be a lot more fun in the nude.~ */
			
			IF ~~ THEN REPLY @83 /*Fine*/
			GOTO XA_LC_CorwinSex2_2_Now
			
			IF ~~ THEN REPLY @84 /*~Can't we do this afterward?~*/
			GOTO XA_LC_CorwinSex2_2F_Later
		END

		IF ~~ THEN BEGIN XA_LC_CorwinSex2_2F_Later
			SAY @300 /*~We can do this now, or I can get dressed, find another room, and leave you here to solve that ... (she eyes your throbbing clit) ... problem, on your own. Your call, lover.~  */
			
			IF ~~ THEN REPLY @86 /*~Point taken.~*/
			GOTO XA_LC_CorwinSex2_2_Now
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_4A_F
			SAY @302 /*~(She widens her stance a bit, places her hands on her hips, and rolls her neck and shoulders. Slowly, seductively, she tenses the muscles in her arms, midsection and legs. She smiles as you stand there with your mouth agape, and you notice a slight bounce in her beautiful breasts as she tenses her pectorals. Your arousal causes your nipples to harden, and it takes nearly all of your willpower to resist fingering your wetness in response to Schael's fantastic exhibition of her physique.)~*/
			
			IF ~~ THEN
			GOTO XA_LC_CorwinSex2_5_Select
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_5D_F
			SAY @303/*~(Without another word, she delivers an open-handed slap to your face. Although you can tell that she held back, it stings nevertheless, and you instinctively move your hand to cover your cheek. )~ */
			
			= @304 /*~*Now* will you hit me? Or do I need to slap those gorgeous tits as well?~ */
			
			IF ~~ THEN REPLY @72 /* ~Fine. You asked for it! (Attack her.)~*/
			GOTO XA_LC_CorwinSex2_6F
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_6F
			SAY @305 /* ~(You throw a long, looping hook at Schael, which she easily avoids.)~*/
			
			= @306 /*~You call that a punch? This is going to be more work than I thought. Try again, this time like you mean it.~*/
			
			= @307 /*~(Determined to wipe the smirk off of her face, you throw a right cross directly toward her nose, which she parries effortlessly.)~*/
			
			= @308 /*~Is that the best you've got? You hit like a girl!~*/
			
			= @309 /*~(Flush with embarrassment, you throw a series of one-two combinations, but she easily dodges or parries your blows. Your tits flail in all directions as you try and fail to hit her. She laughs.)~  */
			
			= @310 /*~A bit better. But as much as I enjoy watching those tits swing around, we're getting nowhere.~ */
			
			= @311 /*~(You throw another right hook. She dodges, turns her body and grabs your right arm in one motion, then throws you over her back. Landing with a loud and painful thud, you become disoriented as you try and scramble back to your feet. Schael quickly takes your back and puts you into a sleeper hold, then wraps her powerful legs around yours.)~*/
			
			= @98 /*~Try and break out of this hold, lover.~ */
			
			= @99 /*~(You're on your left side, with your left arm pinned behind your body. Her right forearm is tight across your neck, with her right hand holding her left bicep. You feel her left hand behind your head, pushing it down into her right forearm.)~*/
			
			= @197 /* ~(With your right arm, you try to pull her arm away from your neck, but to your surprise, she doesn't budge. Panicking, you try and use your legs to push yourself forward in an attempt to free your pinned arm, but to no avail; her beautiful, well-muscled legs are wrapped too tightly around yours. Gradually, she increases the pressure of her forearm against your neck, and soon you're on the verge of blacking out.)~*/
			
			= @106 /* ~Hm, is this all that it takes to defeat the hero of Baldur's Gate? I hope not.~ [xalce117]*/
			
			IF ~~ THEN REPLY @155 /*~Ugh... Sch—~*/
			DO ~
				IncrementGlobal("XA_LC_Ordeal", "LOCALS", 1)
			~
			GOTO XA_LC_CorwinSex2_7F
			
			IF ~
				Global("XA_LC_SafeWord", "LOCALS", 1)
			~ THEN REPLY @208 /*El... elephant!*/
			GOTO XA_LC_GiveUp_0_F
			
			IF ~
				Global("XA_LC_SafeWord", "LOCALS", 2)
			~ THEN REPLY @209 /*Pum... pumpkin!*/
			GOTO XA_LC_GiveUp_0_F
			
			IF ~
				Global("XA_LC_SafeWord", "LOCALS", 3)
			~ THEN REPLY @210 /*M... meadow!*/
			GOTO XA_LC_GiveUp_0_F
		END
		
		IF ~~ THEN BEGIN XA_LC_GiveUp_0_F
			SAY @212 /*~(Hearing you utter the safe word, Schael immediately releases her hold on your neck, and gives you a moment to regain your composure.)~*/
			
			IF ~~ THEN
			GOTO XA_LC_ChokeEnd_F
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_7F
			SAY @312 /*~(In a fluid motion, she shifts her hold so that her left forearm is across your neck, while her right hand moves lower to vigorously stroke your engorged sex. In spite of your predicament, you feel a kind of sexual euphoria flow through you as you realize you are completely under her control.)~*/
			
			= @313 /*~Will you cum before I ...~*/
			
			= @314 /*~(Her voice trails off as you feel yourself begin to lose consciousness. The only thing you can sense — besides the darkness overtaking you — is the pleasurable sensation of her fingering, followed by the fiery surge of a momentous climax.)~*/
			
			= @315 /*~(Whether Schael released her hold over your neck before, during, or after your orgasm, you cannot tell, but you're glad that she did. You feel the blood quickly rush back into your face as you regain your lucidity.)~ */
			
			= @316 /*~(Schael easily lifts you into her arms and carries you to bed. The look of love and concern in her eyes is in stark contrast to the fiery intensity shown during your sparring session. In spite of her physical and sexual dominance over you, you do not feel any fear; instead, you feel a profound sense of safety while in her powerful arms, as though she wouldn't let anything or anyone bring you harm. She places you down into bed, and slowly licks your cum from her right hand.)~ */
			
			IF ~~ THEN
			DO ~
				SetGlobal("XA_LCE_HeroCameWhileChoked", "LOCALS", 1)
			~
			GOTO XA_LC_ChokeEnd_F
		END
		
		IF ~~ THEN BEGIN XA_LC_ChokeEnd_F
			SAY @317 /*~You see, love? Raw power isn't enough to win every fight. You need to learn how and where to apply that power.~*/
			
			IF ~~ THEN REPLY @318 /*~Ugh... you could have just told me that.~*/
			GOTO XA_LC_CorwinSex2_7FA
			
			IF ~~ THEN REPLY @320 /*~I understand... so, how was I supposed to break out of that hold?~*/
			GOTO XA_LC_CorwinSex2_8F
			
			IF ~~ THEN REPLY @398 /*~I never imagined I could be subdued so easily. Where did you learn that choke hold?~*/
			GOTO XA_LC_Technique
		END
		
		
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_7FA
			SAY @319 /*~Well, experience IS the best teacher, or so they say.~*/
			
			IF ~~ THEN REPLY @361 /*~So, what should I have done to break out of that hold?~ */
			GOTO XA_LC_CorwinSex2_8F
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_8F
			SAY @321 /*~You needed to shift your weight and turn your body to free your left arm. If you'd done that, you probably would've been able to pry my right arm away and break the hold over your neck. Also, when I was holding your neck with one arm, you should've been able to break free. I was surprised you didn't. Maybe...~*/
			
			IF ~
				Global("XA_LCE_HeroCameWhileChoked", "LOCALS", 1)
			~ THEN REPLY @322 /*~Maybe I liked it...~*/
			GOTO XA_LC_CorwinSex2_9F_Orgasm
			
			IF ~
				Global("XA_LCE_HeroCameWhileChoked", "LOCALS", 1)
			~ THEN REPLY @323 /*~I tried, I really did. You're just too strong for me.~*/
			GOTO XA_LC_CorwinSex2_9F_Orgasm
			
			IF ~
				Global("XA_LCE_HeroCameWhileChoked", "LOCALS", 1)
			~ THEN REPLY @362 /*...*/
			GOTO XA_LC_CorwinSex2_9F_Orgasm
			
			IF ~
				GlobalLT("XA_LCE_HeroCameWhileChoked", "LOCALS", 1)
			~ THEN REPLY @322 /*~Maybe I liked it...~*/
			GOTO XA_LC_CorwinSex2_9F
			
			IF ~
				GlobalLT("XA_LCE_HeroCameWhileChoked", "LOCALS", 1)
			~ THEN REPLY @323 /*~I tried, I really did. You're just too strong for me.~*/
			GOTO XA_LC_CorwinSex2_9F
			
			IF ~
				GlobalLT("XA_LCE_HeroCameWhileChoked", "LOCALS", 1)
			~ THEN REPLY @362 /*...*/
			GOTO XA_LC_CorwinSex2_9F
		END

		IF ~~ THEN BEGIN XA_LC_CorwinSex2_9F
			SAY @347 /* ~(She moves her head next to yours, and gives you a kiss.)~  */
			
			IF ~~ THEN 
			GOTO XA_LC_CorwinSex2_9F_End
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_9F_Orgasm
			SAY @324 /*~(She moves her head next to yours, and gives you a kiss. On her tongue, you can taste a hint of the saltiness left behind from your own juices.)~*/
			
			IF ~~ THEN 
			GOTO XA_LC_CorwinSex2_9F_End
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_9F_End
			SAY @144 /*~Come on, get up. There are a few more things I need to show you.~*/
			
			= @145 /*~(You spend the rest of the time going over a series of choke holds, leg locks, arm bars, and other techniques to quickly subdue an opponent. She teaches you how to apply them, and how to break free from them. It'll take several years of practice before you're as proficient as she is, but you feel that the knowledge she's imparted to you has already increased your fighting ability.)~*/
			
			= @325 /*~(During the lessons, it was difficult at times to focus as the now familiar, strangely comforting feeling of being under Schael's total control sent your arousal into overdrive. The only thing keeping it in check was your growing fatigue; never in your life had you taken part in such a strenuous and intense workout.)*/
			
			= @326 /* ~Whew, that was quite the session. I'm impressed that you were able to keep up with me.~*/
			
			IF ~~ THEN REPLY @327 /* ~Gods, I'm so sore... my back, arms, legs... my everything hurts!~*/
			GOTO XA_LC_CorwinSex2_10F
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_10F
			SAY @328 /*~I can help with that. Go and lay on the bed, face down.~ */
			
			= @329 /* ~(As instructed, you gingerly walk to the bed and lay down. Schael joins you and you can feel her straddle your body. You can her her whisper something... it sounds like a healing spell, or some kind of variation of one.)~*/
			
			= @330 /* ~You're going to enjoy this.~ */
			
			= @331/* ~(She begins to gently massage your shoulder and back muscles. To say that her touch is soothing is an understatement; the pain in those areas subsides, and is replaced with a kind of pulsing, warm, caressing sensation, that persists even after her hands have moved to a different part of your aching body. Slowly, she works toward your midsection, ass, hamstrings, calves, and finally, your feet.)~*/
			
			IF ~~ THEN REPLY @332 /* ~Oh... Schael, this feels amazing.~*/
			GOTO XA_LC_CorwinSex2_10F_Part2
		END
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_10F_Part2
			SAY @333/* ~I know, love. Turn around. I need to work on your other side.~*/
			
			= @334/* ~(You happily oblige, and turn your body so that you are laying on your back. You look up at Schael; every inch of her glorious body is glistening, and you notice how her hands seem to be glowing with a bluish aura. She resumes her sensual massage, this time, focusing first on your midsection, then working toward your quads, your outer thighs, and finally, your inner thighs. The feel of her hands so close to your already dripping pussy causes you to moan loudly in pleasure.)~*/
			
			IF ~
				Global("XA_LCE_HeroCameWhileChoked", "LOCALS", 1)
			~ THEN
			GOTO XA_LC_CorwinSex2_10F_Second
						
			IF ~
				GlobalLT("XA_LCE_HeroCameWhileChoked", "LOCALS", 1)
			~ THEN
			GOTO XA_LC_CorwinSex2_10F_First

		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_10F_First
			SAY @355 /* ~(Without a word, she begins to massage and gently squeeze your breasts. It would seem that her spell has yet to wear off, as you can still feel that soothing, caressing sensation with every touch. While you lay there, contemplating what amazing gift that this incredible woman is giving you, she reaches down to stroke your clit in a slow, circular motion. This simple act is enough to send you over the edge, and you scream and shudder uncontrollably as your body is wracked by a momentous climax.)~  */
			
			IF ~~ THEN
			GOTO XA_LC_CorwinSex2_11F
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_10F_Second
			SAY @335 /* ~(Without a word, she begins to massage and gently squeeze your breasts. It would seem that her spell has yet to wear off, as you can still feel that soothing, caressing sensation with every touch. While you lay there, contemplating what amazing gift that this incredible woman is giving you, she reaches down to stroke your clit in a slow, circular motion. This simple act is enough to send you over the edge, and you scream and shudder uncontrollably as your second orgasm of the <DAYNIGHT> wracks your body.)~ */
			
			IF ~~ THEN
			GOTO XA_LC_CorwinSex2_11F
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_11F
			SAY @336 /* ~That's it, hero... now, it's MY turn.~ */
			
			= @337 /*~(She presses forward, and maneuvers herself so that her cunt is directly over your face and mouth. Knowing exactly what she wants, you place your tongue into her vagina and begin to vigorously eat her out. While you're not as experienced in this area as she is, you try your best to mimic how she used her tongue on you during the first night you were together.)~*/ 
			
			= @338 /*~Oh... oh! Gently, <CHARNAME>! Better... good. Just like that. Oh.... oh, yes...~ */
			
			= @339 /* ~(Schael begins to gyrate her hips and press down on you, so that your tongue is pumped into and out of her cunt. Though the concoction of her love juices and sweat is quite salty, you enjoy the taste, and you want more of it. After a time, she increases the pace and intensity of her gyrations, causing more of your face to be covered in her wetness.)~ */
			
			= @340 /* ~Oh... oh, <CHARNAME>... my woman, my love, my .... my hero! Oh! OHH!~*/
			
			= @341 /* ~(With your right hand, you reach up to forcefully grab and squeeze Schael's left breast. This is enough to send her over the edge, and her cunt unleashes a torrent of cum into and over your mouth, face, and hair. Her cum has a pleasant, slightly sweet taste, and she sits on your face for a moment as you lap up the last of her precious fluids from her pussy. After one last, forceful grind of her cunt on your face, she dismounts and lays alongside you.)~*/
			
			= @347 /* ~(She moves her head next to yours, and gives you a kiss.)~*/
			
			= @342 /* ~That was incredible. Thank you, dear.~*/
			
			IF ~~ THEN REPLY @343 /*~It was my pleasure, love.~ */
			GOTO XA_LC_CorwinSex2_12F
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_12F
			SAY @344/*~*Sniff*~ */
			
			= @345 /* ~Gods, we could both use a bath. Go ahead and heat up the water. You can clean up first.~*/
			
			IF ~~ THEN REPLY @346 /* ~Are you sure? The tub looks large enough for the both of us.~*/
			GOTO XA_LC_CorwinSex2_13F_A
			
			IF ~~ THEN REPLY @363 /* ~No, you first. You need it more than me... no offense.~*/
			GOTO XA_LC_CorwinSex2_13F_B
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_13F_A
			SAY @348 /* ~Hey, look at that... I think you're right. Heat up the water and I'll join you.~*/

			IF~~ THEN 
			GOTO XA_LC_CorwinSex2_13F_Part2
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_13F_B
			SAY @364 /* ~Heh. Is that an order, hero? Fair enough.~*/

			= @365 /* ~(Schael leaves the bed to warm up the water. You bask in the sight of her beautiful, perfectly round ass jiggling with each step toward the tub.)~*/
			
			= @366 /* ~Hey, it looks like the tub might be big enough for the two of us. Join me.~*/
			
			IF~~ THEN 
			GOTO XA_LC_CorwinSex2_13F_Part2
		END
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_13F_Part2
			SAY @349 /*~(A bath is a good idea; you both stink of battle and sex, and you don't know when your next opportunity to bathe will be. It takes a few minutes before the water is warm enough, but once it is, you and Schael eagerly get into the bath. The warm water is soothing, and you and Schael take your time to clean every square inch of your bodies. As perfect as the night has been, you realize that there is only one towel. Schael leaves the bath first and dries herself off. You follow, and ask for the towel once she's done.)~ */
			
			= @350 /* ~Turn around. I'll dry you off.~*/
			
			= @351 /* ~(With your back turned, Schael rolls the towel in her arms, and flicks it powerfully against your ass.)~*/
			
			IF ~~ THEN REPLY @352 /*~Ow!~ */
			GOTO XA_LC_CorwinSex2_14F
		END
			
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_14F
			SAY @353/* ~Hah! Sorry, I couldn't resist.~*/
			
			= @354 /* ~(With that out of her system, she dries you off, and the two of you head into bed. It takes mere minutes for you to fall asleep in each other's arms...)~*/
			
			= @126 /* ~(Completely exhausted, you both sleep soundly... for a while at least. After a couple of hours, you find yourself awake in bed and turn to look at Schael. Your mind is filled with thoughts of how much this beautiful, strong and incredibly talented woman has changed your life for the better, and the confluence of events that've brought you to each other.)~*/
			
			IF ~~ THEN REPLY @127 /* ~Love? Are you awake?~ */
			GOTO XA_LC_CorwinSex2_15F
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_15F
			SAY @128 /* ~(She slowly opens her eyes.)~ */
			
			= @129 /* ~Mmm, yes hon.~ */
			
			= @130 /* ~I hope I wasn't too rough with you earlier.~ */
			
			IF ~~ THEN REPLY @131 /* ~You were, a little, but ... how do I say this. I'm finding more and more that I enjoy being, ah, under your control in the bedroom.~*/
			GOTO XA_LC_CorwinSex2_15FA
			
			IF ~~ THEN REPLY @132 /* ~No, you were *amazing* Schael. You certainly know how to keep things interesting in the bedroom.~*/
			GOTO XA_LC_CorwinSex2_15FB
			
			IF ~
				Global("XA_LC_SafeWord", "LOCALS", 0)
			~ THEN REPLY @133 /* ~We'll need a safe word next time for sure.~ */
			GOTO XA_LC_CorwinSex2_15FC
			
			IF ~
				GlobalGT("XA_LC_SafeWord", "LOCALS", 0)
			~ THEN REPLY @218 /*~It's a good thing I had that safe word...~*/
			GOTO XA_LC_CorwinSex2_15FC
			
			IF ~~ THEN REPLY @191 /* ~I haven't felt that helpless since I was captured by Irenicus.~ */
			GOTO XA_LC_CorwinSex2_15FD
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_15FA
			SAY @356 /* ~You have so much resting on your shoulders already... it's no surprise that you'd want to let go of the responsibility of control, at least in the bedroom.~  */
			
			IF ~~ THEN
			GOTO XA_LC_CorwinSex2_15FF
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_15FB
			SAY @136 /* ~Variety is the spice of life, my love. I'd hate for our love life to become boring. Somehow...~ */
			
			= @357 /* ~(She playfully pats your crotch.)~  */
			
			= @138 /* ~... I don't think we'll need to worry about that, eh?~ [xalce138] */
			
			IF ~~ THEN
			GOTO XA_LC_CorwinSex2_15FF
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_15FC
			SAY @140 /* ~I'm sorry. I guess I got a little carried away.~ [xalce133]*/
			
			IF ~~ THEN
			GOTO XA_LC_CorwinSex2_15FF
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_15FD
			SAY @192 /*~I... I don't know what to say. The last thing I wanted was for you to relive that nightmare. Forgive me, love.~*/
			
			IF ~~ THEN REPLY @193 /*~I know that wasn't your intent, and... I'm ashamed to admit it, but I enjoyed it, Schael.~*/
			GOTO XA_LC_CorwinSex2_15FE
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_15FE
			SAY @194 /*~Don't feel ashamed, dear. We all have our own little fantasies and... fetishes. What's important is that we trust each other enough to explore them, together.~ */
			
			IF ~~ THEN REPLY @195 /*~Ah, I understand. That's why you asked me if I trusted you. I still do — now, more than ever.~*/
			GOTO XA_LC_CorwinSex2_15FF
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_15FF
			SAY @196 /*~(She leans in and kisses you on the cheek.)~*/
			
			= @358/*~I love you, <CHARNAME>.~ */
			
			IF ~~ THEN REPLY @359 /*~I love you too, Schael.~*/
			GOTO XA_LC_CorwinSex2_End_F
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinSex2_End_F
			SAY @360 /* ~(Together, you try and get back to sleep. After a short while, however, you begin to kiss, and you end up spending the rest of the time learning precisely how and where the two of you like to be touched, kissed, licked, and sucked. During this wonderful exploration of sensations, you learned that Schael is extremely ticklish, which you find highly amusing. Eventually, you fall asleep with your head resting on her breasts, and your fingers in her cunt.)~ */
			
			
			IF ~
				Global("XA_LC_PortraitChange_LCA", "GLOBAL", 1)
			~ THEN 
			DO ~
				ReallyForceSpellRES("XACHNG01", "XACORWIN")
				StartCutSceneMode()
				StartCutScene("XAEX02EX")
			~
			EXIT
			
			IF ~
				Global("XA_LC_PortraitChange_LCA", "GLOBAL", 0)
			~ THEN 
			DO ~
				ReallyForceSpellRES("XACHNG02", "XACORWIN")
				StartCutSceneMode()
				StartCutScene("XAEX02EX")
			~
			EXIT
		END
	//}
