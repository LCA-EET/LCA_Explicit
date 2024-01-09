BEGIN ~XACOREX3~

//{ Corwin Sex 3 - Schael

IF ~
	Global("XA_CorwinSex_3_Schael", "GLOBAL", 5)
~ THEN BEGIN XA_XAEXPL03_Schael_End
	SAY @41  /* ~(You awaken and see Schael getting dressed.)~*/
	
	IF ~~ THEN REPLY @36  /*  ~Schael? Where are you going?~*/
	DO ~
		SetGlobal("XA_CorwinSex_3_Schael", "GLOBAL", 6)
	~
	GOTO XA_XAEXPL03_Neoma_25
END

IF ~
	Global("XA_CorwinSex_3_Schael_A", "GLOBAL", 1)
~ THEN BEGIN XA_XAEXPL03_Schael_A_4
	SAY @93  /* ~(Using a towel and the warm bath water, you gently wipe her face clean. You also double check to make sure that none of it got in her hair, which, fortunately, it didn't.)~*/
	
	IF ~~ THEN REPLY @95  /*~Schael, you were amazing. Thank you.~ */
	DO ~
		SetGlobal("XA_CorwinSex_3_Schael_A", "GLOBAL", 2)
	~
	GOTO XA_XAEXPL03_Schael_A_5
END

IF ~~ THEN BEGIN XA_XAEXPL03_Schael_A_5
	SAY @96  /* ~I'm glad you enjoyed it. I did, too, but next time I'll be better prepared.~*/
	
	= @33  /*~(She eyes your member, which has suddenly sprung back to life, and smiles.)~ */
	
	= @34  /* ~Looks like we're both ready for round two...~*/
	
	= @35  /* ~(Schael takes hold of your erect penis and walks you back into bed. You spend the next few hours drinking wine, making love and pleasuring each other, before finally falling asleep in each other's embrace.)~*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_CorwinSex_3_Schael", "GLOBAL", 4)
		//StartCutSceneMode()
		//StartCutScene("XAEXPL3E")
	~
	EXIT
END

IF ~
	Global("XA_CorwinSex_3_Schael", "GLOBAL", 2)
~ THEN BEGIN XA_XAEXPL03_Schael_1
	SAY @61 /*~I'm glad you're still awake.~*/
	
	IF ~~ THEN REPLY @62 /*~Another few minutes and I wouldn't have been.~*/
	DO ~
		SetGlobal("XA_CorwinSex_3_Schael", "GLOBAL", 3)
	~
	GOTO XA_XAEXPL03_Schael_3
	
	IF ~~ THEN REPLY @63 /*~Wow... Schael, you look amazing...~*/
	DO ~
		SetGlobal("XA_CorwinSex_3_Schael", "GLOBAL", 3)
	~
	GOTO XA_XAEXPL03_Schael_2
END

IF ~~ THEN BEGIN XA_XAEXPL03_Schael_2
	SAY @64 /* ~Thanks, love. It's been so long since I've worn a dress!~*/
	
	IF ~~ THEN
	GOTO XA_XAEXPL03_Schael_3
END

IF ~~ THEN BEGIN XA_XAEXPL03_Schael_3
	SAY @65 /*~Sorry I'm so late. It took a while to get Rohma to bed. She was so excited, she told me everything that she did with her grandfather while I was gone. Did you know she's first in her class at math?~*/
	
	IF ~~ THEN REPLY @66 /*~She's a smart kid.~*/
	GOTO XA_XAEXPL03_Schael_4A
	
	IF ~~ THEN REPLY @67 /*~No need to apologize. Sounds like you two had a great time.~*/
	GOTO XA_XAEXPL03_Schael_4B
END

IF ~~ THEN BEGIN XA_XAEXPL03_Schael_4A
	SAY @73 /*~She really is... oh, what's this? You brought wine?~ */
	
	IF ~~ THEN REPLY @69 /*~Berduskan dark wine, your favourite. Would you like me to pour you a glass?~*/
	GOTO XA_XAEXPL03_Schael_5
END

IF ~~ THEN BEGIN XA_XAEXPL03_Schael_4B
	SAY @68 /*~We did... oh, what's this? You brought wine?~ */
	
	IF ~~ THEN REPLY @69 /*~Berduskan dark wine, your favourite. Would you like me to pour you a glass?~*/
	GOTO XA_XAEXPL03_Schael_5
