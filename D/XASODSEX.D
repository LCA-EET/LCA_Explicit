APPEND BDCORWIJ
	IF ~
		Global("XA_XAEXPL00", "GLOBAL", 1)
	~ THEN BEGIN XA_SODSex1
		SAY @0 /* ~Hm. Not quite as secluded for what I really want to do to you, but this can work.~ */
		
		= @1 /* ~(She pushes you against the wall.)~ */
		
		IF ~~ THEN REPLY @2 /* ~W-what are you doing?~ */
		DO ~
			SetGlobal("XA_XAEXPL00", "GLOBAL", 2)
		~
		GOTO XA_SODSex2
	END
	
	IF ~~ THEN BEGIN XA_SODSex2
		SAY @3 /* ~Don't move. Just relax.~ */
		
		= @4 /*  ~(She moves her right leg between yours, so that the front of her thigh is resting against your crotch. Slowly, rhythmically, she flexes her quadriceps, and gently moves her leg up and down. The feeling of her leg rubbing against your package is amazing, and in moments you're sporting a rock hard erection.)~*/
		
		= @5 /* ~Oh, there you are. See, I knew you'd like it.~ */
		
		= @9 /*  ~(You passionately kiss, while Schael continues to use her powerful leg muscles to further stimulate your already leaking cock...)~ */
		
		IF ~~ THEN REPLY @18 /* ~Ahhh... let me take these off. They're just going to get in the way...~ */
		GOTO XA_SODSex3
	END
	
	IF ~~ THEN BEGIN XA_SODSex3
		SAY @17 /* ~(You try and create some space between you and her so that you can remove your pants and free your tool, but she shoves you back into the wall.)~*/
		
		= @16 /* ~Don't! There are too many people around! Just keep still — trust me.~ */
		
		= @15 /* ~(You realize that she's right. From a casual onlookers view, it would seem that the two of you are in a loving embrace, and nothing more.)~*/
		
		= @20 /* ~(She again places her upper leg against your crotch, and begins to time the flexing of her muscles to match the throbbing of your overstimulated cock.)~*/
		
		= @19 /* ~Mm, that's better... Won't be long now, hero, will it?~*/
		
		= @24 /* ~(You feel yourself begin to lose control.)~ */
		
		IF ~~ THEN REPLY @21 /* ~Just a little more... oh... oh, Schael!*/
		GOTO XA_SODSex4
	END
	
	IF ~~ THEN BEGIN XA_SODSex4
		SAY @35 /* ~(Sensing how close you are to the edge, she rapidly moves her leg up and down, and flexes her thigh with all of her might.)~*/
		
		= @22 /* ~Cum for me hero! Cum!~ */
		
		IF ~~ THEN REPLY @10 /* ~Schael, I - I'm ... aahhhhh... ohhhh...nnhn!~ */
		GOTO XA_SODSex5
	END
	
	IF ~~ THEN BEGIN XA_SODSex5
		SAY @13 /* ~(You moan uncontrollably as you spew your seed wildly into your trousers.)~ */ 
		
		= @29 /* ~Mmm... give it to me, hero. Every last drop.~*/
		
		= @30 /* ~(She continues to rub her leg against your spent genitals, as they slowly return to their relaxed state.)~*/
		
		IF ~~ THEN REPLY @11 /*  ~My love, that was incredible ... thank you.~ */
		GOTO XA_SODSex6
		
	END
	
	IF ~~ THEN BEGIN XA_SODSex6
		SAY @26 /*  ~(You kiss as Schael playfully pats your crotch.)~ */
		
		= @12 /*~It's the least I can do for the hero of Baldur's Gate. Just remember that it's only a taste of what awaits you when we get home, love.~*/
		
		IF ~~ THEN REPLY @32 /* ~I can't wait.~ */
		GOTO XA_SODSex7
		
		IF ~~ THEN REPLY @33 /*~I'm going to hold you to that.~*/
		GOTO XA_SODSex7
		
		IF ~~ THEN REPLY @34 /*~I have some things in store for you too, love.~*/
		GOTO XA_SODSex7
	END
	
	IF ~~ THEN BEGIN XA_SODSex7
		SAY @31 /* ~(She steps back, and looks down at the large wet spot that has formed in your pants.)~ */
		
		= @6 /* ~Wow, hah! That's quite a load you saved up for me. I'm impressed you lasted as long as you did.~*/
		
		= @23 /* ~Look, some of it even seeped through onto my leggings... oh, my...~ */
		
		= @27 /* ~We better find something to cover up these stains and get back to the celebration. People are going to wonder what we've been up to...~*/
		
		IF ~~ THEN
		DO ~
			ChangeStat(Player1, XP, 25000, ADD)
			AddJournalEntry(@14, INFO)
			StartCutSceneMode()
			StartCutScene("XACS0END")
		~
		EXIT
	END
END