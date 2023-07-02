APPEND PLAYER1
	IF ~
		Global("XA_Explicit_0002", "GLOBAL", 1)
	~ THEN BEGIN XA_0002
		SAY @151 /* ~(In spite of your predicament, you find the sight of the always-in-control Schael struggling against her bonds to be profoundly erotic.)~*/
		
		IF ~
			Gender(Player1, MALE)
		~ THEN 
		DO ~
			SetGlobal("XA_Explicit_0002", "GLOBAL", 2)
		~
		GOTO XA_0002_M
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN
		DO ~
			SetGlobal("XA_Explicit_0002", "GLOBAL", 2)
		~		
		EXTERN PPIRENI2 XA_PPIRENI2_3_CHAIN_2
	END
	
	IF ~~ THEN BEGIN XA_0002_M
		SAY @152 /* ~(Feeling ashamed, you take a deep breath and try to control your arousal before anyone notices.)~ */
		
		IF ~~ THEN
		EXTERN PPIRENI2 XA_PPIRENI2_3_CHAIN_2
	END
END



APPEND XACORWIJ
	IF ~~ THEN BEGIN XA_PPIRENI2_3_CHAIN_2_END
		SAY @157 /* ~Let.. me.. GO!~ */
		
		IF ~~ THEN REPLY #44251 /* ~What are you doing, Irenicus?! What is all of this?~ */ 
		EXTERN PPIRENI2 5

		IF ~~ THEN REPLY @158 /* ~Release us! I will kill you, I swear it!~ */ 
		EXTERN PPIRENI2 4

		IF ~~ THEN REPLY #44253 /* ~Where is Imoen?! What have you done to her?!~ */ 
		EXTERN PPIRENI2 6 
	END
