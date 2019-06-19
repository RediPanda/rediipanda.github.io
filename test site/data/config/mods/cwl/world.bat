@ECHO OFF
TITLE Module A Introduction // %applicationName%
CLS

goto GREETINGS

:DEATH
color 0b
cls
echo.
echo.
echo     [SYSTEM] You have sadly ended your journey.
echo.
echo     [SYSTEM] %deathMessage1%
echo              %deathMessage2%
echo              %deathMessage3%
echo              %deathMessage4%
echo              %deathMessage5%
echo.
echo.
PAUSE
echo.
echo     [AUTHOR] You can replay the story by deleting the "data" file in the cwl folder!
echo.
echo.
PAUSE
EXIT

:GREETINGS
echo.
echo.
echo Hello %username%,
echo.
echo Welcome to my Custom World for my Module A English Assignment of 19/06/19.
echo.
echo.
echo Please, enjoy this multimodal story as I have worked on this atleast more than 3 hours a day, including the
echo main game engine this world is running off.
echo.
echo.
echo Interesting Facts about TextGame while we're loading the required data for this world.
echo.
echo Project Name: TextGame
echo.
echo 	Project Coding Language: Batch Coding (Windows Console Command Prompt).
echo.
echo.
echo 	Project was officially started on the 29th May, 2017.
echo 	The initial idea was to create a base game using the old and classical black/white approach.
echo.
echo 	Between the period of May 2018 --^> July 2018, the Project work was halted due to lack of motivation.
echo.
echo 	Eventually, it kickstarted back in September 2018 and receives support weekly.
echo.
echo.
echo	About the Project:
echo.
echo	The project file (as of 16/06/19) consists of:
echo		Game Engine:			Lines:			Length (Character Count):
echo		CWL Mod:			Lines:			Length (Character Count):
echo		This World:			Lines:			Length (Character Count):
echo.
echo 	All project files are hosted using a service called GitHub; a repository site for developers.
echo.
echo 	All project files are edited using the tool: Notepad++.
echo.
echo. 	Batch Coding is very easy. As long as you got the motivation and the dedication to learn a new language, it's easy to pick up.
echo.
echo.
echo 	** IF YOU DO WISH TO REPLAY THIS WORLD TO PLAY A DIFFERENT PATHWAY, OPEN THE README FILE AND HEAD TO SECTION: #Resetting CWL Data
echo.
echo.
echo Thank you for taking your time for browsing through this multimodal assignment. Have a good day and enjoy!
TIMEOUT 5 /NOBREAK >NUL
PAUSE

:CWLLOADLOCAL

CD /D %GameLauncherDirectory%
PUSHD data
PUSHD config
PUSHD mods
PUSHD cwl

IF EXIST data goto EXIST
pushd data
IF EXIST local.player goto EXIST
CD /D %GameLauncherDirectory%
PUSHD data
PUSHD config
PUSHD mods
PUSHD cwl

cls
echo.
echo.
echo 	There was no local save detected. Starting a new session...
echo.
echo.
TIMEOUT 2 /NOBREAK >NUL
md data
pushd data
md local.player
pushd local.player

:CREATEGENDER
cls
echo.
echo.
echo	Are you a male or female? [M/F]
echo.
echo.

set /p "cho=> "

IF "%cho%"=="M" goto SAVEPLAYERDATA
IF "%cho%"=="m" goto SAVEPLAYERDATA
IF "%cho%"=="F" goto SAVEPLAYERDATA
IF "%cho%"=="f" goto SAVEPLAYERDATA

goto CREATEGENDER

:SAVEPLAYERDATA
cls

IF "%cho%"=="M" set gender=male
IF "%cho%"=="m" set gender=male
IF "%cho%"=="F" set gender=female
IF "%cho%"=="f" set gender=female

IF "%gender%"=="male" set saveproverb=he
IF "%gender%"=="female" set saveproverb=she

IF "%gender%"=="male" set saveproverb2=his
IF "%gender%"=="female" set saveproverb2=her

set name=%username%

(
	echo set proverb=%saveproverb%
) > proverb.bat

(
	echo set proverb2=%saveproverb2%
) > proverb2.bat

(
	echo set lastLocalLocation=1-11
) > location.bat

:EXIST
CD /D %GameLauncherDirectory%
PUSHD data
PUSHD config
PUSHD mods
PUSHD cwl
PUSHD data
PUSHD local.player
CALL location.bat
CALL proverb.bat
CALL proverb2.bat
cls

