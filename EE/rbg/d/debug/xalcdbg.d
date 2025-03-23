EXTEND_BOTTOM XALCDBG 10
	IF ~~ THEN REPLY @300 /* ~LCA Explicit Mod Debug - RBG~ */
	GOTO XA_LCE_SoA_Debug
END

APPEND ~XALCDBG~
	IF ~~ THEN BEGIN XA_LCE_SoA_Debug
		SAY @300 /* ~LCA Explicit Mod Debug - RBG~ */
	
		IF ~~ THEN REPLY @301 /*~XAEXPL03 (Baldur's Gate Intimate Encounter)~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XAEXPL03")
		~
		EXIT
	
		IF ~~ THEN REPLY @0
		GOTO XALCDBG 10
		
		COPY_TRANS XALCDBG 11
	END
	
END