//{ #region Corwin Sex 1 
	IF ~
		Global("XA_CorwinSex_1","GLOBAL",1)
		Global("XA_SleepInn","GLOBAL",1)
		AreaCheck("XAEXPL01")
	~ THEN BEGIN XA_XAEXPL01
		SAY @0 /* ~This room is perfect.~ */
		
		= @1 /* ~(She turns to you.)~ */
		
		= @2 /* ~Help me take this armor off.~  */
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @3 /* ~(Lift off her chainmail armor and set it aside.)~ */
		GOTO XA_CorwinSex1_2
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN REPLY @3
		GOTO XA_CorwinSex1_8
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex1_2
		SAY @4 /* ~Thanks.~ */
		
		= @5 /* ~(She turns around and kneels. After removing her boots, she releases the clasps on her two leg harnesses and discards them, then stands with her back towards you.)~ */
		
		= @6 /* ~(Next, she slowly removes her vestment, revealing her bare shoulders and back. Her skin is smooth, and glistening with sweat. You notice her sharply defined back and shoulder muscles, and your pulse quickens in anticipation of what is about to happen.)~ */
		
		= @7 /* ~(She steps out of her leggings, revealing her firm, well-rounded bottom, shapely thighs and muscular calves. With her hands on her hips, she turns around and faces you.)~*/
		
		= @8 /* ~(You stand in awe and silent amazement. Schael's breasts are round, full and tanned, her nipples tiny buds on light brown areolas. Her legs, arms and midsection are packed with lean muscle, but her physique detracts in no way from her femininity. The fullness of her chest accentuates her slim waist and her wide, inviting hips. Her womanhood is hidden behind a delicate patch of hair, as dark as the hair on her head.)~  */
		
		= @9 /* ~Well?~  */
		
		IF ~~ THEN REPLY @10 /* ~Schael, y-you're so beautiful, I.. I —~ */
		GOTO XA_CorwinSex1_3
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex1_3
		SAY @11 /* ~What are you doing? Get out of those clothes!~ */
		= @12 /* ~(She's as used to giving orders in the bedroom as she is outside of it, you think to yourself.)~ */
		
		IF ~~ THEN REPLY @13 /* ~R-right.~ */
		GOTO XA_CorwinSex1_4
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex1_4
		SAY @14 /* ~(You hurriedly remove your armor and clothing, and nearly trip over your own pants while doing so. She laughs as you stand and face her.)~ */
		
		= @15 /* ~(A wide smile graces her face as she eyes your throbbing, erect member.)~ */
		
		= @16 /* ~You're bigger than I expected. What a pleasant surprise.~ */
		
		= @17 /* ~Come here, hero.~ */
		
		= @18 /* ~(You pull eachother into a tight embrace, and lock lips during a long, sensual kiss. Slowly, you slide your hands down her back, from her shoulder blades to her waist, while she does the same. You caress and squeeze her round, firm behind, as she giggles in delight.)~ */
		
		= @159 /* ~(Unable to resist, you bury your head in Schael's ample breasts, and begin to kiss them. They are warm and soft, and smell of lilacs.)~ */
		
		= @160 /* ~(She laughs as she strokes the back of your head.)~*/
		
		= @20 /* ~It seems that demigods have the same breast fixation as normal men.~ */
		
		= @21 /*  ~(She reaches down and begins to gently stroke your already leaking member with one hand, while massaging your jewels with the other. The feeling of her soft, skilled hands on your package is indescribable, and you gasp in pleasure.)~ */
		
		= @19 /* ~This is what you want, isn't it lover?~ */
		
		IF ~~ THEN REPLY @22 /* @22 = ~Ohhhh.... Schael....~ */
		GOTO XA_CorwinSex1_5
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex1_5
		SAY @23 /* ~(In a fluid motion, she pulls back, and drops to her knees. Realizing what is about to happen, you brace yourself.) ~ */
		
		= @24 /* ~It's about time you received a worthy reward for all that you've done.~ [LCCORJ53]~  */
		
		= @25 /* ~(Crooning softly, Schael begins to kiss and lick your engorged member, starting at the base and slowly working her way up. You quiver in anticipation as she kisses your sensitive tip.)~*/
		
		= @26 /* ~(She looks up at you and smiles, before quickly taking you into her mouth).~ */
		
		= @27 /* ~(In and out. In and out. Her cheeks dimple as she bobs up and down on your member, while gazing lovingly into your eyes. Holding the base of your shaft firm in her left hand, she fingers herself sensually with her right hand.)~ */
		
		= @28 /* ~(You begin to take stock of your situation. Just a short time ago, you were locked away in Candlekeep with your foster father Gorion, learning about things like science, history, love and sex from an old book in the library. Now, the woman you love, one of the most beautiful women in Faerûn, is giving you a fantastic blowjob. You think to yourself that heroism does indeed have its benefits.)~ */
		
		= @29 /* ~(You're jerked back into yourself as she begins to deepthroat you. You moan uncontrollably while you run your hands through her silky dark hair.)~ */
		
		= @30 /* ~(Your breathing becomes labored, and you begin to grunt. Schael, knowing what's about to happen, suddenly stops and ignores your groan as she rises to her feet.)~ */
		
		= @31 /* ~Mm. Normally, I'd ask you to return the favor, but today is about you, love. Are you ready?~ */
		
		IF ~~ THEN REPLY @32 /* ~(Forcefully grab her hips and pull them into your own).~  */
		GOTO XA_CorwinSex1_6
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex1_6
		SAY @33 /* ~I'll take that as a yes.~ */
		
		= @34 /* ~(She shoves you onto the bed, and climbs in so that she is atop your midsection. Without another word, she presses down on you).~  */
		
		= @35 /* ~(Thanks to your pre-cum and her saliva, you slide into her easily. The feeling is exquisite, and you gasp in delight.)~  */
		
		= @36 /* ~(You begin thrusting your hips upward with a steady rhythm, which causes her breasts to bounce, down, up and down again. The sight is extremely erotic. With your left hand, you hold her right hip, and you reach up with your right hand to gently massage her left breast.)~ */
		
		= @37 /* ~Ohhh, <CHARNAME>... don't stop, take me, harder... harder... oh...!~ */
		
		= @38 /* ~(You increase the pace and strength of your thrusts. Suddenly, Schael lets out a loud moan and cries out your name. You fear that you may have hurt her, and stop your thrusting.)~ */
		
		IF ~~ THEN REPLY @39 /* ~Schael, are you alright? Am I hurting — d-do you want me to stop?~  */
		GOTO XA_CorwinSex1_7
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex1_7
		SAY @40 /* ~(She pulls your head up to hers and gives you a savage kiss.)~ */
		
		= @41 /* ~No, you're not hurting me, but I may hurt you if you stop again. Fuck me, hero! FUCK ME!!~ */
		
		= @42 /* ~(That was all you needed. With a roar you pull yourself out and throw her out of the bed, onto the floor. She lands on her back with a hiss. In a moment you are on her, ferociously penetrating her and pounding her into the floor. She howls in delight as you push and push, meeting your thrusts with thrusts of her own, while her nails rake into your back.)~ */
		
		= @43 /* ~(Together, your animalistic cries reach a new pitch as you near your orgasms, and then you're there. You shudder and scream as you release your massive load into her. She scissors her taut, muscled legs around you and pulls you in, draining your member of every last drop.)~ */
		
		= @44 /* ~(This last exertion on her part sends her over the edge, and she moans in ecstasy as the wave of her orgasm sweeps through her, from her toes to her head, crashing through her and carrying her away on a tide of pleasure.)~ */
		
		= @45 /* ~(As you lay there together, you inhale the smells of sweat and sex in the air, and try to comprehend what has just happened. Eventually, you are able to gather yourselves. Your member shrinks to its former size and you pull out of her, but you remain locked in an embrace with her legs wrapped around your hips, and your head resting next to hers.)~ */
		
		= @46 /* ~(Finally, you rise. Placing one arm around her back and the other around the bend of her knees, you pick her up and carry her with you into bed.)~  */
		
		= @47 /* ~Mm, <CHARNAME>. That was wonderful.~ */
		
		= @48 /* ~(She plants a kiss on your forehead.)~ */
		 
		= @49 /* ~You don't know how much I needed that. Thank you, love.~  */
		
		IF ~~ THEN REPLY @50 /* ~Schael, you were incredible, I - I can't even —~ */
		GOTO XA_CorwinSex1_8
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex1_8
		SAY @51 /* ~(She smiles warmly, and places her finger across your lips.)~ */
		
		= @52 /* ~Shh, lover. It's time for us to get some rest. Just know that this, and more, is what awaits you when we finally return home. I love you, <CHARNAME>.~ */
		
		IF ~~ THEN REPLY @53 /* ~I love you too, Schael. */
		GOTO XA_CorwinSex1_9
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex1_9
		SAY @54 /* ~(You kiss and embrace, and try to get some sleep. Eventually, you give up, and the two of you make love again, and again, and again. Mercifully, you finally pass out from sheer exhaustion).~*/
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XACS1EX")
		~
		EXIT
	END