END

IF ~~ THEN BEGIN XA_XAEXPL03_Schael_5
	SAY @70 /* ~Such a gentleman. Yes, please.~*/
	
	= @71 /* ~(You remove the covers, and Schael gasps with delight as she ogles your nude body.)~*/
	
	= @72 /*~Oh, my... someone got started a little early, mm?~ */
	
	= @74 /* ~(You pour her a glass and hand it to her, then pour one for yourself.)~*/
	
	= @75  /*~Mm. Thank you, dear.~ */
	
	= @76  /*~(With the wine glass in one hand, she takes hold of your dick in the other and leads you back to the edge of the bed. You sit down, and tell each other about your day, while she lovingly strokes and caresses your package. After a few minutes of this teasing, you set your wine glasses aside. Schael stands to disrobe, and with just a couple of fluid movements, her dress falls to the floor. You think to yourself that you'll never get tired of seeing her beautiful, magnificent physique in all its nude glory.)~  */
	
	= @77  /* ~(Without another word, she turns and pushes you down so that you are laying flat on your back. She then straddles your body, so that her hips are directly over your erect, leaking cock.)~*/
	
	= @78  /* ~So. What are your orders, hero?~ */
	
	IF ~
		GlobalGT("XA_CorwinOpinionOfPlayer", "GLOBAL", 109)
	~ THEN REPLY @79 /* ~(Reach up and take hold of the back of her head.)~*/
	GOTO XA_XAEXPL03_Schael_A
	
	IF ~~ THEN REPLY @80 /* ~Fuck me, Schael!~*/
	GOTO XA_XAEXPL03_Schael_B
	
	IF ~~ THEN REPLY @81 /* ~Turn around. I want to take you from behind.~*/
	GOTO XA_XAEXPL03_Schael_C
