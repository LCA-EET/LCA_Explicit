/*
	BDCORWIJ 303: ~Back to the city, then, as soon as we can. In the meantime, let's go find someplace a little more private...~ [BD54592]
*/
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
			StartCutSceneMode()
			StartCutScene("XAEXPL00")
		~
		EXIT
	END
END