//} #endregion

//{ #region Corwin Sex 2 - Dialog J-47 - Tested 2023-04-17
IF ~
	Global("XA_CorwinSex_2", "GLOBAL", 1)
	Global("XA_SleepInn", "GLOBAL", 1)
	AreaCheck("XAEXPL02")
	// play romance song
~ THEN BEGIN XA_XAEXPL02
	SAY @161 /* ~Gods, I've been looking forward to this all day. Help me get this armor off, lover.~ */
	
	IF ~~ THEN 
	GOTO XA_CorwinSex2_1
END

IF ~~ THEN BEGIN XA_CorwinSex2_1
	SAY @55 /* ~(You happily oblige, and watch as Schael gets undressed. The experience is as exhilarating and titilating as the first time the two of you made love. You also undress, and you engage in some sensual and passionate foreplay.)~ */
	
	IF ~
		Gender(Player1, MALE)
	~ THEN GOTO XA_CorwinSex2_1M
	
	IF ~
		Gender(Player1, FEMALE)
	~ THEN GOTO XA_CorwinSex2_12
END	

IF ~~ THEN BEGIN XA_CorwinSex2_1M
	SAY @58 /* ~(She pushes you back as your cock bobs up and down with eager anticipation.)~  */
	
	= @56 /* @56 = ~Mm. Before we get started. About what we discussed — your fighting skills.~  */
	
	IF ~~ THEN REPLY @57 /* ~You want to discuss this *now*?~ */
	GOTO XA_CorwinSex2_2
