EXTEND_BOTTOM XALCDBG 10
	IF ~~ THEN REPLY @100 /* ~LCA Explicit Mod Debug - SoD~ */
	GOTO XA_LCE_SoD_Debug
END

APPEND ~XALCDBG~
	IF ~~ THEN BEGIN XA_LCE_SoD_Debug
		SAY @100 /* ~LCA Explicit Mod Debug - SoD~ */
	
		IF ~~ THEN REPLY @101 /*~XAEXPL00 (SoD Intimate Encounter)~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XAEXPL00")
		~
		EXIT
	
		IF ~~ THEN REPLY @0
		GOTO 10
	
		COPY_TRANS XALCDBG 11
	END
	
END