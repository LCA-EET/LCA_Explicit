APPEND XANEOMA
	IF ~
		Global("XA_CorwinSex_3", "GLOBAL", 3)
	~ THEN BEGIN XA_XAEXPL03_Neoma_17
		SAY @23  /* ~(Schael prepares the bath, leaving you and Neoma sitting in an awkward silence.)~ */
		
		= @14  /* ~I didn't mean to snap at you. I just never experienced anything like that before...~*/
		
		IF ~~ THEN REPLY @15 /* ~Neither have I.~*/
		GOTO XA_XAEXPL03_Neoma_19
		
		IF ~~ THEN REPLY @16 /*  ~Neoma, I've been meaning to ask... what, exactly, is your relationship with Schael?~*/
		GOTO XA_XAEXPL03_Neoma_18
	END

	//{ Corwin Sex 3 - Neoma
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_2
		SAY @0 /*~Hah! I'll be the judge of that, hon.~*/
		
		IF ~~ THEN REPLY @1 /*~Hello again, Neoma. I wasn't sure you'd join us.~*/
		GOTO XA_XAEXPL03_Neoma_3A
		
		IF ~~ THEN REPLY @2 /* ~Schael? Are you drunk?~ */
		EXTERN XACOREX3 XA_XAEXPL03_Neoma_3C
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_3A
		SAY @3 /* ~Are you kidding? From what Schael's been telling me, you have something that needs to be seen to be believed.~*/
		
		IF ~~ THEN
		EXTERN XACOREX3 XA_XAEXPL03_Neoma_3B
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_4
		SAY @4 /* Maybe a little more than that. Look! He brought wine!~*/
		
		IF ~~ THEN REPLY @5 /* ~Berduskan dark wine, your favorite, love.~*/
		EXTERN XACOREX3 XA_XAEXPL03_Neoma_5
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_6A
		SAY @28 /* ~Our duty. You've done so much for all of us, <CHARNAME>.~*/
		
		IF ~~ THEN REPLY @7 /* ~What did you have in mind?~ */
		EXTERN XACOREX3 XA_XAEXPL03_Neoma_7
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_6
		SAY @6 /* ~We need to. You've done so much for all of us, <CHARNAME>.~*/
		
		IF ~~ THEN REPLY @7 /* ~What did you have in mind?~ */
		EXTERN XACOREX3 XA_XAEXPL03_Neoma_7
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_8
		SAY @8 /* ~Oh wow... Schael, you weren't exaggerating. He's *huge*!~*/
		
		IF ~~ THEN
		EXTERN XACOREX3 XA_XAEXPL03_Neoma_9
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_11
		SAY @9 /* ~It's been too long, hero, since I've had the taste of a man in my mouth...~*/
		
		IF ~~ THEN
		EXTERN XACOREX3 XA_XAEXPL03_Neoma_12
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_13
		SAY @10 /* ~Mmmfh!~*/
		
		= @11 /* ~(Neoma, though unprepared for the explosion of cum, manages to swallow the first two blasts before needing to pull back entirely. As she gasps for air, a third, fourth and fifth spurt from your still erupting cock land on her face, covering her cheeks, forehead, and hair with your seed.)~ */
		
		= @12  /* ~*Cough* *gag* *cough*~ */
		
		IF ~~ THEN
		EXTERN XACOREX3 XA_XAEXPL03_Neoma_14
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_15
		SAY @13  /* ~You think? You blew like a geyser! Get me a towel, damn it!~ */
		
		IF ~~ THEN 
		EXTERN XACOREX3 XA_XAEXPL03_Neoma_16
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_18
		SAY @17  /* ~We're friends. Friends with benefits, you can say. But... as much as I hate to admit, there's no love, no romance... just physical attraction.~*/
		
		IF ~~ THEN REPLY @18  /* ~So, you do have feelings for her.~ */
		GOTO XA_XAEXPL03_Neoma_19
		
		IF ~~ THEN REPLY @19  /* ~I see.~*/
		GOTO XA_XAEXPL03_Neoma_19
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_19
		SAY @20  /* ~She loves you, you know. More than anything. When you were exiled, something in her changed. I'd never seen her so... beaten, so... heartbroken, and we've known each other since we were kids.~ */
		
		IF ~~ THEN REPLY @21  /* ~I feel the same way about her.~ */
		GOTO XA_XAEXPL03_Neoma_20
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_20
		SAY @22  /* ~The night before she left for Athkatla, she came to see me. Gods, she was so excited, it was like she'd gotten a new lease on life. You two are perfect for each other. She —~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_CorwinSex_3",  "GLOBAL",4)
			StartCutSceneMode()
			StartCutScene("XAEXPL3C")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma_22
		SAY @24  /* ~Thank you, Schael.~ */
		
		= @25  /*~(They embrace, and Neoma gives her a kiss on the cheek.)~  */
		
		= @26  /* ~I better get going... <CHARNAME>, it was nice to see you again. If you're both up to it, I'm open to do this again sometime. Bye!~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_CorwinSex_3", "GLOBAL", 5)
			StartCutSceneMode()
			StartCutScene("XAEXPL3D")
		~
		EXIT
	END
	//}
END