END

IF ~~ THEN BEGIN XA_CorwinSex2_2
	SAY @59 /* ~Now's as good a time as any. Plus...~ */
	
	= @60 /* ~(She smiles, and gives your member a playful tug.)~ */
	
	= @61 /* ~I think this'll be a lot more fun in the nude.~ */
	
	IF ~~ THEN REPLY @83 /* ~Fine...~ */
	GOTO XA_CorwinSex2_2_Now
	
	IF ~~ THEN REPLY @84 /* ~Can't we do this afterward?~ */
	GOTO XA_CorwinSex2_2_Later
END

IF ~~ THEN BEGIN XA_CorwinSex2_2_Now
	SAY @62 /* ~As I was saying earlier, your hand-to-hand skills are lacking, to put it mildly.~ */
	
	= @63 /* ~You can be easily overpowered and controlled by a lesser, but more skilled opponent.~ */
	
	IF ~~ THEN REPLY @64 /* ~Like who?~ */
	GOTO XA_CorwinSex2_3
	
	IF ~~ THEN REPLY @65 /* ~Oh, I doubt that.~ */
	GOTO XA_CorwinSex2_2A
END
IF ~~ THEN BEGIN XA_CorwinSex2_2_Later
	SAY @85 /* ~We can do this now, or I can get dressed, find another room, and leave you here to solve that ... (she eyes your throbbing member) ... problem, on your own. Your call, lover.~ */
	
	IF ~~ THEN REPLY @86 /* ~Point taken.~ */
	GOTO XA_CorwinSex2_2_Now
END

IF ~~ THEN BEGIN XA_CorwinSex2_2A
	SAY @67 /* ~Doubt it all you want, it doesn't change the fact that you'd lose in a fist fight to someone like...~ */
	
	IF ~~ THEN GOTO XA_CorwinSex2_3
END

IF ~~ THEN BEGIN XA_CorwinSex2_3
	SAY @66 /* ~Me, for instance.~ */
	
	IF ~~ THEN REPLY @68 /* ~Schael, I love you, but there's no way you can overpower me. For all of your strength, you're just a woman. A very beautiful, talented and strong woman, but a woman nonetheless.~ */
	GOTO XA_CorwinSex2_4
	
	IF ~~ THEN REPLY @69 /* ~You're capable I'm sure, Schael, but I don't like your chances.~ */
	GOTO XA_CorwinSex2_4
END

IF ~~ THEN BEGIN XA_CorwinSex2_4
	SAY @70 /* ~Is that so? I can beat you easily. Come on, try and hit me.~ */
	
	IF ~~ THEN REPLY @71 /* ~Are you serious?~ */
	GOTO XA_CorwinSex2_5
	
	IF ~~ THEN REPLY @73 /* ~Schael, I don't want to see you harmed.~ */
	GOTO XA_CorwinSex2_5
END

IF ~~ THEN BEGIN XA_CorwinSex2_5
	SAY @74 /* ~If it makes you feel better, love, I promise you won't hurt me.~  */
	
	IF ~~ THEN REPLY @72 /* ~Fine. You asked for it. (Attack her.)~ */
	GOTO XA_CorwinSex2_6
	
	IF ~~ THEN REPLY @75 /* ~No. I'm not going to hit you.~  */
	GOTO XA_CorwinSex2_5A
END

IF ~~ THEN BEGIN XA_CorwinSex2_5A
	SAY @76 /* ~What are you afraid of, hero? Hit me!~ */
	
	IF ~~ THEN 
	GOTO XA_CorwinSex2_5C
	
	IF ~
		Global("XA_PlayerSoulStolen", "GLOBAL", 1)
	~
	THEN GOTO XA_CorwinSex2_5B //OK
END

IF ~~ THEN BEGIN XA_CorwinSex2_5B
	SAY @77 /* ~Or did Irenicus take your balls, too?~ */
	
	= @78 /* ~(Her last comment sets you off, and you attack.)~ */
	
	IF ~~ THEN 
	GOTO XA_CorwinSex2_6
END

