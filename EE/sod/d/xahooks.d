EXTEND_BOTTOM BDCORWIJ 303
	IF ~
		Gender(Player1,MALE)
	~ THEN REPLY @0 /* ~What did you have in mind?~ */
	GOTO XA_Explicit_0000
END

APPEND BDCORWIJ
	IF ~~ THEN BEGIN XA_Explicit_0000
		SAY @1 /* ~Something I know you'll enjoy. Follow me.~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LCE_XAEXPL00", "GLOBAL", 1)
			StartCutSceneMode()
			StartCutScene("XAEXPL00")
		~
		EXIT
	END
END