END

	//{ Corwin A
	IF ~~ THEN BEGIN XA_XAEXPL03_Schael_A
		SAY @121  /* ~Hm. You know what you want, and aren't afraid to take it... a quality I love in a man.~ */
		= @82  /* ~Gods, I've been dreaming about this for so long...~ */
		
		= @83  /* ~(Schael places her head between your legs, and begins to kiss and lick your engorged member, starting from the base and working ever so slowly toward the tip.)~ */
		
		= @115 /* ~(To help keep it steady, she uses her left hand to hold it at the base, while she uses her right to gently fondle your balls. Upon reaching the bulbous head of your massively erect cock, she darts and swirls her tongue around it... the feeling is intense, and it causes you to moan and shudder uncontrollably.)~*/
		
		= @116  /* ~(She looks up at you with a wide smile, then takes you into her mouth. Up and down her head bobs on your shaft, while you use your hand on the back of her head to help her get the rhythm just right. Throughout, you can hear Schael moan, giggle, and squeal as more and more of your pre-cum makes it into her mouth.)~*/
		
		= @122  /* ~Everything you've suffered, everything you've had to endure... you've earned this. With that thought in mind, you finally let go of your inhibitions, and allow yourself to fully enjoy the wonderful gift that this beautiful, incredible woman is giving you. After only a few minutes of this truly exquisite blowjob, you feel an intense surge begin to build in the base of your shaft...)~*/
		
		IF ~~ THEN REPLY @84  /* ~I - I'm so close!~*/
		GOTO XA_XAEXPL03_Schael_A_2
	END

	IF ~~ THEN BEGIN XA_XAEXPL03_Schael_A_2
		SAY @85 /* ~(Hearing this, Schael increases her rhythm and the pressure against your balls. With a scream, you release your seed into her.)~*/
		
		= @86 /*~Mmmfh!~ */
		
		= @87 /* ~(She's able to swallow the first three blasts before needing to pull back entirely. As she gasps for air, a fourth and fifth spurt from your still erupting cock land on her face, covering her chin and right cheek, narrowly missing her silky, ebony hair.)~ */
		
		= @88  /* ~*Cough* *gag* *cough*~ */
		
		IF ~~ THEN REPLY @89  /* ~Love, are you alright?~ */
		GOTO XA_XAEXPL03_Schael_A_3
	END

	IF ~~ THEN BEGIN XA_XAEXPL03_Schael_A_3
		SAY @90  /* ~I'm *cough* fine, love. Just hand me a towel...~*/
		
		IF ~~ THEN REPLY @91/* ~Let me heat up the bath water for you. I'll get you cleaned up, hon.~*/
		DO ~
			SetGlobal("XA_CorwinSex_3_Schael_A", "GLOBAL", 1)
			StartCutSceneMode()
			StartCutScene("XAEXPL3T")
		~
		EXIT
	END
	//}

	//{ Corwin B
	IF ~~ THEN BEGIN XA_XAEXPL03_Schael_B
		SAY @92  /* ~(With a smile, she presses down on your cock as you easily slide into her. She's so warm and moist, and you can feel the tip of your cock smash against her cervix with each savage thrust.)~*/
		
		= @117 /* ~(You reach up to her large, beautiful tits and squeeze them, gently at first, then harder until Schael lets out a squeal. After several minutes, you can feel the pace and ferocity of Schael's thrusts increase, causing you to take hold of her hips, which are now covered in sweat.)~ */
		
		= @118  /* ~(She reaches out and braces herself against the headboard, using it as leverage to drive herself even harder on to your cock. As she drives downward, you push upward, causing you both to yell in pleasure.)~*/
		
		= @99 /* ~YES! OH GODS, YES!~*/
		
		= @100 /* ~(In moments, you feel a surge building in the base of your shaft.)~*/
		
		IF ~~ THEN REPLY @101 /* ~Schael, I - I'm so close! OH, GODS —~*/
		GOTO XA_XAEXPL03_Schael_B_2
	END

	IF ~~ THEN BEGIN XA_XAEXPL03_Schael_B_2
		SAY @102  /*~YES! GIVE IT TO ME, HERO!~ */
		
		= @103  /* ~(With a scream, the first three blasts of your seed explode into her as she reaches her own climax. A fourth, fifth, and sixth spurt are released with far less force than the first, as you can feel the cum ooze out of her and back onto your skin.)~*/
		
		= @104 /* ~Oh, <CHARNAME>.... that was incredible... I love you.~ */
		
		IF ~~ THEN REPLY @105  /* ~You were amazing, dear. I love you too.~*/
		GOTO XA_XAEXPL03_Schael_B_3
	END

	IF ~~ THEN BEGIN XA_XAEXPL03_Schael_B_3
		SAY @106  /*  ~(She dismounts your spent cock and lays at your side, with her head and arm on your chest. You're able to sleep for a little while, but are awakened by the welcome sensation of Schael stroking your penis back to life.)~*/
		
		= @34  /* ~Looks like we're both ready for round two...~*/
		
		= @107  /* ~(You spend the next few hours drinking wine, making love and pleasuring each other, before finally falling asleep in each other's embrace.)~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_CorwinSex_3_Schael", "GLOBAL", 4)
			//StartCutSceneMode()
			//StartCutScene("XAEXPL3E")
		~
		EXIT
	END
	//}

	//{ Corwin C
	IF ~~ THEN BEGIN XA_XAEXPL03_Schael_C
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
		GOTO XA_XAEXPL03_Schael_C_2
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Schael_C_2
		SAY @114  /* ~(You lay at each other's side, with her head and arm on your chest. You're able to sleep for a little while, but are awakened by the stirring of your cock, and the sensation of Schael fondling your balls.)~*/
		
		= @34  /* ~Looks like we're both ready for round two...~*/
		
		= @107  /* ~(You the next few hours drinking wine, making love and pleasuring each other, before you finally fall asleep.)~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_CorwinSex_3_Schael", "GLOBAL", 4)
			//StartCutSceneMode()
			//StartCutScene("XAEXPL3E")
		~
		EXIT
	END
	//}

//}

//{ Corwin Sex 3 - Neoma
IF ~
	Global("XA_CorwinSex_3_Neoma", "GLOBAL", 7)
~ THEN BEGIN XA_XAEXPL03_Neoma_24
	SAY @41  /* ~(You awaken and see Schael getting dressed.)~*/
	
	IF ~~ THEN REPLY @36
	DO ~
		SetGlobal("XA_CorwinSex_3_Neoma", "GLOBAL", 8)
	~
	GOTO XA_XAEXPL03_Neoma_25
END

IF ~
	Global("XA_CorwinSex_3_Neoma",  "GLOBAL",5)