set name=%username%

goto %lastLocalLocation%

:1-11
echo.
echo.
echo     [??? 1] Hey... I think %proverb%'s waking up...
echo.
TIMEOUT 2 /NOBREAK >NUL
echo.
echo.
echo     [??? 2] Oh is %proverb%? Let me check.
echo.
TIMEOUT 3 /NOBREAK >NUL	
echo.
echo.
echo     [%name%] *Groans..* (Looks around the small room with confusion)
echo.
TIMEOUT 2 /NOBREAK >NUL
:CHOICE1-11
echo.
echo.
echo     [??? 2] Hey hey, don't stress yourself too much. Would you like some water?
echo.
TIMEOUT 1 /NOBREAK >NUL	
echo.
echo     [SYSTEM] Please select 1 or 2.
echo.
echo     1 ] Accept the offer
echo     2 ] Decline the offer
echo.
set /p "cho=> "

IF "%cho%"=="1" set CFA1-11=1
IF "%cho%"=="2" set CFA1-11=2

IF "%CFA1-11%"=="1" goto NEXT1-11
IF "%CFA1-11%"=="2" goto NEXT1-12

cls
goto CHOICE1-1

:NEXT1-11
cls
echo.
echo.
echo     [??? 2] Ah okay. Here you go...
echo.
TIMEOUT 1 /NOBREAK >NUL
echo     [EVENT] You take a sip of water. you feel more refreshed.
echo.
echo.
TIMEOUT 4 /NOBREAK >NUL
goto 1-12


:NEXT1-12
cls
echo.
echo.
echo     [??? 2] Oh ok. I'll tuck it in your backpack...
echo.
TIMEOUT 3 /NOBREAK >NUL
goto 1-12

:1-12
cls
echo.
echo.
echo     [??? 1] (??? puts the newspaper down on the table and begins to stand up)
echo.
TIMEOUT 3 /NOBREAK >NUL
echo.
echo     [??? 1] *clears throat* So. Uhhhmmm, how should I put this.
echo.
TIMEOUT 2 /NOBREAK >NUL
echo.
echo     [??? 1] Me and my wife just found you lying on the side of that green hill over there.
echo.
echo     [??? 1] (Points to the window that is filled with trees)
echo.
TIMEOUT 3 /NOBREAK >NUL
echo.
echo     [??? 2] Is it alright for us to know what were you doing there?
echo.
TIMEOUT 3 /NOBREAK >NUL
echo.
echo     [SYSTEM] Please select 1 or 2.
echo.
echo     1 ] 7252346758325987346987235235876325
echo     2 ] 9674326879325907853325867325832687
echo.
set /p "cho=> "

IF "%cho%"=="1" set CFA1-12=1
IF "%cho%"=="2" set CFA1-12=2

IF "%CFA1-12%"=="1" goto NEXT1-13
IF "%CFA1-12%"=="2" goto NEXT1-13

:NEXT1-13

CD /D %GameLauncherDirectory%
PUSHD data
PUSHD config
PUSHD mods
PUSHD cwl
PUSHD data
PUSHD local.player

(
	echo set lastLocalLocation=NEXT1-13
) > location.bat

cls
echo.
echo     [SYSTEM] Saved last session!
echo.
echo.
echo     [%name%] Yeah... I'm sorry. I can't seem to remember what happened.
echo.
TIMEOUT 4 /NOBREAK >NUL
echo.
echo     [??? 1] Yeah, thats okay. Uhhh... Do you know your name?
echo.
TIMEOUT 3 /NOBREAK >NUL
echo.
echo     [%name%] I'm %name%. What about you and her?
echo.
TIMEOUT 3 /NOBREAK >NUL
echo.
echo     [Steve] Name's Steve. and my lovely wife is Aurora. Please feel free to ask any questions!
echo.
TIMEOUT 2 /NOBREAK >NUL
goto 1-13

:PROMPT1-12
echo.
echo     [Steve] Anything else? *Grins*
echo.
TIMEOUT 2 /NOBREAK >NUL
goto 1-13

:1-13
echo.
echo.
echo     [SYSTEM] Please select from 1-3.
echo.
echo     1 %answered1-13-1% ] Where am I?
echo     2 %answered1-13-2% ] Is it alright if i can take some supplies?
echo     3 %answered1-13-3% ] Leave the building.

set /p "cho=> "

IF "%cho%"=="1" goto 1-13-1
IF "%cho%"=="2" goto 1-13-2
IF "%cho%"=="3" goto 1-13-3

