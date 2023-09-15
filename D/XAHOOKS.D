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
			SetGlobal("XA_XAEXPL00", "GLOBAL", 1)
			StartCutSceneMode()
			StartCutScene("XAEXPL00")
		~
		EXIT
	END
END

EXTEND_BOTTOM XACORWIJ 432
	IF ~
		Gender(Player1, MALE)
	~ THEN
	GOTO XA_Explicit_0004_M
END

APPEND XACORWIJ
	IF ~~ THEN BEGIN XA_Explicit_0004_M
		SAY @2 /* ~(She turns and leaves. As she walks away, you gaze longingly at her well-formed ass and powerful, sexy legs.)~  */
		
		= @3 /* ~(Your mind fills with thoughts of what she has planned for tonight, and you groan as your erection strains against your leggings.)~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CorwinSex_3", "GLOBAL", 1)
			SetGlobal("XA_CorwinWithFamily","GLOBAL",1)
			SetGlobal("XA_CorwinMetFamily","GLOBAL",2)
			SetLeavePartyDialogueFile()
			ChangeAIScript("",OVERRIDE)
			ChangeAIScript("",DEFAULT)
			LeaveParty()
			EscapeAreaMove("XAHOME",400,250,S)
		~
		EXIT
	END
END
