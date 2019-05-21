REM //////////////////////////////////////////////////////////////////////////////////////////
REM   _____         __               _      __         __   __  __                __       
REM  / ___/_ _____ / /____  __ _    | | /| / /__  ____/ /__/ / / /  ___  ___ ____/ /__ ____
REM / /__/ // (_-</ __/ _ \/  ' \   | |/ |/ / _ \/ __/ / _  / / /__/ _ \/ _ `/ _  / -_) __/
REM \___/\_,_/___/\__/\___/_/_/_/   |__/|__/\___/_/ /_/\_,_/ /____/\___/\_,_/\_,_/\__/_/   
REM
REM -- A mod created by RediPanda, CEO and Lead Developer of NXT Studios
REM -- Small Slant
REM //////////////////////////////////////////////////////////////////////////////////////////

REM This mod is open-sourced, allowing third-party developers to use this mod's code. If you want
REM to create your own mod, you need to know how to do batch coding and abide by all NXT Modding
REM protocols. Don't forget the NXT Mod-Loader API provides you information from the game in regards
REM of player data and the execution of TextGame's executive systems.

REM --------------------------------------------------------------------------
REM 	    ___   ___  ____  _   __         _      __   __      
REM		   / _ | / _ \/  _/ | | / /__ _____(_)__ _/ /  / /__ ___
REM		  / __ |/ ___// /   | |/ / _ `/ __/ / _ `/ _ \/ / -_|_-<
REM		 /_/ |_/_/  /___/   |___/\_,_/_/ /_/\_,_/_.__/_/\__/___/
REM --------------------------------------------------------------------------         

REM List of usable variables outputted by the player's client:

REM Client Version 					- 	%api.System.Client.Version%
REM Is connected to the Internet 	- 	%api.System.Networking.InternetStatus% (Possible outputs: 1 - Yes, it is connected. 0 - Not connected.)
REM Client Up to Date 				- 	%api.System.Client.VersionUTD% (Possible outputs: 1 - Yes, it is up to date. 0 - Not up to date.)


REM List of usable variables outputted by the player's launcher (TextGame's Main Engine)

REM Game Version				    - 	%system.gameVersion%
REM Game Version Build 				- 	%system.versionBuild2%
REM Is connected to the Internet	- 	%system.Networking.InternetStatus% (Possible outputs: 1 - Yes, it is connected. 0 - Not connected.)
REM Allocated defualt RAM value		- 	%system.MaxRAM%
REM Allocated defualt RAM type		- 	%system.typeRAM%
REM Plugin #1 						-	%system.Plugin.One%
REM Plugin #2 						-	%system.Plugin.Two%
REM Plugin #3 						-	%system.Plugin.Three%
REM Plugin #4 						-	%system.Plugin.Four%
REM Plugin #5 						-	%system.Plugin.Five%
REM Plugin #6 						-	%system.Plugin.Six%


REM List of usable variables outputted by the player's PlayerData Engine (Player Logins, Registration and Data Information Engine)

REM Player's Name					-	%api.Fetch.Player.Name%

REM Player's Level					-	%api.Fetch.Player.LVL%
REM Player's XP						-	%api.Fetch.Player.XP%

REM Player's HP						-	%api.Fetch.Player.data.HP%
REM Player's Max HP					-	%api.Fetch.Player.data.HPMax%
REM Player's Shield					-	%api.Fetch.Player.data.Shield%
REM Player's Max Shield				-	%api.Fetch.Player.data.ShieldMax%

REM Player's Balance				-	%api.Fetch.Player.data.lore.Balance%
REM Player's Rank Title				-	%api.Fetch.Player.data.lore.Rank%
REM Player's Last Seen Location		-	%api.Fetch.Player.data.lore.Location%
REM Player's Account Version		-	%api.Fetch.Player.data.Account%

REM Player's Weapon ID				-	%api.Fetch.Player.data.WeaponID%
REM Player's Ammo Count				-	%api.Fetch.Player.data.ammo%
REM Player's Weapon Damage Value	-	%api.Fetch.Player.data.WeaponDMG%


REM List of usable variables executed by the TextGame Engine.

REM Fetches the latest playerdata 	-	%execute.data.playerdata% (DO NOT CONFUSED THIS WITH YOUR LOCAL ACCOUNT DATA! THIS IS THE OFFICIAL ACCOUNT DATA STREAM!)
REM Fetches the latest world data	-	%execute.data.worlds% (Local worlds, not from the server.)

REM Start Log Directory Script		- 	%engine.startLog%
REM Finish Log Directory Script 	- 	%engine.endLog%
REM Reset directory to root/dir~ 	- 	%engine.resetDir%

REM Initiate the local save account -	%local.PlayerData.Save%
REM Load the local account data		-	%local.PlayerData.Load%


REM // DO NOT REMOVE THIS SEGMENT OF THE MOD, IT IS REQUIRED FOR THE MOD TO WORK!!!
:NXTPROTOCOLS

%execute-TextGameDirectory%
%execute-TextGameAPI%
%execute-TextGame%



REM // DO NOT REMOVE ANYTHING ABOVE THIS COMMENT ARGUMENT!

REM // MOD INFORMATION:



REM set local.ModName= (Name of your mod)
REM set local.ModVersion=(Version of your mod)
REM set local.ModAuthor=(Your preffered mod username)

REM set local.ModIDA=(ID of A provided from NXTStudios.ga)
REM set local.ModIDB=(ID of B provided from NXTStudios.ga)
REM set local.ModIDC=(ID of C provided from NXTStudios.ga)

REM set local.ModType=(Interface, Simulation, Server)



REM // FILL OUT INFORMATION:

set local.ModName=Custom World Loader
set local.ModVersion=1
set local.ModAuthor=RediPanda

set local.ModIDA=
set local.ModIDB=
set local.ModIDC=

set local.ModType=Simulation

REM // ANYTHING UNDER THIS COMMAND ARGUMENT IS FREE FOR YOUR MOD CODING!!!


REM // Checks if the game version's atleast 1.5, which the mod is currently supporting as of 18/05/2019                                                                                   