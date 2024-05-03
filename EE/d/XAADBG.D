EXTEND_BOTTOM XAADBG 15
	IF ~~ THEN REPLY @0
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEXPL00")
	~
	EXIT
	
	IF ~~ THEN REPLY @1
	DO ~
		SetGlobal("XA_SleepInn", "GLOBAL", 1)
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XAEXPL01")
	~
	EXIT
	
	IF ~~ THEN REPLY @2
	DO ~
		SetGlobal("XA_SleepInn", "GLOBAL", 1)
		SetGlobal("XA_CorwinSex_2", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XAEXPL02")
	~
	EXIT
	
	IF ~~ THEN REPLY @3
	DO ~
		SetGlobal("XA_CorwinSex_3", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XAEXPL03")
	~
	EXIT
	
END