~ THEN BEGIN XA_XAEXPL03_Neoma_23
	SAY @32  /* ~Well, that was fun.~ */
	
	= @33  /*~(Your member, which has suddenly sprung back to life, throbs in agreement. She eyes it, and smiles.)~*/
	
	= @34  /* ~Looks like we're both ready for round two...~*/
	
	= @35  /* ~(Schael takes hold of your erect penis and walks you back into bed. You spend the next few hours drinking wine and making love.)~ */
	
	= @135 /*~(Not wanting the night to end just yet, you take the opportunity to use some of the tongue techniques you learned from watching the two ladies, and successfully bring her to an other-wordly climax. This delighted Schael, so much so that she reciprocated by giving you the most fantastic and exquisite blowjob you've ever experienced. After several hours, and even more orgasms, you finally fall asleep in a warm and tender embrace.)~*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_CorwinSex_3_Neoma", "GLOBAL", 6)
		//StartCutSceneMode()
		//StartCutScene("XAEXPL3E")
	~
	EXIT
END

IF ~
	Global("XA_CorwinSex_3_Neoma", "GLOBAL", 4)
~ THEN BEGIN XA_XAEXPL03_Neoma_21
	SAY @29  /* ~(You watch as Schael tenderly washes Neoma's face and hair in the bath. In just a few minutes, the last remnants of your seed are washed away, and Neoma dries off and gets dressed. Schael uses the opportunity to take off the strap on and clean it before placing it back in Neoma's bag.)~*/
	
	IF ~~ THEN
	EXTERN XANEOMA XA_XAEXPL03_Neoma_22
END

IF ~
	Global("XA_CorwinSex_3_Neoma", "GLOBAL", 2)
