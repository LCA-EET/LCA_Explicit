EXTEND_BOTTOM XALCDBG 10
	IF ~~ THEN REPLY @300 /* ~LCA Explicit Mod Debug - RBG~ */
	GOTO XA_LCE_SoA_Debug
END

APPEND ~XALCDBG~
	IF ~~ THEN BEGIN XA_LCE_SoA_Debug
		SAY @300 /* ~LCA Explicit Mod Debug - RBG~ */
	
		IF ~~ THEN REPLY @301 /*~Baldur's Gate Intimate Encounter - Neoma~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("xaex03n")
		~
		EXIT
		
		IF ~~ THEN REPLY @302 /*~Baldur's Gate Intimate Encounter - Schael~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("xaex03s")
		~
		EXIT
	
		IF ~~ THEN REPLY @0
		GOTO 10
		
		COPY_TRANS XALCDBG 11
	END
	
END