goto 1-13

:1-13-1
set answered1-13-1=*asked*

(
	echo set beginning-identity=1
) >> beginning.bat

cls
echo.
echo.
echo     [%name%] So Steve... Where am I exactly?
echo.
TIMEOUT 2 /NOBREAK >NUL
echo.
echo     [Steve] You're in the land of Wynfield, a very peaceful nation I say myself!
echo.
TIMEOUT 4 /NOBREAK >NUL
echo.
echo     [Steve] But judging by your attire, I think you're from the Xenode Nation.
echo.
TIMEOUT 5 /NOBREAK >NUL
goto PROMPT1-12

:1-13-2
set answered1-13-2=*asked*

IF EXIST beginning.bat CALL beginning.bat

(
	echo set beginning-supply=1
) >> beginning.bat

IF "%beginning-supply%1"=="11" goto 1-13-2-2

cls
echo.
echo.
echo     [%name%] Is it okay if i can grab my stuff before I go?
echo.
TIMEOUT 2 /NOBREAK >NUL
echo.
echo     [Steve] Yes! That's fine with us. We usually help lost travellers all the time and we might have 1 goodie bag left over. Please, take it!
echo             This bag has a constant LED, so it looks nicer when the smog seeps through.
echo.
TIMEOUT 4 /NOBREAK >NUL
echo.
echo     [EVENT] Acquired: "Steve's Tootbag"
echo.
TIMEOUT 2 /NOBREAK >NUL
goto PROMPT1-12

:1-13-2-2
set answered1-13-2=*asked*

(
	echo set beginning-supply=1
) >> beginning.bat

cls
echo.
echo.
echo     [%name%] Is it okay if i can grab my stuff before I go?
echo.
TIMEOUT 3 /NOBREAK >NUL
echo.
echo     [Steve] What? You just took our bag? What are you on about? *laughing*
echo.
TIMEOUT 4 /NOBREAK >NUL
goto PROMPT1-12

:1-13-3
set answered1-13-3=*asked*
cls
echo.
echo.
echo     [%name%] Hey Steve, is it alright if I can head out?
echo.
TIMEOUT 2 /NOBREAK >NUL
echo.
echo     [Steve] Sure! We're not going to baby you are we? *Grins*
echo.
TIMEOUT 2 /NOBREAK >NUL
goto 2-1-1

:2-1-1
cls

(
	echo set lastLocalLocation=2-1-1
) > location.bat

cls

echo.
echo.
echo     [EVENT] Saved last session!
echo.
echo.
echo     (You take a step outside the house. The cold wind chills your smooth face.)
echo.
TIMEOUT 4 /NOBREAK >NUL
echo.
echo     (You look to the right of the T stone path. It leads to a small town.)
echo.
TIMEOUT 3 /NOBREAK >NUL
echo.
echo     (You look to your left, it leads to nowhere.)
echo.
TIMEOUT 4 /NOBREAK >NUL
:2-1-12
echo.
echo.
echo     [SYSTEM] Please select from 1-1.
echo.
echo     1 ] Head through the right path.

set /p "cho=> "

IF "%cho%"=="1" goto 2-1-13
cls
goto 2-1-12

:2-1-13
cls
echo.
echo     (The birds chirp, as you walk along the stone path.)
echo.
TIMEOUT 4 /NOBREAK >NUL
echo.
echo     (The sunlight, slowly scraping through the leaves as it falls onto your face.)
echo.
TIMEOUT 4 /NOBREAK >NUL

CALL beginning.bat

IF "%beginning-supply%1"=="11" goto 2-1-14
goto 2-1-14-2

cls
:2-1-14
cls
color 04
echo.
echo     [??? 1] HEY, %proverb%'S HOLDING OUR SUPPLIES, OVER THERE!
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 2] WE GOT SOMETHING HERE GUYSS
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 3] WHAT WHERE
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 1] %proverb%'s over there... Walking down that path.
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 2] BRING THE SMOKE GUN
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 5] ROGER THAT!
echo.
TIMEOUT 4 /NOBREAK >NUL

color 0c
cls

echo.
echo     (A big machine rolls out of the shrubs next to the path.)
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     (2 men in dark armoured plating holds you down.)
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 3] Its time... To start the new Resistance and purge all Xenodes civilians...
echo.
TIMEOUT 3 /NOBREAK >NUL

echo.
echo     [??? 2] YOUR THE GODDAMN REASON THE SKIES ARE ALWAYS FOGGY
echo.
TIMEOUT 3 /NOBREAK >NUL

