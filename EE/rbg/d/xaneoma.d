APPEND XANEOMA

//{ Initiating States
	IF ~
		GlobalLT("XA_Intro", "MYAREA", 1)
	~ THEN BEGIN XA_LC_XAEXPL03_Neoma_1
		SAY @14  /* ~...~*/
		
		IF ~~ THEN REPLY @14 /* ~...~*/
		DO ~
			SetGlobal("XA_Intro", "MYAREA", 1)
		~
		GOTO XA_LC_XAEXPL03_Neoma_1B
	END
//}

//{ Neoma M/F

	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_1B
		SAY @14  /* ~...~*/
		
		IF ~~ THEN REPLY @15 /* ~Neoma, I -~*/
		GOTO XA_LC_XAEXPL03_Neoma_1C
	END

	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_1C
		SAY @1  /* ~I didn't mean to snap at you. I just never experienced anything like that before...~*/
		
		IF ~~ THEN REPLY @16 /* ~Are you sure you're alright?~*/
		GOTO XA_LC_XAEXPL03_Neoma_1D
		
		IF ~~ THEN REPLY @2 /* ~Neither have I.~*/
		GOTO XA_LC_XAEXPL03_Neoma_1E
		
		IF ~~ THEN REPLY @3 /*  ~Neoma, I've been meaning to ask... what, exactly, is your relationship with Schael?~*/
		GOTO XA_LC_XAEXPL03_Neoma_2
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_1D
		SAY @17 /* ~Yeah, I'm fine... mm. I can still taste you in my mouth.~ */
		
		IF ~~ THEN 
		GOTO XA_LC_XAEXPL03_Neoma_1E
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_1E
		SAY @18 /* Plus, it's not like I regret it... if even a fraction of the amazing things Schael has told me about you are true, you deserved it. And after all, heh, how many women can say they've tasted the cum of such a mighty and famous hero?*/
		
		IF ~~ THEN REPLY @19 /* ~Heh. Thank you, Neoma. I really enjoyed it. Schael is lucky to count you among her friends.~  */
		GOTO XA_LC_XAEXPL03_Neoma_3
		
		IF ~~ THEN REPLY @20 /*  ~Neoma, I've been meaning to ask... what, exactly, is your relationship with Schael?~*/
		GOTO XA_LC_XAEXPL03_Neoma_2
	END

	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_2
		SAY @4  /* ~We're friends. Friends with benefits, she'd say. But... as much as I hate to admit, there's no love in her heart for me, no romance... just physical attraction.~*/
		
		= @5 /*~I wish... well... I'm glad to be able to spend some time with her, even if it's just for sex. She has an amazing body after all, heh.~*/
		
		IF ~~ THEN REPLY @6  /* ~So, you do have feelings for her.~ */
		GOTO XA_LC_XAEXPL03_Neoma_3
		
		IF ~~ THEN REPLY @7  /* ~She does. I've got to be the luckiest man in the world.~*/
		GOTO XA_LC_XAEXPL03_Neoma_3
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_3
		SAY @8  /* ~She loves you, you know. More than anything or anyone, besides Rohma of course. When you were exiled, something in her changed. I'd never seen her so beaten, so defeated, so... heartbroken, and we've known each other since we were kids.~*/
		
		IF ~~ THEN REPLY @9 /* ~I feel the same way about her.~ */
		GOTO XA_LC_XAEXPL03_Neoma_4
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_4
		SAY @10  /* ~The night before she left for Athkatla, she came to see me. She was sad to leave, yes, but gods was she so excited! It was like she'd gotten a new lease on life... you two are perfect for each other. She even —~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Neoma",  "GLOBAL", 1)
			StartCutSceneMode()
			StartCutScene("XAEXPL3C")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LC_XAEXPL03_Neoma_6
		SAY @11  /* ~Thank you, Schael.~ */
		
		= @12  /*~(They embrace, and Schael gives her a kiss on the cheek.)~  */
		
		= @13  /* ~I better get going... <CHARNAME>, it was nice to see you again. If you're ever around the Blushing Mermaid, stop in and say hello. I work there most days. Take care, you two!~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinSex_3_Neoma", "GLOBAL", 2)
			StartCutSceneMode()
			StartCutScene("XAEXPL3D")
		~
		EXIT
	END
//}
	
END
