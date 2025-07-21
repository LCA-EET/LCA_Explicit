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
		GOTO XA_LC_Schael_Bondage
	END

	IF ~
		GlobalLT("XA_Intro", "MYAREA", 1)
		Gender(Player1, FEMALE)
	~ THEN BEGIN XA_LC_XAEXPL03_Schael_1_F
		SAY @150 /* ~What are your orders, hero?~ */
		
		IF ~~ THEN REPLY @79 /* ~(Reach up and take hold of the back of her head.)~*/
		DO ~
			SetGlobal("XA_Intro", "MYAREA", 1)
		~
		GOTO XA_LC_Schael_Bondage_BJ_Female
		
		IF ~
			Global("XA_LC_SchaelBound", "GLOBAL", 1)
			GlobalLT("XA_LCE_BondageTalk", "LOCALS", 1)
		~ THEN REPLY @324 /* /*~That depends. What's in the bag?~*/
		DO ~
			SetGlobal("XA_Intro", "MYAREA", 1)
			SetGlobal("XA_LCE_BondageTalk", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage
		
		IF ~~ THEN REPLY @80 /* ~Fuck me, Schael!~*/
		DO ~
			SetGlobal("XA_Intro", "MYAREA", 1)
		~
		GOTO XA_LC_Schael_Sex_Female
		
		IF ~
			Global("XA_LC_CorwinNeomaRelationship", "GLOBAL", 2)
			GlobalLT("XA_LC_WheresNeoma", "LOCALS", 1)
		~ THEN REPLY @325 /*~Where's Neoma? Didn't you say she was interested in a threesome?~*/ 
		DO ~
			SetGlobal("XA_LC_WheresNeoma", "LOCALS", 1)
		~
		GOTO XA_LC_WheresNeoma
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
		~
		EXIT
	END
	//}

//}

//{ Neoma M/F
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_9
		SAY @37  /* ~Home. I want to be there when Rohma wakes up.~ */
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @38 /* ~Oh, of course. ~ */
		GOTO XA_LC_LastNight_M
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @138 /*~Gods (*yawn*), it's morning already?~*/
		GOTO XA_LC_LastNight_M
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN REPLY @38 /* ~Oh, of course. ~ */
		GOTO XA_LC_LastNight_F
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN REPLY @138 /*~Gods (*yawn*), it's morning already?~*/
		GOTO XA_LC_LastNight_F
	END

	IF ~~ THEN BEGIN XA_LC_LastNight_F
		SAY @348 /* ~Last night was incredible, love. I hope you enjoyed it as much as I did.~ */
		
		IF ~~ THEN 
		GOTO XA_LC_XAEXPL03_Neoma_10
	END

	IF ~~ THEN BEGIN XA_LC_LastNight_M
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

//{ Schael F/F
	IF ~~ THEN BEGIN XA_LC_Schael_Sex_Female
		SAY @345 /*~Of course, love.~ */
		
		= @346 /*~(She rummages through her bag, and pulls out a large, ribbed, pink strap-on. It looks strange, however. Seeing the look of confusion on your face, she explains.)~*/
		
		= @339 /* ~It's a new kind of strap-on. A strapless strap-on, if that makes sense. The curved part is held in place by my cunt, and the shaft, of course, goes in yours.~*/
		
		= @347 /* ~(She affixes the strap-on, and runs her hand up and down the shaft.)~*/
		
		IF ~~ THEN REPLY @337 /* ~How does it feel?~*/
		GOTO XA_LC_Schael_Sex_Female2
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Sex_Female2
		SAY @338 /* ~It feels amazing. It's hard to explain... it feels like an extension of my body. As through I had a cock... this is going to be *so* much fun!~*/
		
		= @331 /* ~(Schael reaches into her knapsack and pulls out a small vial, the contents of which she uses to lube up the shaft of the strap-on. She then runs her hands up and down the shaft. It looks, just like she said, as though she were stroking a penis. Satisfied that the coverage is sufficient, she gently uses the bulbous tip to part your labia before slowly inserting it further inside. She stops pushing once she feels that she's reached your cervix.)~*/
		
		IF ~~ THEN REPLY @332 /* ~Oh...~*/
		GOTO XA_LC_Schael_Sex_Female3
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Sex_Female3
		SAY @333 /* ~Such a deep cunt... you're going to love this, hero.~*/
		
		= @334 /* ~(She pulls back before driving into you with a steady rhythm. Even though she's not using all of her incredible strength, the force of her exertions is so great that you need to steady yourself by grabbing the headboard of the bed. With each of her thrusts forward, you push backward, as you feel the pleasure inside you begin to build.)~*/
		
		= @335 /* ~(Without warning, Schael forcibly grabs the back of your neck and increases the pace and intensity of her thrusts, causing you to yelp momentarily. In and out, she works the strap-on like a piston as she continues the pounding of your vagina. The pain you feel is dwarfed by ever-increasing amount of pleasure you're experiencing. You can hear her breathing heavily as she pours more and more of her immense strength into each thrust forward.)~*/
		
		=@336 /* ~*pant* Won't be long now, *pant* will it, love?~*/
		
		=@330 /* ~(As she continues to forcefully penetrate you, she reaches down to stroke your engorged clit. She then releases her grip on the back of your neck, and uses your free hand to fondle your breasts. The pleasure inside of you reaches a crescendo, and you scream and shudder uncontrollably as the orgasm takes hold. Schael, nearing her own orgasm, continues to mercilessly pound your cunt while the dildo stimulates both her clit and g-spot.)~*/
		
		=@197 /*~Oh, Tymora! Yes! YES!~ */
		
		=@340 /* ~(With a scream and one final, savage thrust forward, Schael reaches her own climax. You can feel the dildo vibrate within you as the orgasm crashes through her. Gradually, she slows the pace of her thrusts before stopping them entirely. After dismounting you, she delivers a stinging open handed slap to your well-rounded ass.)~*/
		
		IF ~~ THEN REPLY @341 /* ~Ow!~*/
		GOTO XA_LC_Schael_Sex_Female4
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Sex_Female4
		SAY @342 /* ~*pant* That was amazing....~*/
		
		= @343 /* ~(Schael collapses into bed next to you, and turns so that her body is facing up towards the ceiling. She removes the strap-on and looks at it with wonder as it's covered in her cum as well as yours. She holds it to her mouth and begins to softly lick up some of the fluids, starting with yours, then hers. You take the dildo from her and do the same.)~*/
		
		IF ~~ THEN REPLY @344 /* ~Mmm... so yummy.~*/
		GOTO XA_LC_Schael_Sex_Female5
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Sex_Female5
		SAY @321 /* ~That bath is calling to me... would you be a dear and heat up the water?~ */
		
		= @323 /*~(You do as your told, and heat up the bath water. It doesn't take long for the water to reach a comfortable temperature, and you're pleased to see that the tub is large enough for the two of you. Schael brings over the wine and fruit platter and places it on a stool next to the bed, and you both enter the tub. You spend the next half hour relaxing in the tub, drinking wine and eating fruit, before returning to bed to retire for the night in a loving, tender embrace.)~*/
		
		IF ~~ THEN
		DO ~
			StartCutSceneMode()
			StartCutScene("XAEX03EX")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LC_WheresNeoma
		SAY @326 /*~She's is, but she said that tonight should be for the two of us. Next time, love.~*/
		
		IF ~~ THEN REPLY @327 /**/
		GOTO XA_LC_WheresNeoma2
		
		IF ~~ THEN REPLY @328 /**/
		GOTO XA_LC_WheresNeoma2
	END
	IF ~~ THEN BEGIN XA_LC_WheresNeoma2
		SAY @329 /*~Let's forget about her... for tonight, anyway. Now, how can *I* please you, my hero?~*/
		
		COPY_TRANS XACOREX3 XA_LC_XAEXPL03_Schael_1_F
	END
//}

//{ Bondage (Both Sexes)
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
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @247 /* ~I don't like where this is going.~*/
		GOTO XA_LC_Schael_Bondage_No_Male
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN REPLY @247 /* ~I don't like where this is going.~*/
		GOTO XA_LC_Schael_Bondage_No_Female
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_2
		SAY @156 /* ~It's something I've been meaning to try...~*/
		
		= @157 /* ~I haven't told you this, but back in Spellhold, when I was straining helplessly against my bonds... it turned me on. Being powerless in spite of my... my muscles, and my strength, in front of you and the others... it made me feel... naked.~ */
		
		= @354 /* ~Gods, this is *so* embarrassing...~*/
		= @162 /* ~(She blushes.)~*/
		
		= @164 /* ~It's hard to explain. But the more I struggled, the closer I came to... you know. Now *that* would have been humiliating. Thankfully, I passed out before it could happen.~*/
		
		IF ~~ THEN REPLY @158 /* ~It could be because you're always in control. Having it taken from you must have made you feel vulnerable.~ */
		GOTO XA_LC_Schael_Bondage_3
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @178 /* ~I appreciate your openness about something like that... but I'm not into bondage.~ */
		GOTO XA_LC_Schael_Bondage_No_Male
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN REPLY @178 /* ~I appreciate your openness about something like that... but I'm not into bondage.~ */
		GOTO XA_LC_Schael_Bondage_No_Female
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_No_Male
		SAY @210 /* ~Yeah, it was stupid of me to bring them. Just... uh, just forget it. Now, tell me what you want, hero... tell me how can I make this night one that you'll never forget.~ */
		
		COPY_TRANS XACOREX3 XA_LC_XAEXPL03_Schael_1_M
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_No_Female
		SAY @210 /* ~Yeah, it was stupid of me to bring them. Just... uh, just forget it. Now, tell me what you want, hero... tell me how can I make this night one that you'll never forget.~ */
		
		COPY_TRANS XACOREX3 XA_LC_XAEXPL03_Schael_1_F
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
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @212 /* ~I appreciate your openness about something like that... but I'm not into bondage.~ */
		GOTO XA_LC_Schael_Bondage_No_Male
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN REPLY @212 /* ~I appreciate your openness about something like that... but I'm not into bondage.~ */
		GOTO XA_LC_Schael_Bondage_No_Female
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
		DO ~
			SetGlobal("XA_LC_Schael_BDSM", "LOCALS", 1)
		~
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
			Gender(Player1, FEMALE)
			GlobalLT("XA_LC_Grind", "LOCALS", 1)
		~ THEN REPLY @264 /*~(Grind your cunt against her face.)~*/
		DO ~
			SetGlobal("XA_LC_Grind", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_Grind
		
		IF ~
			GlobalLT("XA_LC_FondleTits", "LOCALS", 1)
		~ THEN REPLY @215 /* ~(Fondle her breasts.)~ */
		DO ~
			SetGlobal("XA_LC_FondleTits", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_FondleTits
		
		IF ~
			GlobalLT("XA_LC_Finger", "LOCALS", 1)
		~ THEN REPLY @275 /* */
		DO ~
			SetGlobal("XA_LC_Finger", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_Finger
		
		IF ~
			Global("XA_LC_Tickle", "LOCALS", 0)
		~ THEN REPLY @175 /* ~(Tickle her.)~*/
		DO ~
			IncrementGlobal("XA_LC_Tickle", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_Tickle_1
		
		IF ~
			Global("XA_LC_Tickle", "LOCALS", 1)
		~ THEN REPLY @175 /* ~(Tickle her.)~*/
		DO ~
			IncrementGlobal("XA_LC_Tickle", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_Tickle_2
		
		IF ~
			Global("XA_LC_Tickle", "LOCALS", 2)
		~ THEN REPLY @175 /* ~(Tickle her.)~*/
		DO ~
			IncrementGlobal("XA_LC_Tickle", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_Tickle_3
		
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
		
		IF ~
			Global("XA_LC_Praise", "LOCALS", 0)
		~ THEN REPLY @222 /* ~I really appreciate the trust you've placed in me, love.~*/
		DO ~
			IncrementGlobal("XA_LC_Praise", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_Praise_1
		
		IF ~
			Global("XA_LC_Praise", "LOCALS", 1)
		~ THEN REPLY @223 /* ~I'm so fortunate to have met you, Schael. I only wish we could have found each other sooner.~*/
		DO ~
			IncrementGlobal("XA_LC_Praise", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_Praise_2
		
		IF ~
			Global("XA_LC_Praise", "LOCALS", 2)
		~ THEN REPLY @224 /* I know I've told you this a hundred times, but you really are an amazing woman.~ */
		DO ~
			IncrementGlobal("XA_LC_Praise", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_Praise_3
		
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_CockSlap
		SAY @214 /* ~(You slap your thick, engorged cock against her cheeks, deliberately smearing them with your pre-cum. Schael, in shock, gasps and turns her head away after each brazen and degrading act. You try and force your tool through her lips and into her mouth, but her jaws remain clenched in defiance of your will.)~ */
		
		= @249 /* ~Ugh...~ */
		
		COPY_TRANS XACOREX3 XA_LC_Schael_Bondage_Options
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Grind
		SAY @265 /*~(You straddle her head with your hips, before burying your wet cunt in her face.)~*/
		
		= @266 /*Mmph!*/
		
		= @267 /*~(In spite of her muffled protest, you feel the delightful sensation of her licking your cunt, as you continue to forcefully grind against her face. In moments, the pleasure builds to a crescendo; not wanting things to end so soon, you dismount her. Her face, particularly her nose and mouth, glistens with your wetness as she breathes heavily.)~ */
		
		COPY_TRANS XACOREX3 XA_LC_Schael_Bondage_Options
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Finger
		SAY @276 /* ~(You insert your middle and ring fingers into Schael's extraordinarily wet cunt, and wiggle them around for a bit before inserting them deeper, eventually . As you continue to explore her cunt with your extended fingers, you rub your thumb against her clit, and she lets out an obscene, high-pitched moan which sends your own arousal to new heights. You're deep enough insider of her now to touch her cervix and g-spot, which causes her moans to turn into screams of ecstasy. Without warning, you cease your efforts, and pull your hand out of her insatiable cunt.)~*/
		
		= @277 /* ~W-what? You aren't going to... to...~*/
		
		IF ~~ THEN REPLY @278 /*~Finish you off? Not unless you tell me the safe word.~  */
		GOTO XA_LC_Schael_Bondage_Finger_A
		
		IF ~~ THEN REPLY @280 /* ~Why would I want this to end so soon? We're just getting started.~*/
		GOTO XA_LC_Schael_Bondage_Finger_B
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Finger_A
		SAY @279 /* ~*groan* You'll never *pant* get it out of me!~*/
		
		IF ~~ THEN
		GOTO XA_LC_Schael_Bondage_Finger_END
	END

	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Finger_B
		SAY @283 /* ~Fine! I'll do it myself!~*/
		
		IF ~~ THEN
		GOTO XA_LC_Schael_Bondage_Finger_END
	END

	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Finger_END
		SAY @281 /* ~(She flails wildly in her attempts to free her limbs and bring herself to a desperately needed orgasm. The bed posts flex and creak loudly as her powerful, sculpted physique twists and turns, but the restraints hold in spite of her exertions. After one final, forceful gyration of her hips, she collapses back into the bed with a heavy sigh.)~*/
		
		= @282 /*~Ugh... *pant* ...~ */
		
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
		
		IF ~~ THEN REPLY @232 /*~S-Schael I didn't mean what I said. It was just part of the roleplay, I - I swear!~*/
		GOTO XA_LC_Schael_DidntMeanIt
		
		IF ~
			GlobalLT("XA_LC_Beg", "LOCALS", 1)
		~ THEN REPLY @284 /*~No, please! I'll do anything, I - I'll eat your pussy, just don't hurt me!~*/
		DO ~
			SetGlobal("XA_LC_Beg", "LOCALS", 1)
		~
		GOTO XA_LC_Schael_Bondage_Beg
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_DidntMeanIt
		SAY @311 /*~Shut it!~*/
		
		IF ~~ THEN
		GOTO XA_LC_Schael_Forced
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Forced
		SAY @289 /*~(She roughly grabs you by the back of your head, and pulls it up toward her cunt and holds it there, so that your mouth is tasting her wetness.)~*/
		
		= @290 /*~I'll give you one minute. One. If you can't make me cum by then, you'll regret it.~*/
		
		= @292 /*~(You immediately begin to work your tongue like a piston into and out of her cunt, taking a moment to give her engorged clit some oral attention as well. She tastes both salty and sweet; it is a strange and sensual mix of flavors that you quite enjoy.)~*/
		
		= @291 /*~Ohhhh... hah... *pant* my hero... just like that...~*/
		
		= @295 /*~(You continue with your frenzied sucking and licking as she pulls your head closer into her. With your nose and mouth now engulfed in pussy, you realize that you are no longer able to breathe. You desperately try and pull you head back, but her grip is far too strong and she easily holds you in place. There's no way out of this other than to bring her to orgasm. With that thought in mind, you flick your tongue on her clit and feverishly lick it in a circular motion.)~  */
		
		= @293 /*~Oh my ... oh *pant* OH ... OHH!!~*/
		
		= @294 /*(Schael's cunt rewards your efforts with a deluge of cum. As her tasty, warm love juices fill your mouth and cover your face, you're thankful that no one was around to witness this degrading act; the hero of Baldur's Gate and Champion of the Sword Coast, humbled in such a way ... you'd never hear the end of it. She finally releases her hold on the back of your head, allowing you to pull back from her still dripping pussy and catch your breath.)~ */
		
		= @285 /*~Ohhhh... that was wonderful. Thank you dear. But... you did say some *very* unkind things, and I still need to punish you.~*/ 
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @312 /*~No! Please, don't! I didn't mean any of it. I love you!~*/
		GOTO XA_LC_Schael_Bondage_Taunt_End_Male
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN REPLY @312 /*~No! Please, don't! I didn't mean any of it. I love you!~*/
		GOTO XA_LC_Schael_Bondage_Taunt_End_Female
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Beg
		SAY @288 /*~Hm. Well, that's more like it.~*/
		
		IF ~~ THEN
		GOTO XA_LC_Schael_Forced
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Praise_1
		SAY @241 /*~You're the only one I would trust with something like this. */
		
		= @257 /* I hope you understand the significance of that.~*/
		
		COPY_TRANS XACOREX3 XA_LC_Schael_Bondage_Options
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Praise_2
		SAY @242 /*~I know... but I believe that people that are meant to be together are destined to meet at the right time.~*/
		
		= @258 /* ~If we'd met earlier, I don't think things would've worked out as well as they have.~ */
		
		IF ~
			RandomNum(2,1)
		~ THEN REPLY @260
		GOTO XA_LC_Schael_Bondage_Options_Await
		
		IF ~
			RandomNum(2,1)
		~ THEN REPLY @261
		GOTO XA_LC_Schael_Bondage_Options_Await
		
		IF ~
			RandomNum(2,2)
		~ THEN REPLY @260
		GOTO XA_LC_Schael_Bondage_Options_Await2
		
		IF ~
			RandomNum(2,2)
		~ THEN REPLY @261
		GOTO XA_LC_Schael_Bondage_Options_Await2
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Praise_3
		SAY @243 /* And you're an amazing <PRO_MANWOMAN>... a hero, in every sense of the word. I love you, <CHARNAME>. */
		
		IF ~
			RandomNum(2,1)
		~ THEN REPLY @244/* ~I love you too, Schael.~ */
		GOTO XA_LC_Schael_Bondage_Options_Await
		
		IF ~
			RandomNum(2,2)
		~ THEN REPLY @244/*~I love you too, Schael.~  */
		GOTO XA_LC_Schael_Bondage_Options_Await2
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_1
		SAY @176 /*~(You take a feather pen from the desk in the room, and use it to tickle her feet. Her beautiful body gyrates wildly as she tries to move her feet away from the feather.)~*/
		
		= @177 /*~Wh.. hah... what are you HAHAHA d – gods – HAHAHAHA s-stop!~*/
		
		IF ~~ THEN REPLY @179/* ~You're so ticklish, hahahah! I'm not going to stop unless you tell me the safe word!~ */
		GOTO XA_LC_Schael_Bondage_Tickle_1_END
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_1_END
		SAY @180 /* ~N-never! HAHAHAHA! S-stop ... HAHAH – when I get free, I'm going to HAHAHAH *hic* going to HAHAH OH GODS –~ */
		
		COPY_TRANS XACOREX3 XA_LC_Schael_Bondage_Options
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_2
		SAY @182 /*~(You straddle her so that you can easily tickle her arm pits and sides. Her body arches and shudders erotically as she frantically tries to turn away from your ticking, to no avail.)~ */
		
		= @183 /*~Nooooooooo HAHAHAH stop stop stop! <CHARNAME>! HAHAHAH If HAHAH you don't stop I'm going to HAHAH~*/
		
		COPY_TRANS XACOREX3 XA_LC_Schael_Bondage_Options
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_3
		SAY @185 /*~(You turn your body so your head is facing her feet, and begin to tickle her midsection and inner thighs. Her sculpted abs, now glistening with sweat, tense as she desperately tries to shake you off of her.)~ */
		
		= @186 /*~HAHAH oh gods I'm going HAHAH to HAHAH s-stop! HAHAH AH A HAHAH ARR no! NO! OH F – HAHAH ARROW!~*/
		
		= @187 /* ~(Unfortunately for Schael, her utterance of the safe word came a moment too late. Unable to control her bladder in response to the intense and prolonged tickling, you watch watch with supreme amusement as her clear-colored piss squirts wildly out of her, creating a quite messy puddle on the bed.)~*/
		
		= @188 /* ~Ohhhh... *hic*... ohhh....~ */
		
		IF ~~ THEN REPLY @189 /* ~How are we going to explain this? I guess I'll have to leave a bigger tip for the maid.~*/
		GOTO XA_LC_Schael_Bondage_Tickle_END
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_END
		SAY @190 /* ~Very *hic* funny... now untie me.~*/
		
		= @192 /* ~(You take one final moment to appreciate the amazingly erotic sight before you. The always-in-control Captain Corwin is naked, glistening, bound, and breathing heavily... but even the humiliation and degradation of being soaked in her own piss does little to detract from her beauty and presence. Schael still looks magnificent, with her nipples hardened and muscles fully pumped from her fruitless attempts to break free from her bondage.)~*/
		
		= @270 /*~(You undo the restraints on her legs first, and take some time to gently kiss those parts of her ankles that were chafed from struggling against the ropes. After you undo the restraint on her right arm, she immediately uses it to take off her blindfold, and begins to fondle her breasts. She then uses her left arm, the last of her limbs to be freed, to vigorously stroke her engorged and emerging clit.)~*/
		IF ~
			Gender(Player1, MALE)
		~ THEN
		GOTO XA_LC_Schael_Bondage_Tickle_END_Male
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN
		GOTO XA_LC_Schael_Bondage_Tickle_END_Female
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_END_Male
		SAY @263 /* ~~(Eyeing the massively erect cock pointed directly at her chest, she pleads:)~*/
		
		= @193 /* ~Oh.... oh <CHARNAME>, so masculine, so powerful... cum for me, my hero...~*/
		
		= @194 /* ~(Wasting no time, you immediately begin to pleasure yourself over the helplessly horny and still exhausted Schael. It doesn't take long before you feel the familiar surge forming at the base of your shaft.)~*/
		
		= @195 /* ~That's it, love! *pant* Give it to me!~ */
		
		= @196 /* ~(With a scream and a shudder, your seed explodes out of your enormous penis in great, gushing bursts. The first and most powerful blast hits just below her right eye, covering the most visible of her scars. The second covers her parted lips and chin, while the third, fourth and fifth impact her large tits and shredded abs. One final emission covers the hand she is using to feverishly bring herself to her own climax.)~*/
		
		IF ~~ THEN
		GOTO XA_LC_Schael_Bondage_Tickle_Orgasm
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_END_Female
		SAY @349 /* ~(Eyeing your cunt that is directly over her chest, she pleads.)~*/
		
		= @350 /* ~(~Oh.... oh <CHARNAME>, so beautiful, so powerful... cum for me, my hero...)~*/
		
		= @351 /* ~(Wasting no time, you immediately begin to pleasure yourself over the helplessly horny and still exhausted Schael. It doesn't take long before you feel the familiar surge forming in your vagina.)~*/
		
		= @195 /* ~That's it, love! *pant* Give it to me!~ */
		
		= @352 /* ~(With a scream and a shudder, your cum explodes out of your cunt in great, gushing bursts. The first and most powerful blast hits just below her right eye, covering the most visible of her scars. The second covers her parted lips and chin, while the third, fourth and fifth impact her large tits and shredded abs. One final emission covers the hand she is using to feverishly bring herself to her own climax.)~*/
		
		IF ~~ THEN
		GOTO XA_LC_Schael_Bondage_Tickle_Orgasm
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_Orgasm
		SAY @197 /* ~Oh, Tymora! Yes! YES!~ */
		
		= @198 /* ~(Schael shrieks in unbridled pleasure as she reaches her orgasm. A voluminous amount of hot cum gushes out of her cunt, covering her hand. Unable to resist the temptation, you take her hand and lick the cum – yours, and hers – off of her fingers. She, in turn, wipes your seed from her lovely face, and eagerly licks her hand clean.)~*/
		
		= @199 /*Oh... *pant* oh, <CHARNAME>. That was incredible.*/
		
		= @271 /*(You collapse into the bed next to her, and lay comfortably at her side.)~*/
		
		IF ~~ THEN REPLY @200 /*~We have to do this again sometime. You seemed to really enjoy the bondage.~*/
		GOTO XA_LC_Schael_Bondage_Tickle_Bath_A
		
		IF ~~ THEN REPLY @269 /*~It definitely was. Any other kinks you'd like to tell me about?~*/
		GOTO XA_LC_Schael_Bondage_Tickle_Bath_B
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_Bath_A
		SAY @201 /*~I did, for sure... Maybe next time, you'll be the one tied up.~*/
		
		IF ~~ THEN
		GOTO XA_LC_Schael_Bondage_Tickle_Bath_Dirty
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_Bath_B
		SAY @274 /*~Plenty... but I think one was enough for the night. We need to be up bright and early tomorrow.~*/
		
		IF ~~ THEN
		GOTO XA_LC_Schael_Bondage_Tickle_Bath_Dirty
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_Bath_Dirty
		SAY @202 /*~(She runs her fingers over her abs and tits, which are still covered in your cum.)~*/
		
		IF ~
			Gender(Player1, MALE)
		~ THEN
		GOTO XA_LC_Schael_Bondage_Tickle_Bath_Dirty_Male
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN
		GOTO XA_LC_Schael_Bondage_Tickle_Bath_Dirty_Female
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_Bath_Dirty_Male
		SAY @203 /*~All that cum... wow. You really are a dirty boy, aren't you? Go and heat up the bath water. Let's get cleaned up.~*/
	
		IF ~~ THEN
		GOTO XA_LC_Schael_Bondage_Tickle_Sleep
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_Bath_Dirty_Female
		SAY @353 /*~All that cum... wow. You really are a dirty girl, aren't you? Go and heat up the bath water. Let's get cleaned up.~*/
	
		IF ~~ THEN
		GOTO XA_LC_Schael_Bondage_Tickle_Sleep
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Tickle_Sleep
		SAY @205 /*~(While you heat up the water, you hear Schael mouth the words to some kind of healing spell, presumably to remediate the chafing caused by the ropes that bound her to the bed. It doesn't take long for the water to rise to the desired temperature, and fortunately, the bath is large enough for the two of you. Schael enters first, and you follow, but not before changing the soiled covers on the bed.)~*/
		
		IF ~~ THEN 
		GOTO XA_LC_Schael_Bathing
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bathing
		SAY @268 /*~(You spend the next half hour relaxing, while being sure to wash away the various bodily fluids that were emitted during your bondage session. Afterwards, you enjoy the last of the wine and fruit before retiring for the night in a tender, loving embrace.)~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Schael", "GLOBAL", 4)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Options_Await
		SAY @259 /* ~(Schael, blindfolded, restrained and aroused, quivers with erotic anticipation...)~ */
		
		COPY_TRANS XACOREX3 XA_LC_Schael_Bondage_Options
	END
	
	IF ~~ THEN XA_LC_Schael_Bondage_Options_Await2
		SAY @262 /* ~(Schael lets out a low, sensual moan as she awaits whatever you have in store for her.)~*/
		
		COPY_TRANS XACOREX3 XA_LC_Schael_Bondage_Options
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Taunt_End_Male
		SAY @231 /*~(She tosses the broken bed post from one hand to the other, before placing the jagged edge dangerously close to your erect cock and vulnerable testicles, threatening to smash them.)~*/
		
		= @253 /*~(You can feel your heart pounding in your ears as you tremble in fear before her. She lifts the post with both arms, undoubtedly to smash your precious genitals into a bloody pulp. Shaking and unable to face what is about to happen, you close your eyes, and feel your erect cock quiver and shoot its urine all over Schael's legs in a final act of surrender.)~*/
		
		= @233 /*~(She bursts out laughing at the sight of the quivering mess that is the hero of Baldur's Gate.)~*/
		
		= @234 /*~Hah! You should've seen the look on your face! I thought you were about to cry. Did you think I was really going to crush your balls?~*/
		
		IF ~~ THEN REPLY @235 /*~You... you mean you're not mad at me?~*/
		GOTO XA_LC_Schael_Bondage_NotMad_Male
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_Taunt_End_Female
		SAY @296 /*~(She tosses the broken bed post from one hand to the other, before placing the jagged edge dangerously close to your engorged cunt, threatening to shred it.)~*/
		
		= @297 /*~(You can feel your heart pounding in your ears as you tremble in fear before her. She pulls her arm back, undoubtedly to prepare for a powerful thrust forward that will forever scar your precious pussy. Shaking and unable to face what is about to happen, you close your eyes, and empty your bladder all over Schael's legs in a final, utterly humiliating act of surrender and defeat.)~*/
		
		= @233 /*~(She bursts out laughing at the sight of the quivering mess that is the hero of Baldur's Gate.)~*/
		
		= @298 /*~Hah! You should've seen the look on your face! I thought you were about to cry. Did you think I was really going to ram this down there?~*/
		
		IF ~~ THEN REPLY @235 /*~You... you mean you're not mad at me?~*/
		GOTO XA_LC_Schael_Bondage_NotMad_Female
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_NotMad_Female
		SAY @299 /*~Of course not, silly. Like you said, it was just roleplay. I can't believe you pissed yourself, though... it certainly wasn't something I expected from my beautiful and handsome hero. Look, my legs and feet are covered in it. Smell for yourself.~*/
		
		= @255 /* ~(She extends her leg, so that her toes are in front of your nose.)~*/
		
		= @256 /* ~Smell it? You're lucky I'm in a good mood, otherwise I might've made you lick me clean. Maybe you'd like that, mm? Next time, perhaps... this room has a bath, after all.~*/
		
		= @300 /*~(She eyes your still twitching cunt, and licks her luscious lips.)~*/
		
		= @301 /*~Lay down on the bed. That magnificent cunt needs some tender love and care.~  */
		
		= @302 /*~(You lay down face up as instructed. Schael jumps in the bed, and maneuvers herself so that her head is between your legs.)~*/
		
		= @240 /*~You know, I really appreciate your willingness to try new things. I think that next time though, we'll need some stronger restraints.~*/
		
		IF ~~ THEN REPLY @79 /*~(Reach and take hold of the back of her head.)~*/
		GOTO XA_LC_Schael_Bondage_BJ_Female
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_NotMad_Male
		SAY @236 /*~No, silly. Like you said, it was just roleplay. I can't believe you pissed yourself, though... it's certainly not what I'd expect from my handsome, brave hero. Look, my legs and feet are covered in it. You're lucky I'm in a good mood, otherwise I might've made you lick me clean. Maybe you'd like that, mm? Next time, perhaps... this room has a bath, after all.~*/
		
		= @255 /* ~(She extends her leg, so that her toes are in front of your nose.)~*/
		
		= @256 /* ~Smell it? You're lucky I'm in a good mood, otherwise I might've made you lick me clean. Maybe you'd like that, mm? Next time, perhaps... this room has a bath, after all.~*/
		
		= @237 /*~(She eyes your still twitching cock, and licks her luscious lips.)~*/
		
		= @238 /*~Get up and sit on the edge of the bed. That heroic cock of yours requires my attention.~*/
		
		= @239 /*~(You eagerly get up and sit at the edge of the bed. Schael kneels so that her head between your legs, directly in front of your throbbing member, and seizes it with her hand.)~ */
		
		= @240 /*~You know, I really appreciate your willingness to try new things. I think that next time though, we'll need some stronger restraints.~*/
		
		IF ~~ THEN REPLY @79 /*~(Reach and take hold of the back of her head.)~*/
		GOTO XA_LC_Schael_Bondage_BJ_Male
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_BJ_Female
		SAY @305 /*~You know what you want, and aren't afraid to take it... it's a quality I love in a woman.~ */
		
		= @303 /*~(From the moment that you first met this incredible woman, you observed that she is determined to the best at everything that she does. It comes as no surprise, then, that Schael's skill at eating pussy is other-worldly, certainly far beyond your own.~*/
		
		=@313 /*~(With each kiss, lick, and flick of her loving tongue, you moan, writhe and shudder as the pleasure builds to a crescendo. Schael, for her part, giggles, squeals and moans as more and more of your juices make it into her mouth.)~*/
		
		=@122 /*(Her efforts send you into a state of bliss, unlike anything you've experienced before. Everything you've suffered, everything you've had to endure... you've earned this. With that thought in mind, you finally let go of your inhibitions, and allow yourself to fully enjoy the wonderful gift that this beautiful, incredible woman is giving you.)~*/
		
		= @314 /*~(You lose track of time... all that matters to you now is the pleasure that you're feeling, and the profound love that you two share for one another. Slowly, you're pulled from your reverie as Schael reaches up to squeeze your breasts. In moments, you feel the pleasure inside of you surge to a crescendo.)~*/
		
		= @304 /*~(While running your hands through her silky, dark hair, you scream as the inevitable, monumental climax occurs. Schael eagerly licks up and swallows your cum, and continues to lick your pussy even after your orgasm has subsided.)*/
		
		= @306 /*~You're so tasty, love.~*/
		
		IF ~
			GlobalLT("XA_LC_Schael_BDSM", "LOCALS", 1)
		~ THEN REPLY @307 /*~Oh, Schael... that was... was...~*/
		GOTO XA_LC_Schael_Bondage_BJ_Female_Reciprocate
		
		IF ~
			Global("XA_LC_Schael_BDSM", "LOCALS", 1)
		~ THEN REPLY @307 /*~Oh, Schael... that was... was...~*/
		GOTO XA_LC_Schael_Bondage_BJ_Female_End
  
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_BJ_Female_Reciprocate
		SAY @309 /*~(She smiles warmly.)~*/
		
		= @315 /*~I know... and I can think of one way you can show your thanks.~*/
		
		= @316 /*~(She lays down on the bed and spreads her powerful legs. Knowing exactly what she wants, you enter the bed and maneuver yourself so that your head is over her neatly-trimmed cunt.)~*/
		
		= @317/*~(Schael, as usual, smells and tastes wonderful. Under her tutelage, you've become an expert at eating pussy, and as she did with you, you use your tongue to delicately lick and flick her most sensitive area. While eating her out, you run your hands over her spectacular physique, starting with her thighs, then her firm and sculpted midsection, and finally, her large, heaving breasts.)~*/
		
		=@322 /*~(Seeing how much her physique pleases you, she flexes and tenses the muscles in her thighs, arms and abs. Her moaning tells you that she's really getting off on having one of the most powerful beings on the planet pleasure her in such a devoted way.)~*/
		
		= @291 /*~Ohhhh... hahah... my hero... *pant* ... just like that...~*/
		
		= @318 /*~(This amazing and magnificently skilled woman that you love has risked and sacrificed for you countless times, so you're more than happy to be able to do this for her. The pitch and intensity of her moaning increases steadily, and it doesn't take long before her overly aroused cunt rewards your mouth with a warm, salty and oddly sweet eruption of cum. You dismount her after giving her clit a gentle and loving kiss, and lay down at her side.)~*/
		
		= @319 /*~Oh... oh my... that might've been the best I've ever had...~*/
		
		= @320 /*~(She kisses you, and licks away some of the remnants of her eruption that still covered your mouth and chin.)~*/ 
		
		= @321 /*~That bath is calling to me... would you be a dear and heat up the water?~*/
		
		= @323 /*~(You do as your told, and heat up the bath water. It doesn't take long for the water to reach a comfortable temperature, and you're pleased to see that the tub is large enough for the two of you. Schael brings over the wine and fruit platter and places it on a stool next to the bed, and you both enter the tub. You spend the next half hour relaxing in the tub, drinking wine and eating fruit, before returning to bed to retire for the night in a loving, tender embrace.)~*/
		
		IF ~~ THEN
		DO ~
			StartCutSceneMode()
			StartCutScene("XAEX03EX")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_BJ_Female_End
		SAY @309 /*~(She smiles warmly.)~*/
		
		= @308 /*~I know. Listen... why don't you go and heat up the bath water. I'll join you shortly. The tub looks like it's big enough for the two of us.~*/
		
		= @310 /*~(While you heat up the water, you hear Schael mouth the words to some kind of healing spell, presumably to remediate the chafing caused by the ropes that bound her to the bed. It doesn't take long for the water to rise to the desired temperature. You enter first, followed momentarily thereafter by Schael.)~*/
		
		IF ~~ THEN 
		GOTO XA_LC_Schael_Bathing
	END
	
	IF ~~ THEN BEGIN XA_LC_Schael_Bondage_BJ_Male
		SAY @121 /*~Hm. You know what you want, and aren't afraid to take it... a quality I love in a man.~ [xalce157]*/
		
		= @254 /*~(Schael begins to softly kiss and lick your engorged member, starting from the base, and working ever so slowly toward the tip. To help keep your cock steady, she uses her left hand to hold it firmly at the base, while she uses her right to gently fondle your balls. Upon reaching the bulbous head of your massively erect penis, she darts and swirls her tongue around it, before placing a loving kiss on your tip... the pleasure is intense, and it causes you to moan and shudder uncontrollably.)~*/
		
		IF ~~ THEN
		GOTO XA_LC_XAEXPL04_Schael_BJ
	END
//}