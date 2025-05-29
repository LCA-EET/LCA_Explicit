APPEND XACORWIJ
	//{ Spellhold
	IF ~~ THEN BEGIN XA_LC_XAGOLSTO_0
		SAY @4 /* ~(In spite of your predicament, you find the sight of the always-in-control Schael struggling helplessly against her bonds to be profoundly erotic. The severity of the situation quickly stifles your arousal before your captors could notice.)~ */
		
		/*
			XACORWIJ 301: ~..... gods.... can't... breathe...~
		*/
		IF ~~ THEN EXTERN ~XACORWIJ~ 301
	END
	//{
	
END

//{ Sex 1 & 2
ADD_TRANS_TRIGGER XALCHOOK 0
~
	False()
~
DO 0 2 3

EXTEND_BOTTOM XALCHOOK 0
	IF ~
		Global("XA_LC_CorwinSex_1", "GLOBAL", 1)
	~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEXPL01")
	~
	EXIT
	
	IF ~
		Global("XA_LC_CorwinSex_2", "GLOBAL", 1)
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

ADD_TRANS_TRIGGER XAGOLSTO 0
~
	OR(3)
		!Gender(Player1, MALE)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		!Alignment(Player1, MASK_EVIL)
~
EXTEND_BOTTOM XAGOLSTO 0
	IF ~
		Gender(Player1, MALE)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Alignment(Player1, MASK_EVIL)
	~ THEN EXTERN XACORWIJ XA_LC_XAGOLSTO_0
END