~ THEN BEGIN XA_XAEXPL03_Neoma_1
	SAY @0 /* ~(Schael stumbles in, followed by Neoma, her 'friend' that you met earlier in the day. Neoma's carrying a bag with her. Both ladies appear to be somewhat inebriated.)~*/
	
	= @1 /*  ~<CHARNAME>, Neoma. Neoma, <CHARNAME>, the hero of Baldursh Gate, and owner of the finest cock and biggest balls in the Sword Coast, or probably anywhere, heh.~*/
	
	IF ~~ THEN
	EXTERN XANEOMA XA_XAEXPL03_Neoma_2
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_3C
	SAY @60 /* ~Oh, stop it. I'm not on duty... well, Flaming Fist duty, anyway. Tonight, my duty is to fuck you senseless, hero.~*/
	
	IF ~~ THEN 
	EXTERN XANEOMA XA_XAEXPL03_Neoma_6A
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_3B
	SAY @2 /* ~I'm sorry I'm late, love. It took a while for me to get Rohma to bed, then Neoma and I went out for a couple of... wait. Was it a couple?~*/
	
	IF ~~ THEN 
	EXTERN XANEOMA XA_XAEXPL03_Neoma_4
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_5
	SAY @3 /* ~Wonderful, but I think I've had enough, at least for now. I promised you a night you wouldn't forget, and I need to deliver.~ */
	
	IF ~~ THEN
	EXTERN XANEOMA XA_XAEXPL03_Neoma_6
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_7
	SAY @4 /* ~Get out of bed, and watch. Neoma and I are going to demonstrate the proper use of one's tongue.~*/
	
	= @5 /* ~(You pull off the covers, get out of bed and walk over to the chair. The two ladies gasp in delight as they ogle your nude body.)~ */
	
	= @6 /* ~Oh, my. Someone got started a little early, mm?~*/
	
	IF ~~ THEN
	EXTERN XANEOMA XA_XAEXPL03_Neoma_8
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_9
	SAY @7 /* ~It tastes as good as it looks, too. Get undressed, hon.~*/
	
	= @8 /*~(You watch as Schael and Neoma slowly, sensually undress. Schael is as magnificent and beautiful as ever. Neoma is quite attractive as well; though not as sculpted as Schael, she's still very fit, with large, pink nipples, and reddish-brown hair that contrasts nicely with her pale, white, and very full breasts. Already, you feel a coolness at the tip of the cock as your pre-cum seeps out of you and begins to drip to the floor. Without thinking, you begin take hold of your tool and begin to stroke it.)~ */
	
	IF ~~ THEN REPLY @9 /* ~Ohhhh...~ */
	GOTO XA_XAEXPL03_Neoma_10
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_10
	SAY @10  /* ~(Hearing your moan, Schael and Neoma turn to you as you continue to masturbate.)~ */
	
	= @11  /* ~Stop it! Don't you DARE play with that cock!~ */
	
	= @12  /* ~(You immediately stop; you've seen that fierce look in her eyes before, and you know she means business.)~*/
	
	= @13  /* ~That's better. Just watch. For now, at least.~*/
	
	= @14  /* ~(Satisfied that you'll do as your told, the two ladies resume with their kissing and touching. They take turns licking and fondling each other's breasts, caressing their bottoms, and fingering their sex. It takes nearly all of your willpower to stop yourself from throwing them on the bed and having your way with the both of them.)~*/

	= @123 /* ~(When their foreplay ends, they walk over to the bed. Neoma gets in first and lays face-up. Schael follows her in, and turns her body so that her head is between Neoma's legs. Using a pillow to support her neck, Neoma raises her head so that it's between Schael's powerful thighs, directly in front of her most private, sensitive, and intimate parts).~ */
	
	= @124 /*~(You watch with wonder as the ladies expertly pleasure each other using their tongues. Occasionally, they giggle, squeal, shudder and moan as they inch ever closer to what is sure to be a momentous climax. Just when you think they are about to cross that edge, Schael stops, and Neoma does the same.)~*/
	
	= @15  /* ~<CHARNAME>. Go and bring me Neoma's bag.~ */
	
	= @16  /* ~(You fetch the bag and bring it to your love.)~ */
	
	= @125 /* ~Don't just stand there, open it!~ */
	
	= @126 /*~(Reaching into the bag, you pull out what appears to be a strap-on. You glance at Schael with a look of confusion.)~*/

	= @128 /* ~Gods, don't look so worried. It's not for you. Give it to me. Good, now get in bed.~*/
	
	= @129 /*~(She takes the strap-on and buckles it around her waist.)~ */
	
	= @19  /* ~You brought the big one. Feeling adventurous, are we?~ */
	
	= @20  /* ~(Neoma turns so that her head is facing the headboard of the bed, then raises her hips toward Schael's.)~ */
	
	= @21  /* ~As for you, <CHARNAME>...~ */
	
	IF ~~ THEN
	EXTERN XANEOMA XA_XAEXPL03_Neoma_11
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_12
	SAY @30 /* ~(That's as good an invitation as any, you think to yourself, as you maneuver yourself between the head board and Neoma's, well, head. You take your dick in your hand and point it toward her. She kisses it, licks off the pre-cum that has accumulated on your tip, and rubs her cheeks against it.)~ */

	= @130 /*~(Without another word, she takes you into her mouth. As you penetrate her from the front, Schael fucks her from behind, and begins to thrust with a steady rhythm. You can feel the force of Schael's thrusts travel through Neoma, down through the base of your shaft, as the lovely redhead moans and shudders.)*/
	
	= @133 /*~I think she likes it, love! Harder!~*/
	
	IF ~~ THEN
	EXTERN XANEOMA XA_XAEXPL03_Neoma_12A
	
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_12B
	SAY @131 /*~(In moments, you're able to time your own thrusts so that you are pushing in as Schael is pulling back, and vice-versa. The sight of Schael's beautiful breasts bouncing wildly with each powerful thrust is a delight to behold.)~*/
	
	= @132 /*~(After several exhilarating minutes of this double penetration, Schael reaches down to fondle Neoma's right breast. Neoma lets out a long, slow moan, and the vibration from her throat on the tip of your cock is unlike anything you've ever felt before. You feel the pacing and intensity of Schael's thrusts start to fluctuate as she cries out in pure ecstasy.)~*/
	
	= @22 /* ~Oh.... Oh gods! I — OH..... FUCK!~*/
	
	= @23 /*~(With one final, savage thrust forward, Schael reaches her climax. The force of the thrust pushes Neoma's body forward, and you feel your cock slide deep down her throat. Soon, the sensation of your tool being so deep inside of her becomes too much to bear, and you experience a tremendous ejaculation.)~ */
	
	IF ~~ THEN 
	EXTERN XANEOMA XA_XAEXPL03_Neoma_13
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_14
	SAY @24 /* ~Neoma! Are you alright?~*/
	
	IF ~~ THEN REPLY @25  /* ~I — I'm sorry, Neoma. I should've warned you I was about to —~ */
	EXTERN XANEOMA XA_XAEXPL03_Neoma_15
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_16
	SAY @134  /* ~(Quickly, she finds where she left the bag, and pulls out a towel.)~*/
	
	= @26 /* Here, hon. */
	
	= @27 /* ~(Schael gently wipes as much of your cum from Neoma's face as she can, though there's still a good amount of it in her hair.)~ */
	
	= @28  /* ~Don't worry. I'll clean you up. I'm just going downstairs to get a pail of water.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinSex_3_Neoma", "GLOBAL", 3)
		StartCutSceneMode()
		StartCutScene("XAEXPL3B")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_25
	SAY @37  /* ~Home. I want to be there when Rohma wakes up.~ */
	
	IF ~~ THEN REPLY @38 /* ~Oh, of course. ~ */
	DO ~
		SetGlobal("XA_LCE_EXTalk", "GLOBAL", 0)
	~
	GOTO XA_XAEXPL03_Neoma_26
	
	IF ~
		GlobalGT("XA_CorwinSex_3_Neoma", "GLOBAL", 0)
	~ THEN REPLY @46 /* ~Oh, right. I wonder how Neoma's doing.~*/
	DO ~
		SetGlobal("XA_LCE_EXTalk", "GLOBAL", 0)
	~
	GOTO XA_Neoma
