APPEND PLAYER1
	IF ~
		Global("XA_Explicit_0002", "GLOBAL", 1)
	~ THEN BEGIN XA_0002
		SAY @0 /* ~(In spite of your predicament, you find the sight of the always-in-control Schael struggling against her bonds to be profoundly erotic.)~*/
		
		IF ~
			Gender(Player1, MALE)
		~ THEN 
		DO ~
			SetGlobal("XA_Explicit_0002", "GLOBAL", 2)
		~
		GOTO XA_0002_M
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN
		DO ~
			SetGlobal("XA_Explicit_0002", "GLOBAL", 2)
		~		
		EXTERN PPIRENI2 XA_PPIRENI2_3_CHAIN_2
	END
	
	IF ~~ THEN BEGIN XA_0002_M
		SAY @1 /* ~(Feeling ashamed, you take a deep breath and try to control your arousal before anyone notices.)~ */
		
		IF ~~ THEN
		EXTERN PPIRENI2 XA_PPIRENI2_3_CHAIN_2
	END
	
	//{ Corwin Sex 3 
	IF ~
		Global("XA_CorwinSex_3", "GLOBAL", 1)
		AreaCheck("XAEXPL03")
	~ THEN BEGIN XA_XAEXPL03
		SAY @2 /* ~(With eager anticipation, you wait for Schael to arrive. You've made some preparations you think she'll enjoy, including buying a bottle of her favorite red — the dark wine from Berdusk. You've also taken the liberty of removing your armor and clothes.)~*/
		
		= @3 /* ~(Having nothing better to do, you decide to pass the time by pleasuring yourself while remembering the first time that you and Schael made love. You make sure to avoid reaching a climax; every time you feel yourself get close to the edge, you stop and wait for your erection to subside before starting again. Minutes slowly turn to hours... maybe she isn't coming tonight after all. You pull up the covers around you as you begin to doze off... )~*/
		
		IF ~
			!Global("XA_CorwinNeomaRelationship", "GLOBAL", 2)
		~ THEN
		DO ~
			SetGlobal("XA_CorwinSex_3", "GLOBAL", 2)
		~
		GOTO XA_XAEXPL03_Schael
		
		IF ~
			Global("XA_CorwinNeomaRelationship", "GLOBAL", 2)
		~ THEN
		DO ~
			SetGlobal("XA_CorwinSex_3", "GLOBAL", 2)
		~
		GOTO XA_XAEXPL03_Neoma
	END
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Neoma
		SAY @4 /*~(You hear a knock at the door, and what sounds like laughing. It must be her!)~*/
		
		IF ~~ THEN REPLY @5 /* ~Come in!~*/
		DO ~
			SetGlobal("XA_CorwinSex_3_Neoma", "GLOBAL", 2)
			StartCutSceneMode()
			StartCutScene("XAEXPL3A")
		~
		EXIT
	END
	
	
	IF ~~ THEN BEGIN XA_XAEXPL03_Schael
		SAY @6 /*~(You hear a knock at the door, and what sounds like laughing. It must be her!)~*/
		
		IF ~~ THEN REPLY @5 /* ~Come in!~*/
		DO ~
			SetGlobal("XA_CorwinSex_3_Neoma", "GLOBAL", 2)
			StartCutSceneMode()
			StartCutScene("XAEXPL3S")
		~
		EXIT
	END
	//}
END