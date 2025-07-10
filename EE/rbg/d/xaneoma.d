APPEND XANEOMA
	IF ~
		Global("XA_LC_CorwinSex_3_Neoma", "GLOBAL", 3)
	~ THEN BEGIN XA_LC_XAEXPL03_Neoma_17
		SAY @23  /* ~(Schael prepares the bath, leaving you and Neoma sitting in an awkward silence.)~ */
		
		= @14  /* ~I didn't mean to snap at you. I just never experienced anything like that before...~*/
		
		IF ~~ THEN REPLY @15 /* ~Neither have I.~*/
		GOTO XA_LC_XAEXPL03_Neoma_19
		
		IF ~~ THEN REPLY @16 /*  ~Neoma, I've been meaning to ask... what, exactly, is your relationship with Schael?~*/
		GOTO XA_LC_XAEXPL03_Neoma_18
	END

	//{ Corwin Sex 3 - Neoma
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_2
		SAY @0 /*~Hah! I'll be the judge of that, hon.~*/
		
		IF ~~ THEN REPLY @1 /*~Hello again, Neoma. I wasn't sure you'd join us.~*/
		GOTO XA_LC_XAEXPL03_Neoma_3A
		
		IF ~~ THEN REPLY @2 /* ~Schael? Have you been drinking?~ */
		EXTERN XACOREX3 XA_LC_XAEXPL03_Neoma_3C
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_3A
		SAY @3 /* ~Are you kidding? From what Schael's been telling me, you have something that needs to be seen to be believed.~*/
		
		IF ~~ THEN
		EXTERN XACOREX3 XA_LC_XAEXPL03_Neoma_3B
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_4
		SAY @4 /* Maybe a little more than that. Look! He brought wine!~*/
		
		IF ~~ THEN REPLY @5 /* ~Berduskan dark wine, your favorite, love.~*/
		EXTERN XACOREX3 XA_LC_XAEXPL03_Neoma_5
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_6A
		SAY @28 /* ~And, as I'm sure you know, she takes her duties VERY seriously!~*/
		
		IF ~~ THEN REPLY @7 /* ~What did you have in mind?~ */
		EXTERN XACOREX3 XA_LC_XAEXPL03_Neoma_7
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_6
		SAY @6 /* ~We need to. You've done so much for all of us, <CHARNAME>.~*/
		
		IF ~~ THEN REPLY @7 /* ~What did you have in mind?~ */
		EXTERN XACOREX3 XA_LC_XAEXPL03_Neoma_7
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_8
		SAY @8 /* ~Oh wow... Schael, you weren't exaggerating. He's *huge*! Look, it's like it's standing at attention! Yeah, the hero's cock is saluting you, 'Captain'!~*/
		
		IF ~~ THEN
		EXTERN XACOREX3 XA_LC_XAEXPL03_Neoma_9
	END
	
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_11
		SAY @9 /* ~It's been too long, hero, since I've had the taste of a man in my mouth...~*/
		
		IF ~~ THEN
		EXTERN XACOREX3 XA_LC_XAEXPL03_Neoma_12
	END

	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_12A
		SAY @29 /*~Mmm!~*/
		
		IF ~~ THEN 
		EXTERN XACOREX3 XA_LC_XAEXPL03_Neoma_12B
	END

	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_13
		SAY @10 /* ~Mmmfh!~*/
		
		= @11 /* ~(Neoma, though unprepared for the explosion of cum, manages to swallow the first two blasts before needing to pull back entirely. As she gasps for air, a third, fourth and fifth spurt from your still erupting cock land on her face, covering her cheeks, forehead, and dark red hair with your seed. One final squirt, with far less force than the first, lands on her chin just below her lower lip.)~*/
		
		= @12  /* ~*Cough* *gag* *cough*~ */
		
		IF ~~ THEN
		EXTERN XACOREX3 XA_LC_XAEXPL03_Neoma_14
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_15
		SAY @13  /* ~You think? You blew like a geyser! Get me a towel, damn it!~ */
		
		IF ~~ THEN 
		EXTERN XACOREX3 XA_LC_XAEXPL03_Neoma_16
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_18
		SAY @17  /* ~We're friends. Friends with benefits, she'd say. But... as much as I hate to admit, there's no love in her heart for me, no romance... just physical attraction.~*/
		
		= @30 /*~I wish... well... I'm glad to be able to spend some time with her, even if it's just for sex. She has an amazing body after all, heh.~*/
		
		IF ~~ THEN REPLY @18  /* ~So, you do have feelings for her.~ */
		GOTO XA_LC_XAEXPL03_Neoma_19
		
		IF ~~ THEN REPLY @19  /* ~She does. I've got to be the luckiest man in the world.~*/
		GOTO XA_LC_XAEXPL03_Neoma_19
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_19
		SAY @20  /* ~She loves you, you know. More than anything or anyone, besides Rohma of course. When you were exiled, something in her changed. I'd never seen her so... beaten, so defeated, so... heartbroken, and we've known each other since we were kids.~*/
		
		IF ~~ THEN REPLY @21  /* ~I feel the same way about her.~ */
		GOTO XA_LC_XAEXPL03_Neoma_20
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_20
		SAY @22  /* ~The night before she left for Athkatla, she came to see me. Gods, she was so excited, it was like she'd gotten a new lease on life. You two are perfect for each other. She —~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Neoma",  "GLOBAL", 4)
			StartCutSceneMode()
			StartCutScene("XAEXPL3C")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_22
		SAY @24  /* ~Thank you, Schael.~ */
		
		= @25  /*~(They embrace, and Schael gives her a kiss on the cheek.)~  */
		
		= @26  /* ~I better get going... <CHARNAME>, it was nice to see you again. If you're ever around the Blushing Mermaid, stop in and say hello. I work there most days. Take care, you two!~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Neoma", "GLOBAL", 5)
			StartCutSceneMode()
			StartCutScene("XAEXPL3D")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_Laugh
		SAY @31 /*~Hee hee... looks like the hero can't control <PRO_HIMHER>self!~*/
		
		IF ~~ THEN REPLY @32 /*~Ohhh... ahh...~*/
		EXTERN XACOREX3 XA_LC_XAEXPL03_Neoma_Laugh
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_Laugh3
		SAY @33 /*~Mmm... definitely.~*/
		
		IF ~~ THEN REPLY @32 /*~Ohhh... ahh...~*/
		EXTERN XACOREX3 XA_LC_XAEXPL03_Neoma_Laugh4
	END
	//}
END