END

IF ~~ THEN BEGIN XA_Neoma
	SAY @47 /* ~You're worried about her? Don't be. She's a lot tougher than she looks.~*/
	
	IF ~~ THEN REPLY @48 /*~Definitely.~*/
	GOTO XA_XAEXPL03_Neoma_26
	
	IF ~~ THEN REPLY @49 /*~Still, I'd appreciate it if you could check in on her.~*/
	GOTO XA_CheckNeoma
	
	IF ~~ THEN REPLY @53 /*~I think... Schael, I think she has feelings for you.~*/
	GOTO XA_Feelings
END

IF ~~ THEN BEGIN XA_Feelings
	SAY @54 /* ~Don't be ridiculous, love. I've discussed this with her already. She understands that it's only sex.~ */
	
	IF ~~ THEN REPLY @55 /*~That might be *your* understanding, but I'm not sure that it's hers.~*/
	GOTO XA_NeomaRelationship
	
	IF ~~ THEN REPLY @49 /*~Still, I'd appreciate it if you could check in on her.~*/
	GOTO XA_CheckNeoma
	
	IF ~~ THEN REPLY @59 /*~I see...~*/
	GOTO XA_XAEXPL03_Neoma_26
END

IF ~~ THEN BEGIN XA_NeomaRelationship
	SAY @56 /* ... */
	
	IF ~~ THEN REPLY @57 /*~Schael?~*/
	GOTO XA_NeomaRelationship2
END

IF ~~ THEN BEGIN XA_NeomaRelationship2
	SAY @58 /*~It sounds like I need to talk to her. Thanks for letting me know, love. I'll stop by her place after the debriefing.~*/
	
	IF ~~ THEN REPLY @51 /*~The debriefing! Gods, with this hangover?~*/
	GOTO XA_Hangover
	
	IF ~~ THEN REPLY @52 /*~Thanks, love.~*/
	GOTO XA_Sex3_Neoma_END
END

IF ~~ THEN BEGIN XA_CheckNeoma
	SAY @50 /*~Fine. I'll stop by her place after the debriefing.~ */
	
	IF ~~ THEN REPLY @51 /*~The debriefing! Gods, with this hangover?~*/
	GOTO XA_Hangover
	
	IF ~~ THEN REPLY @52 /*~Thanks, love.~*/
	GOTO XA_Sex3_Neoma_END
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_26
	SAY @39 /* ~See you at the debriefing, love.~*/
	
	IF ~~ THEN REPLY @42 /* ~Gods, the debriefing. With this hangover?~*/
	GOTO XA_Hangover
	
	IF ~~ THEN REPLY @44 /* ~Right. See you there, love.~ */
	GOTO XA_Sex3_Neoma_END

END

IF ~~ THEN BEGIN XA_Hangover
	SAY @43 /* ~Heh, I know what you mean. I poured you a glass of water. Drink it, it'll help.~  */
	
	IF ~~ THEN REPLY @45 /*~Thanks. See you at the debriefing, dear.~*/
	GOTO XA_Sex3_Neoma_END
END

IF ~~ THEN BEGIN XA_Sex3_Neoma_END
	SAY @40 /*~(She plants a kiss on your forehead, and leaves.)~*/
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEX03EX")
	~
	EXIT
END
//}
