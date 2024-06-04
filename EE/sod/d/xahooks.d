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
		
		= @5 /*~(She takes hold of your hand and leads you through the gathered soldiers and officers, many of whom take a moment to congratulate the two of you on your hard-earned victory. Raucous cheering erupts as you hear corks popping all around you, and you and Schael — despite your best efforts — are showered in some very expensive spirits. In the midst of the revelry, you can hear the quartermaster announce that the barrels were rolled in and the spigots are open. While the men and women of the coalition are busy queueing up for their ale, Schael quickly and discreetly leads you into one of the castle's storerooms...)~*/
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XAEXPL00")
		~
		EXIT
	END
END