echo.
echo     [%name%] What... What are you on about...?
echo.
TIMEOUT 3 /NOBREAK >NUL

echo.
echo     [??? 1] Don't act dumb with me Xenodian, PULL %proverb2%'S NAMETAG OUT OF THE JACKET
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     (One person viciously ripped out your jacket and pulled a LED card.)
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 6] Uh.... its... SIR I CANT READ
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 1] THEN GIVE IT TO ME OR SOMEONE WHO CAN DINGBILLY
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 4] %proverb2% NAME IS %name%
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 1] Ah.... %name%. Such a cute name. Too bad no one will say it after this.
echo.
TIMEOUT 4 /NOBREAK >NUL

cls

color 04

echo.
echo     (A resistance member came out with a gun attached to the backpack using a tube.)
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     (She flips the switch and starts to suck smoke from the air in.)
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 3] Sayonara %name%. A pleasure serving you to Hell.
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     (A black ball of smoke shot out and hit you in the face.)
echo.
TIMEOUT 4 /NOBREAK >NUL


set deathMessage1=The Wynfield Resistance Squad spotted you in the smog forest.
set deathMessage2=Because they found the Resistance supplies, they assumed that you stole thei supplies.
set deathMessage3=As part of the Resistance's movement of preventing pollution, they are to kill all Xenodian on site.
set deathMessage4=Using the smoke already in the air, ??? 3 revs the weapon to suck that smoke and make you enhale it.
set deathMessage5=This is called Hypercapnia, when theres too much CO2 in your body to handle.

goto DEATH

:2-1-14-2
cls
color 0f

echo.
echo     (A big wall of dark fog sets in. Visibility is low.)
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     (An omnimous orange glow awaits infront of you.)
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 1] Hey! You over there! Quick, come here!
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     (You run towards the voice.)
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 1] What do you think you're doing hanging outside at a time like this.
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 1] Oh, Your a Xenodian... Quick, come inside.
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     (??? 1 closes the door behind him, locking 3 deadlocks.)
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 1] Are you nuts? Not only is there acid rain, you also got the Resistance finding every single Xenodians left over in Wynfield.
echo.
TIMEOUT 4 /NOBREAK >NUL

:PROMPT2-1-2
echo.
echo     1 ] What's the Resistance?
echo     2 ] Acid rain..?
echo     3 ] Who are you..?

set /p "cho=> "

IF "%cho%"=="1" goto 2-1-2-1
IF "%cho%"=="2" goto 2-1-2-2
IF "%cho%"=="3" goto 2-1-2-3

cls
goto PROMPT2-1-2

:2-1-2-1
cls
echo.
echo     [??? 1] The Resistance is a opposed group of people that recently formed due to how their family members and closes
echo             friends died from either the acid rains or the toxins in the air cause by your nation. Pollution was so bad
echo             that it started to kill people over in our beautiful land.
echo.
TIMEOUT 12 /NOBREAK >NUL

echo.
echo     [%name%] Is that so?
echo.
TIMEOUT 3 /NOBREAK >NUL

echo.
echo     [??? 1] Well yes. It's the reason I dragged you into my cafe, otherwise someone would've spotted you and killed you.
echo.
TIMEOUT 6 /NOBREAK >NUL

goto PROMPT2-1-2

:2-1-2-2
cls

echo.
echo     [%name%] Whats happening with the acid rain?
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [??? 1] The byproducts of the waste outputted by your power factories, burning mass coal, increased the acidity of the water molecules in the air.
echo             It then makes the rain very acidic that it can burn through metal and trees.
echo.
TIMEOUT 7 /NOBREAK >NUL

goto PROMPT2-1-2

:2-1-2-3
cls

echo.
echo     [%name%] Who, are you exactly...?
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [Alfred] You can call me Alfred, your name tag says %name%.
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [Alfred] But now's not the time for introductions, I believe that everyone has a chance and that it's not fair that Xenodians like you which
echo              may have no correlations to the power plants should deserve to die. Quick, follow me.
echo.
TIMEOUT 7 /NOBREAK >NUL

echo.
echo     [Alfred] I know the quickest, stealthiest path towards your border. There you will be safe. Follow the trail and you'll get there.
echo.
TIMEOUT 4 /NOBREAK >NUL

cls

echo.
echo     (Alfred opens the backdoor and points to the dirt track.)
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [Alfred] Please get there safely!
echo.
TIMEOUT 4 /NOBREAK >NUL