IF ~~ THEN BEGIN XA_CorwinSex2_5C
	SAY @80 /* ~(She stands with her arms crossed just beneath her alluring breasts, and a look of disappointment on her face.)~ */
		
	IF ~~ THEN REPLY @81 /* ~I said no!~ */
	GOTO XA_CorwinSex2_5D
	
	IF ~~ THEN REPLY @72 /* ~Fine. You asked for it. (Attack her.)~ */
	GOTO XA_CorwinSex2_6
END

IF ~~ THEN BEGIN XA_CorwinSex2_5D
	SAY @79 /* ~Fine. This'll be easier than I thought.~ */
	
	= @82 /* ~(In a swift, fluid motion, she moves toward you and delivers a solid uppercut to your jaw that sends you crashing to the floor.)~ */
	
	IF ~~ THEN
	GOTO XA_CorwinSex2_7
END

IF ~~ THEN BEGIN XA_CorwinSex2_6
	SAY @93 /* (You throw a looping right hook to her head. She easily ducks under it, advances forward and delivers a solid uppercut to your jaw that sends you crashing to the floor.) */
	
	IF ~~ THEN 
	GOTO XA_CorwinSex2_7
END

IF ~~ THEN BEGIN XA_CorwinSex2_7
	SAY @87 /* ~Dazed, you look up and see her standing over you, with her hands on her hips.~ */
	
	= @88 /* ~(She smiles and, using her toes, she fondles your balls and gives the tip of your member a gentle squeeze. Your penis rewards her toes with a steady flow of pre-cum.))~ */
	
	= @89 /* ~(Laughing gleefully, she continues with her footjob, and you moan loudly in pleasure as she brings you closer and closer to the edge.)~ */
	
	= @90 /* ~(Before you can release your seed onto her foot, she stops.)~ */
	
	= @91 /* ~Get up.~ */
	
	= @92 /* ~(With a groan, you shake off the cobwebs and unsteadily get back on your feet.)~*/
	
	= @94 /* ~Again, like you mean it this time.~*/
	
	= @95 /* ~(You throw a series of one-two combinations, but she easily dodges or parries your blows. Your throbbing tool flails wildly as you try and fail to hit her. She laughs.)~ */
	
	= @96 /* ~A little better. But as much as I like watching that big dick swing around, we're getting nowhere.~*/
	
	= @97 /* ~(You throw another right hook. She dodges, turns her body and grabs your right arm in one motion, then throws you over her back. As you try and scramble back to your feet, she takes your back and puts you into a sleeper hold, then wraps her legs around yours.)~*/
	
	= @98 /* ~Try and break out of this hold, lover.~ */
	
	= @99 /* ~(You're on your left side, with your left arm pinned behind your body. Her right forearm is tight across your neck, with her right hand holding her left bicep. Her left hand is behind your head, pushing it down into her right forearm. You try but are unable with your right arm to break her hold. She gradually increases the pressure, and soon, you're on the verge of blacking out.)~ */
	
	= @100 /* ~Come on, hero. I thought a big, strong man like you couldn't be beaten by a woman. You *are* a man, aren't you?~*/
	
	= @101 /* ~(In a fluid motion, she shifts her hold so that her left forearm is across your neck, while her right hand moves lower to seize your testicles.)~*/
	
	= @102 /* ~Yep, you're definitely a man, with all of a man's weaknesses.~ */
	
	= @103 /* ~(She squeezes your balls gently at first, then harder.)~ */
	
	= @104 /* ~(Your member shrinks due to the pain, and you frantically try with your right arm to break the vice-like grip she has on your balls. She responds by increasing the pressue on your neck. Your vision becomes dark as you try instead to pull her arm away from your neck, but as you do, she squeezes your jewels harder. Nearly in tears, you cry out in agony.)~ */
	
	IF ~~ THEN REPLY @105 /* ~Schael, y-you're hurting me! Please, stop! Let... aagh...  go!~*/
	GOTO XA_CorwinSex2_8
END

IF ~~ THEN BEGIN XA_CorwinSex2_8
	SAY @106 /* ~Hm, is this all that it takes to defeat the hero of Baldur's Gate? I hope not.~ */
	
	= @107 /* ~(She squeezes even harder.)~ */
	
	IF ~~ THEN REPLY @108 /* ~AAAHH!~ */
	GOTO XA_CorwinSex2_9
