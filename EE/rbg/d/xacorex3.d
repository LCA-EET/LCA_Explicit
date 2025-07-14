BEGIN ~XACOREX3~

//{ Initiating States

	IF ~
		GlobalLT("XA_Intro", "MYAREA", 1)
		Gender(Player1, MALE)
	~ THEN BEGIN XA_LC_XAEXPL03_Schael_1_M
		SAY @150 /* ~What are your orders, hero?~ */
		
		IF ~
			GlobalGT("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 109)
		~ THEN REPLY @79 /* ~(Reach up and take hold of the back of her head.)~*/
		DO ~
			SetGlobal("XA_Intro", "MYAREA", 1)
		~
		GOTO XA_LC_XAEXPL03_Schael_A_M
		
		IF ~~ THEN REPLY @80 /* ~Fuck me, Schael!~*/
		DO ~
			SetGlobal("XA_Intro", "MYAREA", 1)
		~
		GOTO XA_LC_XAEXPL03_Schael_B_M
		
		IF ~~ THEN REPLY @81 /* ~Turn around. I want to take you from behind.~*/
		DO ~
			SetGlobal("XA_Intro", "MYAREA", 1)
		~
		GOTO XA_LC_XAEXPL03_Schael_C_M
		
		IF ~
			Global("XA_LC_SchaelBound", "GLOBAL", 1)
			GlobalLT("XA_LCE_BondageTalk", "LOCALS", 1)
		~ THEN REPLY @204 /* ~What's in the bag?~*/
		DO ~
			SetGlobal("XA_Intro", "MYAREA", 1)
			SetGlobal("XA_LCE_BondageTalk", "LOCALS", 1)
		~
		GOTO XA_LC_XAEXPL03_Schael_D_M
	END

	IF ~
		GlobalLT("XA_Intro", "MYAREA", 1)
		Gender(Player1, FEMALE)
	~ THEN BEGIN XA_LC_XAEXPL03_Schael_1_F
		SAY @150 /* ~What are your orders, hero?~ */
		
		IF ~
			GlobalGT("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 109)
		~ THEN REPLY @79 /* ~(Reach up and take hold of the back of her head.)~*/
		DO ~
			SetGlobal("XA_Intro", "MYAREA", 1)
		~
		GOTO XA_LC_XAEXPL03_Schael_A_M
		
		IF ~~ THEN REPLY @80 /* ~Fuck me, Schael!~*/
		DO ~
			SetGlobal("XA_Intro", "MYAREA", 1)
		~
		GOTO XA_LC_XAEXPL03_Schael_B_M
		
		IF ~~ THEN REPLY @81 /* ~Turn around. I want to take you from behind.~*/
		DO ~
			SetGlobal("XA_Intro", "MYAREA", 1)
		~
		GOTO XA_LC_XAEXPL03_Schael_C_M
	END

	IF ~
		Global("XA_LC_CorwinSex_3_Neoma", "GLOBAL", 1)
	~ THEN BEGIN XA_LC_XAEXPL03_Neoma_5
		SAY @29  /* ~(You watch as Schael tenderly washes Neoma's face and hair in the bath. In just a few minutes, the last remnants of your seed are washed away, and Neoma dries off and gets dressed. Schael uses the opportunity to take off the strap on and clean it before placing it back in Neoma's bag.)~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Neoma", "GLOBAL", 2)
		~
		EXTERN XANEOMA XA_LC_XAEXPL03_Neoma_6
	END

	IF ~
		Global("XA_LC_CorwinSex_3_Schael", "GLOBAL", 5)
	~ THEN BEGIN XA_LC_XAEXPL03_Schael_End
		SAY @41  /* ~(You awaken and see Schael getting dressed.)~*/
		
		IF ~~ THEN REPLY @36  /*  ~Schael? Where are you going?~*/
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Schael", "GLOBAL", 6)
		~
		GOTO XA_LC_XAEXPL03_Neoma_9
	END

	IF ~
		Global("XA_LC_CorwinSex_3_Schael_A", "GLOBAL", 1)
	~ THEN BEGIN XA_LC_XAEXPL03_Schael_A_4
		SAY @93  /* ~(Using a towel and the warm bath water, you gently wipe her face clean. You also double check to make sure that none of it got in her hair, which, fortunately, it didn't.)~*/
		
		IF ~~ THEN REPLY @95  /*~Schael, you were amazing. Thank you.~ */
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Schael_A", "GLOBAL", 2)
		~
		GOTO XA_LC_XAEXPL03_Schael_A_5
	END

	IF ~
		Global("XA_LC_CorwinSex_3_Neoma",  "GLOBAL",2)
	~ THEN BEGIN XA_LC_XAEXPL03_Neoma_7
		SAY @32  /* ~Well, that was fun.~ */
		
		= @33  /*~(Your member, which has suddenly sprung back to life, throbs in agreement. She eyes it, and smiles.)~*/
		
		= @34  /* ~Looks like we're both ready for round two...~*/
		
		= @35  /* ~(Schael takes hold of your erect penis and walks you back into bed. You spend the next few hours enjoying fresh fruit, drinking wine, and making love. Afterward, the two of you enjoy a nice, warm, candlelit bath, before heading back into bed.)~  */
		
		= @135 /*~(Not wanting the night to end just yet, you take the opportunity to use some of the tongue techniques you learned earlier from watching the two ladies. Though it took a little time to find the right spot, you successfully managed to bring Schael to a screaming, other-wordly climax. This delighted her, so much so that she reciprocated by giving you the most fantastic and exquisite blowjob you've ever experienced. After several hours, and even more orgasms, you finally fall asleep in a warm and tender embrace.)~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Neoma", "GLOBAL", 2)
			//StartCutSceneMode()
			//StartCutScene("XAEXPL3E")
		~
		EXIT
	END

	IF ~
		Global("XA_LC_CorwinSex_3_Neoma", "GLOBAL", 3)
	~ THEN BEGIN XA_LC_XAEXPL03_Neoma_8
		SAY @41  /* ~(You awaken and see Schael getting dressed.)~*/
		
		IF ~~ THEN REPLY @36 /* ~Schael? Where are you going?~ */ 
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Neoma", "GLOBAL", 4)
		~
		GOTO XA_LC_XAEXPL03_Neoma_9
	END

//}

//{ Schael M/F

	//{ Corwin A
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Schael_A_M
		SAY @121  /* ~Hm. You know what you want, and aren't afraid to take it... a quality I love in a man.~ */
		= @82  /* ~Gods, I've been dreaming about this for so long...~ */
		
		= @83  /* ~(Schael places her head between your legs, and begins to kiss and lick your engorged member, starting from the base and working ever so slowly toward the tip.)~ */
		
		= @115 /* ~(To help keep it steady, she uses her left hand to hold it at the base, while she uses her right to gently fondle your balls. Upon reaching the bulbous head of your massively erect cock, she darts and swirls her tongue around it... the feeling is intense, and it causes you to moan and shudder uncontrollably.)~*/
		
		IF ~~ THEN
		GOTO XA_LC_XAEXPL04_Schael_BJ
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL04_Schael_BJ
		SAY @116  /* ~(She looks up at you with a wide smile, then takes you into her mouth. Up and down her head bobs on your shaft, while you use your hand on the back of her head to help her get the rhythm just right. Throughout, you can hear Schael moan, giggle, and squeal as more and more of your pre-cum makes it into her mouth.)~*/
		
		= @122  /* ~(Her efforts send you into a state of bliss, unlike anything you've experienced before. Everything you've suffered, everything you've had to endure... you've earned this. With that thought in mind, you finally let go of your inhibitions, and allow yourself to fully enjoy the wonderful gift that this beautiful, incredible woman is giving you.)~*/
		
		= @141 /*~(You lose track of time... all that matters to you now is the pleasure that you're feeling, and the love that you two share for one another. Slowly, you're pulled from your reverie as you feel an intense surge build in the base of your shaft...)~*/
		
		IF ~~ THEN REPLY @84  /* Gods, Schael... I'm so close!~*/
		GOTO XA_LC_XAEXPL03_Schael_A_2_M
	END

	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Schael_A_2_M
		SAY @85 /* ~(Hearing this, Schael increases her rhythm and the pressure against your balls. With a scream, you release your seed into her.)~*/
		
		= @86 /*~Mmmfh!~ */
		
		= @87 /* ~(She's able to swallow the first three blasts before needing to pull back entirely. As she gasps for air, a fourth and fifth spurt from your still erupting cock land on her face, covering her chin and right cheek, narrowly missing her silky, ebony hair.)~ */
		
		= @88  /* ~*Cough* *gag* *cough*~ */
		
		IF ~~ THEN REPLY @89  /* ~Love, are you alright?~ */
		GOTO XA_LC_XAEXPL03_Schael_A_3_M
	END

	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Schael_A_3_M
		SAY @90  /* ~I'm *cough* fine, love. Just hand me a towel...~*/
		
		IF ~~ THEN REPLY @91/* ~Let me heat up the bath water for you. I'll get you cleaned up, hon.~*/
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Schael_A", "GLOBAL", 1)
			StartCutSceneMode()
			StartCutScene("XAEXPL3T")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Schael_A_5
		SAY @96  /* ~I'm glad you enjoyed it. I did, too, but next time I'll be better prepared.~*/
		
		= @33  /*~(She eyes your member, which has suddenly sprung back to life, and smiles.)~ */
		
		= @34  /* ~Looks like we're both ready for round two...~*/
		
		= @35  /* ~(Schael takes hold of your erect penis and walks you back into bed. You spend the next few hours drinking wine, making love and pleasuring each other, before finally falling asleep in each other's embrace.)~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Schael", "GLOBAL", 4)
			//StartCutSceneMode()
			//StartCutScene("XAEXPL3E")
		~
		EXIT
	END
	//}

	//{ Corwin B
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Schael_B_M
		SAY @92  /* ~(With a smile, she presses down on your cock as you easily slide into her. She's so warm and moist, and you can feel the tip of your cock smash against her cervix with each savage thrust.)~*/
		
		= @117 /* ~(You reach up to her large, beautiful tits and squeeze them, gently at first, then harder until Schael lets out a squeal. After several minutes, you can feel the pace and ferocity of Schael's thrusts increase, causing you to take hold of her hips, which are now covered in sweat.)~ */
		
		= @118  /* ~(She reaches out and braces herself against the headboard, using it as leverage to drive herself even harder on to your cock. As she drives downward, you push upward, causing you both to yell in pleasure.)~*/
		
		= @99 /* ~YES! OH GODS, YES!~*/
		
		= @100 /* ~(In moments, you feel a surge building in the base of your shaft.)~*/
		
		IF ~~ THEN REPLY @101 /* ~Schael, I - I'm so close! OH, GODS —~*/
		GOTO XA_LC_XAEXPL03_Schael_B_2_M
	END

	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Schael_B_2_M
		SAY @102  /*~YES! GIVE IT TO ME, HERO!~ */
		
		= @103  /* ~(With a scream, the first three blasts of your seed explode into her as she reaches her own climax. A fourth, fifth, and sixth spurt are released with far less force than the first, as you can feel the cum ooze out of her and back onto your skin.)~*/
		
		= @104 /* ~Oh, <CHARNAME>.... that was incredible... I love you.~ */
		
		IF ~~ THEN REPLY @105  /* ~You were amazing, dear. I love you too.~*/
		GOTO XA_LC_XAEXPL03_Schael_B_3_M
	END

	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Schael_B_3_M
		SAY @106  /*  ~(She dismounts your spent cock and lays at your side, with her head and arm on your chest. You're able to sleep for a little while, but are awakened by the welcome sensation of Schael stroking your penis back to life.)~*/
		
		= @34  /* ~Looks like we're both ready for round two...~*/
		
		= @107  /* ~(You spend the next few hours drinking wine, making love and pleasuring each other, before finally falling asleep in each other's embrace.)~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Schael", "GLOBAL", 4)
			//StartCutSceneMode()
			//StartCutScene("XAEXPL3E")
		~
		EXIT
	END
	//}

	//{ Corwin C
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Schael_C_M
		SAY @108  /* ~Hah! Feeling adventurous, are we?~*/
		
		= @109 /* ~(She dismounts you and moves to your side, then positions herself on all fours so that she's facing the headboard. You quickly position your cock behind her raised hips and ass, and take a moment to appreciate the view.)~  */
		
		= @119  /* ~(With your left hand holding her hip, and your right hand gripping the back of her neck, you thrust forward and enter her sex. She's so warm and moist, and you can feel the tip of your cock smash against her cervix with each thrust. A few minutes in, you release your hold on the back of her neck, and instead reach down to fondle her right breast.)~ */
		
		= @110 /* ~Mmmnhnnn.... harder, hero... harder!~*/
		
		= @111 /* ~(Schael places her right hand up against the headboard, and begins to push back as you thrust forward. She howls in delight as you realize that you've never been this deep inside of her.)~*/
		
		= @112 /* ~Yes! Harder! HARDER!~*/
		
		= @113  /* ~(No more holding back, you think to yourself. With all of your strength, you ferociously and repeatedly penetrate Schael as she screams in approval. You place your right hand over her mouth to muffle the sound; you don't want anyone to interrupt what may be the most spectacular orgasm that either of you've ever experienced.)~*/
		
		= @120  /* ~(In moments, you feel a telltale surge travel from your balls, to the base of your shaft, and up into Schael's welcoming vagina. You shudder and scream as spurt after spurt gushes out of you. With each one, you bury your penis deeper and deeper into Schael, who herself is lost in her own explosive climax. The intensity of your thrusts gradually lessens as your cock returns to its relaxed state. Finally, you dismount and collapse down into the bed, as Schael does the same.)~*/
		
		= @104 /* ~Oh, <CHARNAME>.... that was incredible... I love you.~ */
		
		IF ~~ THEN REPLY @105  /* ~You were amazing, dear. I love you too.~*/
		GOTO XA_LC_XAEXPL03_Schael_C_2_M
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Schael_C_2_M
		SAY @114  /* ~(You lay at each other's side, with her head and arm on your chest. You're able to sleep for a little while, but are awakened by the stirring of your cock, and the sensation of Schael fondling your balls.)~*/
		
		= @34  /* ~Looks like we're both ready for round two...~*/
		
		= @107  /* ~(You the next few hours drinking wine, making love and pleasuring each other, before you finally fall asleep.)~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Schael", "GLOBAL", 4)
			//StartCutSceneMode()
			//StartCutScene("XAEXPL3E")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage
		SAY @206 /* ~It's uh... it's nothing.~ */
		
		IF ~~ THEN REPLY @207/* ~My love... has anyone ever told you that you're a bad liar?~*/
		GOTO XA_LC_Schael_Bondage_1
		
		IF ~~ THEN REPLY @208 /* ~If you say so.~*/
		GOTO XA_LC_Schael_Bondage_1
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_1
		SAY @209 /* ~Well... there's a blindfold... and some rope.~ */
		
		IF ~~ THEN REPLY @154/* ~Rope and a blindfold? That's... interesting.~*/
		GOTO XA_LC_Schael_Bondage_2
		
		IF ~~ THEN REPLY @247 /* ~I don't like where this is going.~*/
		GOTO XA_LC_Schael_Bondage_No
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_2
		SAY @156 /* ~It's something I've been meaning to try...~*/
		
		= @157 /* ~I haven't told you this, but back in Spellhold, when I was straining helplessly against my bonds... it turned me on. Being powerless in spite of my... my muscles, and my strength, in front of you and the others... it made me feel... naked.~ */
		
		= @162 /* ~(She blushes.)~*/
		
		= @164 /* ~It's hard to explain. But the more I struggled, the closer I came to... you know. Now *that* would have been humiliating. Thankfully, I passed out before it could happen.~*/
		
		IF ~~ THEN REPLY @158 /* ~It could be because you're always in control. Having it taken from you must have made you feel vulnerable.~ */
		GOTO XA_LC_Schael_Bondage_3
		
		IF ~~ THEN REPLY @178 /* ~I appreciate your openness about something like that... but I'm not into bondage.~ */
		GOTO XA_LC_Schael_Bondage_No
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_No
		SAY @210 /* ~Yeah, it was stupid of me to bring them. Just... uh, just forget it. Now, tell me what you want, hero... tell me how can I make this night one that you'll never forget.~ */
		
		COPY_TRANS XACOREX3 XA_LC_XAEXPL03_Schael_1_M
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_3
		SAY @159 /* ~But I've been vulnerable before, and I've never had such a reaction... hells, facing life-threatening situations is a routine part of my job. Maybe it's because it happened in front of the <PRO_MANWOMAN> I love? In any case, I wanted to see if you'd... if you'd...~*/
		
		= @211 /*~Damn it, why is this so hard?~ [xalc7110] */
		
		IF ~~ THEN REPLY @165 /* ~Say no more. I know what you need, and I'm going to give it to you.~*/
		GOTO XA_LC_Schael_Bondage_4A
		
		IF ~~ THEN REPLY @160 /* ~You want me to tie you up? And do what?~*/
		GOTO XA_LC_Schael_Bondage_4B
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_4A
		SAY @248 /* ~Wow... I thought it would take some more convincing. Let's use a safe word, just in case. How does 'arrow' sound?~*/
		
		IF ~~ THEN REPLY @168 /* ~Arrow? That's fine by me. Let's get started.~*/
		GOTO XA_LC_Schael_Bondage_6
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_4B
		SAY @161 /* Whatever you want. The point is, you will be in total control. Not me.~ */
		
		IF ~~ THEN REPLY @166 /* ~Should we have a safe word?~ */
		GOTO XA_LC_Schael_Bondage_5
		
		IF ~~ THEN REPLY @212 /* ~I'm having second thoughts.~*/
		GOTO XA_LC_XAEXPL03_Schael_D_M_NotIntoBondage
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_5
		SAY @167 /* ~Hmm... yes. How does 'arrow' sound?~*/
		
		IF ~~ THEN REPLY @168 /* ~Arrow? That's fine by me. Let's get started.~*/
		GOTO XA_LC_Schael_Bondage_6
		
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_6
		SAY @169 /* ~(Schael lays down face up on the bed, and extends her powerful limbs toward the four bed posts. Using the rope she provided, you tightly tie her limbs to the bed posts.)~ */
		
		IF ~~ THEN REPLY @170 /* ~Check if they're tight enough.~*/
		GOTO XA_LC_Schael_Bondage_7
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_7
		SAY @171 /* Right... */
		
		= @172 /*~(With a look of wonder and concern on her delightful face, Schael tries but is unable to free her arms and legs. Her incredible physique erupts as she struggles with ever-increasing intensity against her bonds. You hear the bed posts groan and creak in response to her efforts, but they do not break. Breathing heavily, and with sweat forming on her body, Schael moans and shudders with pleasure before ceasing her efforts to break free.)~ */
		
		= @173 /* ~It's *pant* tight enough. Put the blindfold on. I'm yours *pant* to do with as you please, hero.~ */
		
		IF ~~ THEN 
		GOTO XA_LC_Schael_Bondage_Options
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Options
		SAY @174 /* ~(You lean over and place the blindfold on her, then plant a reassuring kiss on her lips.)~ */
		
		IF ~
			Gender(Player1, MALE)
			GlobalLT("XA_LC_CockSlap", "LOCALS", 1)
		~ THEN REPLY @213 /* ~(Slap your cock against her face.)~*/
		DO ~
			SetGlobal("XA_LC_CockSlap", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_CockSlap
		
		IF ~
			GlobalLT("XA_LC_FondleTits", "LOCALS", 1)
		~
		DO ~
			SetGlobal("XA_LC_FondleTits", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_FondleTits
		
		IF ~
			Global("XA_LC_Taunt", "LOCALS", 0)
		~ THEN REPLY @218 /*~What would Eltan and Nederlok and the others say if they could see you now? Their star pupil, naked, bound, and aroused by her own helplessness?~*/
		DO ~
			IncrementGlobal("XA_LC_Taunt", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_Taunt_1
		
		IF ~
			Global("XA_LC_Taunt", "LOCALS", 1)
		~ THEN REPLY @219 /*~All that time training for the perfect physique, and for what? Your muscles that you love to show off – they're so weak that you can't even break free of these simple restraints! It's pitiful, really.~*/
		DO ~
			IncrementGlobal("XA_LC_Taunt", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_Taunt_2
		
		IF ~
			Global("XA_LC_Taunt", "LOCALS", 2)
		~ THEN REPLY @220 /*~I bet all the men and women under your command have fantasized about doing this to you. Hells, I bet *you've* fantasized about it, you horny slut.~*/
		DO ~
			IncrementGlobal("XA_LC_Taunt", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_Taunt_3
		
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_CockSlap
		SAY @214 /* ~(You slap your thick, engorged cock against her cheeks, deliberately smearing them with your pre-cum. Schael, in shock, gasps and turns her head away after each brazen and degrading act. You try and force your tool through her lips and into her mouth, but her jaws remain clenched in defiance of your will.)~ */
		
		= @249 /* ~Ugh...~ */
		
		COPY_TRANS XACOREX3 XA_LC_Schael_Bondage_Options
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_FondleTits
		SAY @216 /*~(You vigorously fondle her large breasts in your hands, stopping every so often to flick and suck on her light brown nipples. Finally, you squeeze her breasts, which causes her to squeal in shock and pain. She shudders after you release your grip, and tries again to break free of the restraints before ceasing her futile efforts.)~*/
	
		= @251 /*~*pant* ... *pant* ...~*/
		
		COPY_TRANS XACOREX3 XA_LC_Schael_Bondage_Options
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Taunt_1
		SAY @225 /*~(Her face reddens, and she tenses her muscles as she tries again to break free.)~*/
		
		= @227 /*~Ugh... tread lightly, hero.~*/
		
		COPY_TRANS XACOREX3 XA_LC_Schael_Bondage_Options
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Taunt_2
		SAY @252 /*~(She shudders in anger in response to your mocking.)~*/
		
		= @226 /*~Shut up, gods damn it! *pant* Wait until you see what these muscles will do to you once I break free!~*/
		
		COPY_TRANS XACOREX3 XA_LC_Schael_Bondage_Options
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Taunt_3
		SAY @228 /*~That's it! I've had enough! Damn the safe word, I'm going to break these posts and beat you with them!~*/
		
		= @229 /*~(Using every last ounce of her exceptional strength, Schael gyrates ferociously in one final, desperate attempt to break free. The force of her exertions is so great that she actually knocks you off the bed and onto the floor. To your astonishment, you can hear one of the bed posts begin to crack, and in moments, the post breaks free from the base of the bed.)~*/
		
		= @250 /*~(She quickly uses her free arm to unbind her other arm, then her legs. Before you can gather yourself and come to your feet, she stands atop you so that your hips are between her legs. In her eyes is a ferocity unlike anything you've never seen, neither from her, nor the foulest monsters in the darkest of dungeons.)~*/
		
		= @230 /*~I warned you, hero.~*/
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @232 /*~S-Schael I didn't mean what I said. It was just part of the roleplay, I - I swear!~*/
		GOTO XA_LC_Schael_Bondage_Taunt_End_Male
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN REPLY @232 /*~S-Schael I didn't mean what I said. It was just part of the roleplay, I - I swear!~*/
		GOTO XA_LC_Schael_Bondage_Taunt_End_Female
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Taunt_End_Male
		SAY @231 /*~(She tosses the broken bed post from one hand to the other, before placing the jagged edge dangerously close to your erect cock and vulnerable testicles, threatening to smash them.)~*/
		
		= @253 /*~(You can feel your heart pounding in your ears as you tremble in fear before her. She lifts the post with both arms, undoubtedly to smash your precious genitals into a bloody pulp. Shaking and unable to face what is about to happen, you close your eyes, and feel your erect cock quiver and shoot its urine all over Schael's legs in a final act of surrender.)~*/
		
		= @233 /*~(She bursts out laughing at the sight of the quivering mess that is the hero of Baldur's Gate.)~*/
		
		= @234 /*~Hah! You should've seen the look on your face! I thought you were about to cry. Did you think I was really going to crush your balls?~*/
		
		IF ~~ THEN REPLY @235 /*~You... you mean you're not mad at me?~*/
		GOTO XA_LC_Schael_Bondage_NotMad_Male
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_NotMad_Male
		SAY @236 /*~No, silly. Like you said, it was just roleplay. I can't believe you pissed yourself, though... it's certainly not what I'd expect from my handsome, brave hero. Look, my legs and feet are covered in it. You're lucky I'm in a good mood, otherwise I might've made you lick me clean. Maybe you'd like that, mm? Next time, perhaps... this room has a bath, after all.~*/
		
		= @237 /*~(She eyes your still twitching cock, and licks her luscious lips.)~*/
		
		= @238 /*~Get up and sit on the edge of the bed. That heroic cock of yours requires my attention.~*/
		
		= @239 /*~(You eagerly get up and sit at the edge of the bed. Schael kneels so that her head between your legs, directly in front of your throbbing member, and seizes it with her hand.)~ */
		
		= @240 /*~You know, I really appreciate your willingness to try new things. I think that next time though, we'll need some stronger restraints.~*/
		
		IF ~~ THEN REPLY @79 /*~(Reach and take hold of the back of her head.)~*/
		GOTO XA_LC_Schael_Bondage_BJ_Male
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_BJ_Male
		SAY @121 /*~Hm. You know what you want, and aren't afraid to take it... a quality I love in a man.~ [xalce157]*/
		
		= @254 /*~(Schael begins to softly kiss and lick your engorged member, starting from the base, and working ever so slowly toward the tip. To help keep your cock steady, she uses her left hand to hold it firmly at the base, while she uses her right to gently fondle your balls. Upon reaching the bulbous head of your massively erect penis, she darts and swirls her tongue around it, before placing a loving kiss on your tip... the pleasure is intense, and it causes you to moan and shudder uncontrollably.)~*/
		
		IF ~~ THEN
		GOTO XA_LC_XAEXPL04_Schael_BJ
	END
	//}

//}

//{ Neoma M/F
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_9
		SAY @37  /* ~Home. I want to be there when Rohma wakes up.~ */
		
		IF ~~ THEN REPLY @38 /* ~Oh, of course. ~ */
		DO ~
			SetGlobal("XA_LCE_EXTalk", "GLOBAL", 0)
		~
		GOTO XA_LC_LastNight
		
		IF ~~ THEN REPLY @138 /*~Gods (*yawn*), it's morning already?~*/
		DO ~
			SetGlobal("XA_LCE_EXTalk", "GLOBAL", 0)
		~
		GOTO XA_LC_LastNight
	END

	IF ~~ THEN BEGIN XA_LC_LastNight
		SAY @136 /*~Last night was incredible, love. It a wonder how you manage to keep that battering ram between your legs so hard for so long.~*/
		
		IF ~~ THEN REPLY @137 /*~Heh. My foster father once told me that can divinity manifest itself in ways you'd never expect.~*/
		GOTO XA_LC_XAEXPL03_Neoma_10
		
		IF ~~ THEN REPLY @139 /*~Heh. My foster father once told me that can divinity manifest itself in ways you'd never expect.~*/
		GOTO XA_LC_XAEXPL03_Neoma_10		
	END

	IF ~~ THEN BEGIN XA_LC_Neoma
		SAY @47 /* ~You're worried about her? Don't be. She's a lot tougher than she looks.~*/
		
		IF ~~ THEN REPLY @49 /*~Still, I'd appreciate it if you could check in on her.~*/
		GOTO XA_LC_CheckNeoma
		
		IF ~~ THEN REPLY @53 /*~I think... Schael, I think she has feelings for you.~*/
		GOTO XA_LC_Feelings
	END

	IF ~~ THEN BEGIN XA_LC_Feelings
		SAY @54 /* ~Don't be ridiculous, hon. I've discussed this with her already. She understands that it's only sex.~ */
		
		IF ~~ THEN REPLY @55 /*~That might be *your* understanding, but I'm not sure that it's hers.~*/
		GOTO XA_LC_NeomaRelationship
		
		IF ~~ THEN REPLY @49 /*~Still, I'd appreciate it if you could check in on her.~*/
		GOTO XA_LC_CheckNeoma
	END

	IF ~~ THEN BEGIN XA_LC_NeomaRelationship
		SAY @56 /* ... */
		
		IF ~~ THEN REPLY @57 /*~Schael?~*/
		GOTO XA_LC_NeomaRelationship2
	END

	IF ~~ THEN BEGIN XA_LC_NeomaRelationship2
		SAY @58 /*~It sounds like I need to talk to her. Thanks for letting me know, love. I'll stop by her place after the debriefing.~*/
		
		IF ~~ THEN REPLY @52 /*~Thanks, love.~*/
		GOTO XA_LC_Sex3_Neoma_END
	END

	IF ~~ THEN BEGIN XA_LC_CheckNeoma
		SAY @50 /*~Fine. I'll stop by her place after the debriefing.~ */
		
		IF ~~ THEN REPLY @52 /*~Thanks, love.~*/
		GOTO XA_LC_Sex3_Neoma_END
	END

	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_10
		SAY @39 /* ~I'm heading out. See you at the debriefing, love.~*/
		
		IF ~~ THEN REPLY @42 /* ~Gods, the debriefing. With this hangover?~*/
		GOTO XA_LC_Hangover
		
		IF ~~ THEN REPLY @44 /* ~Right. See you there, love.~ */
		GOTO XA_LC_Sex3_Neoma_END
		
		IF ~
			GlobalGT("XA_LC_CorwinSex_3_Neoma", "GLOBAL", 0)
		~ THEN REPLY @46 /* ~Wait — do you think Neoma's okay?~*/
		DO ~
			SetGlobal("XA_LCE_EXTalk", "GLOBAL", 0)
		~
		GOTO XA_LC_Neoma

	END

	IF ~~ THEN BEGIN XA_LC_Hangover
		SAY @43 /* ~Heh, I know what you mean. I poured you a glass of water. Drink it, it'll help.~  */
		
		IF ~~ THEN REPLY @45 /*~Thanks. See you at the debriefing, dear.~*/
		GOTO XA_LC_Sex3_Neoma_END
	END

	IF ~~ THEN BEGIN XA_LC_Sex3_Neoma_END
		SAY @40 /*~(She plants a kiss on your forehead, and leaves.)~*/
		
		IF ~~ THEN
		DO ~
			StartCutSceneMode()
			StartCutScene("XAEX03EX")
		~
		EXIT
	END
//}
