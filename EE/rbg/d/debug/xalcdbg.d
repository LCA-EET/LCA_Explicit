EXTEND_BOTTOM XALCDBG 10
	IF ~~ THEN REPLY @300 /* ~LCA Explicit Mod Debug - RBG~ */
	GOTO XA_LCE_SoA_Debug
END

APPEND ~XALCDBG~
	IF ~~ THEN BEGIN XA_LCE_SoA_Debug
		SAY @300 /* ~LCA Explicit Mod Debug - RBG~ */
	
		IF ~~ THEN REPLY @301 /*~xaex03mn (Baldur's Gate Intimate Encounter - Male, Neoma)~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("xaex03mn")
		~
		EXIT
		
		IF ~~ THEN REPLY @302 /*~xaex03ms (Baldur's Gate Intimate Encounter - Male, Schael)~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("xaex03ms")
		~
		EXIT
		
		IF ~~ THEN REPLY @305 /*~xaex03fs (Baldur's Gate Intimate Encounter - Female, Schael)~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("xaex03fs")
		~
		EXIT
		
		IF ~~ THEN REPLY @303
		DO ~
			SetGlobal("XA_LC_SchaelBound", "GLOBAL", 1)
		~
		GOTO XA_LCE_SoA_Debug
		
		IF ~~ THEN REPLY @304
		DO ~
			SetGlobal("XA_LC_SchaelBound", "GLOBAL", 0)
		~
		GOTO XA_LCE_SoA_Debug
	
		IF ~~ THEN REPLY @0
		GOTO 10
		
		COPY_TRANS XALCDBG 11
	END
	
END