END

IF ~~ THEN BEGIN XA_CorwinSex2_9
	SAY @109 /* ~(You let out a high pitch scream that she quickly silences by increasing the pressure on your neck. Your vision darkens again, and one last, pitiful shudder marks the end of your feeble attempts at resistance. Thoroughly beaten, you unclench your fists in an involuntary sign of surrender, and lay still.)~ */
	
	= @110 /* ~(Just as you are about to lose consciousness, she mercifully releases her grip on your genitals and loosens her choke hold. You feel your blood rush back into your head, and you regain your lucidity.)~ */
	
	= @111 /* ~You see, love? Raw strength and power are not enough to win every fight. You need to learn how and where to apply your strength.~ */
	
	= @112 /* ~(She reaches down and grabs your package once again. She laughs as you flinch in fear.)~ */
	
	= @113 /* ~Relax, dear. You'll enjoy this.~ */
	
	= @114 /* ~(Instead of squeezing, she begins to lovingly and gently caress your aching balls with her left hand, while her right hand softly strokes your member. In moments, you're once again sporting a rock hard erection.)~ */
	
	= @115 /* ~(Kissing your neck, she seizes your fully erect tool and gives you a sensual handjob. Her hand, lubricated with your pre-cum, glides effortlessly up and down your shaft, slowly at first, then faster. It takes her less than a minute to force your seed out of you and onto her hand, while you moan weakly in submission and defeat.)~ */
	
	= @116 /* ~(That she's so easily able to dominate you physically and sexually is equal parts humiliating and erotic, you think to yourself. She holds up and eyes her right hand, now covered in your copious ejaculate.)~ */
	
	= @117 /* ~Mm. What a mess.~ */
	
	= @118 /* ~(She pushes you off her body and begins massaging her breasts with her left hand, while she fingers herself with the right.)~ */
	
	= @119 /*  ~Ohhh... <CHARNAME>... my hero... ohh!~*/
	
	= @120 /* ~(The sight and sound of Schael pleasuring herself while moaning your name is enough to reinvigorate your aching member. You stand over your love and begin to stroke your tool back to life. Eying your growing, throbbing tool, she spreads her legs and invites you in.)~ */
	
	= @121 /* ~Give it to me, lover! Show me how a great and powerful hero fucks his woman!~ */
	
	= @122 /*  ~(You immediately mount her and ram your member deep inside of her. She's extraordinarily tight, and the feeling is exquisite. You passionately kiss as you increase and try to synchronize the pace of your thrusts.)~ */
	
	= @123 /* ~(Once your thrusts are in sync, you fondle and then squeeze Schael's ample breasts. This is enough to send her over the edge. Screaming in pleasure, she arches her body as she experiences an earth-shattering climax.)~ */
	
	= @124 /* ~(With a few more savage thrusts, you reach your own orgasm. Schael, still recovering from her orgasm, weakly scissors her legs around your waist as you release your semen deep inside of her.)~ */
	
	= @125 /* ~(You pull out of Schael and roll over, so that you're laying side by side on the floor. Just in case Schael has any more ideas, you decide to cover your still aching package with your hands. She gets up first, and groggily walks over and falls into bed. You follow her and similarly collapse into bed.)~ */
	
	= @126 /* ~(You both sleep soundly, for a while at least. After a couple of hours, you find yourself awake in bed and turn to look at Schael. You think of how much this beautiful, incredible woman has changed your life for the better, and the confluence of events that've led you to eachother.)~ */
	
	IF ~~ THEN REPLY @127 /* ~My love? Are you awake?~ */ 
	GOTO XA_CorwinSex2_10
	
	
END

IF ~~ THEN BEGIN XA_CorwinSex2_10
	SAY @128 /*  ~(She slowly opens her eyes.)~ */
	
	= @129 /*~Mmm, yes hon.~*/
	
	= @130 /*~I hope I wasn't too rough with you earlier.~*/
	
	IF ~~ THEN REPLY @131 /* ~You were, a little, but ... how do I say this. I'm finding more and more that I enjoy being, ah, under your control in the bedroom.~*/
	GOTO XA_CorwinSex2_10A
	
	IF ~~ THEN REPLY @132 /* ~No, you were *amazing* Schael. You certainly know how to keep things interesting in the bedroom.~*/
	GOTO XA_CorwinSex2_10B
	
	IF ~~ THEN REPLY @133 /* ~We'll need a safe word next time for sure.~ */
	GOTO XA_CorwinSex2_10C
