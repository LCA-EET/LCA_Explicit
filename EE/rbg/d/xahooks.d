
//{ Sex 3
ADD_TRANS_TRIGGER XALCHOOK 1
~
	False()
~
DO 1

EXTEND_BOTTOM XALCHOOK 1
	IF ~
		Global("XA_LC_CorwinSex_3", "GLOBAL", 1)
		Gender(Player1, MALE)
	~
	THEN
	DO ~
		SetGlobal("XA_LC_SleepBG", "GLOBAL", 0)
		StartCutSceneMode()
		StartCutScene("XAEXPL03")
	~
	EXIT
END

/*
	XACORWIJ 704: ~(She laughs). Much more. See you later.~ 
*/
EXTEND_BOTTOM XACORWIJ 704
	IF ~
		Gender(Player1, MALE)
	~ THEN
	GOTO XA_LC_Explicit_0004_M
END
//}

APPEND XACORWIJ
	IF ~~ THEN BEGIN XA_LC_Explicit_0004_M
		SAY @2 /* ~(She turns and leaves. As she walks away, you gaze longingly at her well-formed ass and powerful, sexy legs.)~  */
		
		= @3 /* ~(Your mind fills with thoughts of what she has planned for tonight, and you groan as your erection strains against your leggings.)~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinSex_3", "GLOBAL", 1)
			SetLeavePartyDialogueFile()
			ChangeAIScript("",OVERRIDE)
			ChangeAIScript("",DEFAULT)
			LeaveParty()
			EscapeAreaMove("XAHOME",400,250,S)
		~
		EXIT
	END
END