cls

:PROMPT2-1-3

echo.
echo     1 ] Run through the trail.
echo     2 ] Walk it.

set /p "cho=> "

IF "%cho%"=="1" goto 2-1-3-1
IF "%cho%"=="2" goto 2-1-3-2

cls
goto PROMPT2-1-3

:2-1-3-1
cls

echo.
echo     (You started to run through the trail.)
echo.
TIMEOUT 5 /NOBREAK >NUL

echo.
echo     (In the distance, you noticed a giant wall.)
echo.
TIMEOUT 5 /NOBREAK >NUL

echo.
echo     [%name%] That must be the border!
echo.
TIMEOUT 5 /NOBREAK >NUL

echo.
echo     (Behind you was a wave of acid rain. Drop by drop, it started to corrode anything in it's way.)
echo.
TIMEOUT 5 /NOBREAK >NUL

echo.
echo     (You've managed to barely survive that acid rain attack.)
echo.
TIMEOUT 5 /NOBREAK >NUL

goto 2-2

:2-1-3-2
echo.
echo     (You started to walk through the trail.)
echo.
TIMEOUT 5 /NOBREAK >NUL

echo.
echo     (In the distance, you noticed a giant wall.)
echo.
TIMEOUT 5 /NOBREAK >NUL

echo.
echo     [%name%] That must be the border!
echo.
TIMEOUT 5 /NOBREAK >NUL

echo.
echo     (Behind you was a wave of acid rain. Drop by drop, it started to corrode anything in it's way.)
echo.
TIMEOUT 5 /NOBREAK >NUL

set deathMessage1=You failed to survive from the natural effects of carbon pollution. This is refered as acid rain.
set deathMessage2=The fossil fuel and coal burnt up which leaves the sulfur and bad chemicals in its form which
set deathMessage3=makes the rain more "acidic".
set deathMessage4= 
set deathMessage5= 

goto DEATH

:2-2
cls
echo.
echo      (You've reached the Xenode Border Wall. The place is full of smoke, with floglights to illuminate the path and buildings.)
echo.
TIMEOUT 7 /NOBREAK >NUL

:PROMPT2-2-3
echo.
echo     [SYSTEM] Ending prompt.
echo.
echo     1 ] Give up on your journey to stop pollution.
echo     2 ] Enter the border and change the world.
echo     3 ] Go back to the Wynfield forest.
echo.

set /p "cho=> "

IF "%cho%"=="1" goto 2-2-3-1
IF "%cho%"=="2" goto 2-2-3-2
IF "%cho%"=="3" goto 2-2-3-3

cls
goto PROMPT2-1-3

:2-2-3-1
cls

echo.
echo     (You've given up on your journey.)
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [%name%] Well, screw this. This isn't my problem to fix.
echo.
TIMEOUT 4 /NOBREAK >NUL

GOTO ENDING1


:2-2-3-1
cls

echo.
echo     (You've decided to head towards the border)
echo.
TIMEOUT 4 /NOBREAK >NUL

echo.
echo     [AUTHOR] This part of the world has been deactivated due to bad volume readings. Sorry for making it a short
echo              story. I was as well, excited to make this longer. Unless I'm allowed to update the worlds after the testing
echo              and if you still want to embrace the story, let me know so I can start working on a hotfix.
echo.
TIMEOUT 12 /NOBREAK >NUL

goto ENDING2

:2-2-3-1
cls

echo.
echo     (You've head back to the forest and found the small town.)
echo.
TIMEOUT 4 /NOBREAK >NUL

goto 2-1-14

:ENDING1
cls
color 0a

echo.
echo     Thankyou for playing this short program!
echo.
echo     You have reach to Ending-1, which means you chose to give up the journey.
echo.
echo     Don't worry, another hero will come and eventually save us again.
echo.
echo     (Exiting the game in 15 seconds.)
echo.
TIMEOUT 15 /NOBREAK >NUL
EXIT

:ENDING2
cls
color 0a

echo.
echo     Thankyou for playing this short program!
echo.
echo     You have reach to Ending-2, which means you chose to continue the journey and save the world.
echo.
echo     Sadly this interesting part got deactivated the day before submission due to many bugs generated.
echo.
echo     I am very sorry for cutting it this short and I do hope that you understand what I've been trying to talk about.
echo.
echo     (Exiting the game in 15 seconds.)
echo.
TIMEOUT 15 /NOBREAK >NUL
EXIT