END

IF ~~ THEN BEGIN XA_CorwinSex2_10A
	SAY @134 /* ~(She smiles.)~ */
	
	= @135 /* ~Somehow I knew that you're the type of man that would appreciate being controlled by a woman.~ */
	
	IF ~~ THEN REPLY @139 /* ~So, what did I do wrong? How was I supposed to break out of that hold?~*/
	GOTO XA_CorwinSex2_11
END

IF ~~ THEN BEGIN XA_CorwinSex2_10B
	SAY @134 /* ~(She smiles.)~ */
	
	= @136 /* ~Variety is the spice of life, my love. I'd hate for our love life to become boring. Somehow... ~ */
	
	= @137 /* ~(She playfully pats your inert member.)~*/
	
	= @138 /* ~... I dont think we'll need to worry about that.~ */
	
	IF ~~ THEN REPLY @139 /* ~So, what did I do wrong? How was I supposed to break out of that hold?~*/
	GOTO XA_CorwinSex2_11
END

IF ~~ THEN BEGIN XA_CorwinSex2_10C
	SAY @140 /* ~I'm sorry. I guess I got a little carried away.~ */
	
	IF ~~ THEN REPLY @139 /* ~So, what did I do wrong? How was I supposed to break out of that hold?~*/
	GOTO XA_CorwinSex2_11
END

IF ~~ THEN BEGIN XA_CorwinSex2_11
	SAY @141 /* ~You needed to shift your weight and turn your body to free your left arm. If you'd done that, you probably would've been able to pry my right arm away and break the hold over your neck. Also, when I was holding your neck with one arm, you should've been able to break free. Instead, you tried to free those big balls of yours from my grip.~ */
	
	= @142 /* ~Not that I blame you. They're quite precious, after all.~  */
	
	= @143 /* ~(She reaches over and gently massages your package. The pain from earlier is completely gone, and you feel a twitch as your member begins to awaken from its slumber.)~ */
	
	= @144 /* ~Come on, get up. There are a few more things I need to show you.~ */
	
	= @145 /* ~(You spend the rest of the time going over a series of chokeholds, leglocks, and armbars. She teaches you how to apply them, and how to break free from them. It'll take several years of practice before you're as proficient as she is, but you feel that the knowledge she's imparted to you has already increased your effectiveness as a fighter.)~ */
	
	= @146 /* ~(During the lessons, it was difficult at times to focus, as the now familiar, strangely comforting feeling of being under Schael's control sent your libido into overdrive.)~*/
	
	IF ~~ THEN 
	GOTO XA_CorwinSex2_12
END

IF ~~ THEN BEGIN XA_CorwinSex2_12
	SAY @147 /* ~You end up making love again before finally falling asleep.~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XACS2EX")
	~
	EXIT
END
//} #endregion

//{ #region DLG-0001
	
//} #endregion

END

CHAIN PPIRENI2 XA_PPIRENI2_3_CHAIN_2
	@153 /* ~Worry not, my dear. Unlike the others, you will live past these next few minutes. Once I am done with <CHARNAME>, you'll soon be returned home, where you will assassinate the Council of Four on my behalf.~ */
	
	== LCCORWIJ
	@154 /* ~What..? No, never!~ */
	
	== PPIRENI2
	IF ~
		See("Yoshimo")
	~
	@155 /* ~It's a trivial matter. You'll be enslaved just as easily as Yoshimo was. Enjoy your last moments of autonomy, child.~ */
	
	== PPIRENI2
	IF ~
		!See("Yoshimo")
	~
	@156 /* ~It's a trivial matter. You'll be enslaved through the use of a geas. Enjoy your last moments of autonomy, child.~ */
END XACORWIJ XA_PPIRENI2_3_CHAIN_2_END