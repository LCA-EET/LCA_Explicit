EXTEND_BOTTOM XALCDBG 10
	IF ~~ THEN REPLY @200 /* ~LCA Explicit Mod Debug - BG2~ */
	GOTO XA_LCE_SoA_Debug
END

APPEND ~XALCDBG~
	IF ~~ THEN BEGIN XA_LCE_SoA_Debug
		SAY @200 /* ~LCA Explicit Mod Debug - BG2~ */
	
		IF ~~ THEN REPLY @201 /*~XAEXPL01 (SoA Intimate Encounter 1)~*/
		DO ~
			SetGlobal("XA_LC_SleepInn", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinSex_1", "GLOBAL", 1)
			StartCutSceneMode()
			StartCutScene("XAEXPL01")
		~
		EXIT
		
		IF ~~ THEN REPLY @202 /*~XAEXPL02 (SoA Intimate Encounter 2)~*/
		DO ~
			SetGlobal("XA_LC_SleepInn", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinSex_2", "GLOBAL", 1)
			StartCutSceneMode()
			StartCutScene("XAEXPL02")
		~
		EXIT
		
		IF ~~ THEN REPLY @203 /* ~Sex 1 Text Screen~*/
		DO ~
			TextScreen("XALCSEX1")
		~
		EXIT
		
		IF ~~ THEN REPLY @205 /* ~Sex 2 Text Screen~*/
		DO ~
			TextScreen("XALCSEX2")
		~
		EXIT
		
		IF ~~ THEN REPLY @204 /* Corwin Portrait Change */
		DO ~
			ReallyForceSpellRES("XACHNG03", "XACORWIN")
		~
		EXIT
		
		IF ~~ THEN REPLY @0
		GOTO 10
		
		COPY_TRANS XALCDBG 11
	END
	
END