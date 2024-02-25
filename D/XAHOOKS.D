//{ States to check:
/*
	BDCORWIJ 303 ~Back to the city, then, as soon as we can. In the meantime, let's go find someplace a little more private...~ [BD54592]
	XACORWIJ 437 ~(She laughs). Much more. See you later.~ 
	XACORWIJ 793  ~..... gods.... can't... breathe...~
*/
//}

//{ Sex 1 & 2
ADD_TRANS_TRIGGER XALCHOOK 0
~
	False()
~
DO 2

EXTEND_BOTTOM XALCHOOK 0
	IF ~
		Global("XA_CorwinSex_1", "GLOBAL", 1)
		Gender(Player1, MALE)
	~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEXPL01")
	~
	EXIT
	
	IF ~
		Global("XA_CorwinSex_2", "GLOBAL", 1)
		Gender(Player1, MALE)
	~
	THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEXPL02")
	~
	EXIT
END
//}

//{ Sex 3
ADD_TRANS_TRIGGER XALCHOOK 1
~
	False()
~
DO 1

EXTEND_BOTTOM XALCHOOK 1
	IF ~
		Global("XA_CorwinSex_3", "GLOBAL", 1)
		Gender(Player1, MALE)
	~
	THEN
	DO ~
		SetGlobal("XA_SleepBG", "GLOBAL", 0)
		StartCutSceneMode()
		StartCutScene("XAEXPL03")
	~
	EXIT
END
//}

ADD_TRANS_TRIGGER XAGOLSTO 0
~
	OR(3)
		!Gender(Player1, MALE)
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!Alignment(Player1, MASK_EVIL)
~
EXTEND_BOTTOM XAGOLSTO 0
	IF ~
		Gender(Player1, MALE)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Alignment(Player1, MASK_EVIL)
	~ THEN EXTERN XACORWIJ XA_XAGOLSTO_0
END

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

EXTEND_BOTTOM XACORWIJ 437
	IF ~
		Gender(Player1, MALE)
	~ THEN
	GOTO XA_Explicit_0004_M
END

APPEND XACORWIJ
	//{ Spellhold
	IF ~~ THEN BEGIN XA_XAGOLSTO_0
		SAY @4 /* ~(In spite of your predicament, you find the sight of the always-in-control Schael struggling helplessly against her bonds to be profoundly erotic. The severity of the situation quickly stifles your arousal before your captors could notice.)~ */
		
		IF ~~ THEN EXTERN ~XACORWIJ~ 793
	END
	//{
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
