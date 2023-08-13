BEGIN ~XACOREX3~

//{ Corwin Sex 3 - Neoma
IF ~
	Global("XA_CorwinSex_3", "GLOBAL", 6)
~ THEN BEGIN XA_XAEXPL03_Neoma_24
	SAY @41  /* ~(You awaken and see Schael getting dressed.)~*/
	
	IF ~~ THEN REPLY @36
	GOTO XA_XAEXPL03_Neoma_25
END

IF ~
	Global("XA_CorwinSex_3",  "GLOBAL",5)
~ THEN BEGIN XA_XAEXPL03_Neoma_23
	SAY @32  /* ~Thank you, Schael.~ */
	
	= @33  /*~(She eyes your member, which has suddenly sprung back to life, and smiles.)~ */
	
	= @34  /* ~Looks like we're both ready for round two...~*/
	
	= @35  /* ~(Schael takes hold of your erect penis and walks you back into bed. You the next few hours drinking wine, making love and pleasuring each other, before you finally fall asleep.)~*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_CorwinSex_3", "GLOBAL", 6)
		StartCutSceneMode()
		StartCutScene("XAEXPL3E")
	~
	EXIT
END

IF ~
	Global("XA_CorwinSex_3", "GLOBAL", 4)
~ THEN BEGIN XA_XAEXPL03_Neoma_21
	SAY @29  /* ~(You watch as Schael tenderly washes Neoma's face and hair in the bath. In just a few minutes, the last remnants of your seed are washed away, and Neoma dries off and gets dressed. Schael uses the opportunity to take off the strap on and clean it before placing it back in Neoma's bag.)~*/
	
	IF ~~ THEN
	EXTERN XANEOMA XA_XAEXPL03_Neoma_22
END

IF ~
	Global("XA_CorwinSex_3", "GLOBAL", 2)
~ THEN BEGIN XA_XAEXPL03_Neoma_1
	SAY @0 /* ~(Schael stumbles in, followed by Neoma, her 'friend' that you met earlier in the day. Neoma's carrying a bag with her. Both ladies appear to be somewhat inebriated.)~*/
	
	= @1 /*  ~<CHARNAME>, Neoma. Neoma, <CHARNAME>, the hero of Baldursh Gate, and owner of the finest cock in the Sword Coast, or probably anywhere, heh.~*/
	
	IF ~~ THEN
	EXTERN XANEOMA XA_XAEXPL03_Neoma_2
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
	SAY @4 /* ~Get out of bed, sit down on that chair in the corner, and watch.~*/
	
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
	
	= @14  /* ~(Satisfied that you'll do as your told, the two ladies resume with their kissing and touching. They take turns fondling each other's breasts, caressing their bottoms, and fingering their sex. It takes nearly all of your willpower to stop yourself from throwing them on the bed and having your way with them. When their foreplay ends, they walk over to the bed. Neoma gets in and lays face-up. Schael follows her in, and turns her body so that her head is between Neoma's legs. Using a pillow to support her neck, Neoma raises her head so that it's between Schael's powerful thighs, directly in front of her sex. You watch in awe as the ladies expertly pleasure each other using their tongues. Occasionally, they shudder and moan, as they inch ever closer to what is sure to be a momentous climax. Just when you think they are about to cross the edge, Schael stops, and Neoma does the same.)~ */
	
	= @15  /* ~<CHARNAME>. Go and bring me Neoma's bag.~ */
	
	= @16  /* ~(You fetch the bag and bring it to your love.)~ */
	
	= @17  /* ~Good. Now, get in bed.~ */
	
	= @18  /* ~(Neoma moves over, and you get into bed. Schael opens the bag, pulls out a strap on, and puts it around her waist.)~ */
	
	= @19  /* ~You brought the big one. Feeling adventurous, are we?~ */
	
	= @20  /* ~(Neoma turns so that her head is facing the headboard of the bed, then raises her hips toward Schael's.)~ */
	
	= @21  /* ~As for you, <CHARNAME>...~ */
	
	IF ~~ THEN
	EXTERN XANEOMA XA_XAEXPL03_Neoma_11
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_12
	SAY @30 /* ~(That's as good an invitation as any, you think to yourself, as you maneuver yourself between the head board and Neoma's, well, head. You take your dick in your hand and point it toward her. She kisses it, and rubs her cheeks against it, before taking it into her mouth. As you penetrate her from the front, Schael penetrates her from behind, and begins to thrust with a steady rhythm. You can feel the force of Schael's thrusts travel through Neoma, as the lovely redhead moans and shudders. In moments, you're able to time your own thrusts so that you are pushing in as Schael is pulling back, and vice-versa. The sight of Schael's beautiful breasts bouncing wildly with each powerful thrust is a delight to behold. After several exhilarating minutes of this double penetration, Schael reaches down to fondle Neoma's right breast. Neoma lets out a long, slow moan, and the vibration from her throat on the tip of your cock is unlike anything you've ever experienced before. You feel the pacing and intensity of Schael's thrusts start to fluctuate as she cries out in pure ecstasy.)~*/

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
	SAY @26  /* ~Here.~ */
	
	= @27 /* ~(Schael gently wipes as much of your cum from Neoma's face as she can, though there's still a good amount of it in her hair.)~ */
	
	= @28  /* ~Don't worry, hon. I'll clean you up. I'm just going downstairs to get a pail of water.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinSex_3", "GLOBAL", 3)
		StartCutSceneMode()
		StartCutScene("XAEXPL3B")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_25
	SAY @37  /* ~Home. I want to be there when Rohma wakes up.~ */
	
	IF ~~ THEN REPLY @38
	GOTO XA_XAEXPL03_Neoma_26
END

IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_26
	SAY @39 /* ~See you at the debriefing, love.~*/
	
	= @40  /* ~(She plants a kiss on your forehead, and leaves.)~*/
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEX03EX")
	~
	EXIT
END
//}
