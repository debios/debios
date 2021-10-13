![DebiOS Logo](http://downloadings.sweb.cz/debioaslogo.png)

**DebiOS** - Operating system in batch!


# About
**DebiOS** is simulation of operating system, developed completely in **batch**. Whole system is based on few files that interact with each others. This simulator DOESN'T affect your computer data more than it should, so don't worry about losing data, infecting your computer, etc.

## History of DebiOS  
First version of **DebiOS** (beta14.3.29a, lost) was created on *March, 29 2014*. It was simple and only things that it could was boot, shutdown, show time, username and date and... that was all. It had only **12kB** and it was written completely in batch. All texts were in *czech* language and it was kinda boring. Last update was in **October, 2014** and then we started creating new system from the scratch. We called it "**One**" and previous versions kernel were called "**OpenTail**". But development was stopped and for another
*two years* there was no updates. On the beginning of 2017 i started developing **DebiOS** again in my free time and now I'm presenting
**translated version** with **new kernel and mechanisms**. Whole system is written in **batch** (only some parts, such as installation, is compiled).

## Installation

Installation is very easy. Start "**DebiOS Install.bat**" file in directory and follow steps.

## Using DebiOS

You can turn on system by **DebiOS.bat** file. System is automatically turned on after installation. After booting, you can use **DebiOS command line** (use **help** to show list of commands). If you are exiting DebiOS or any of its programs, **please use shutdown command** in command line/program. If you don't use this way, on next boot there can be some glitches in DebiOS ;)  

Warning - when you are using non-release builds(e.g. modified by yourself or by someone, builds that are not downloaded from this github), bugs may occur, also please don't use update feature, your system will downgrade to latest release version ;)  

## Fixing errors

### Installation errors  
If there is some error on install process, you get **blue screen** with informations about errors. Mostly it is missing files - just download them and place them in folder where they belongs. If you are sure, that you have all files in directories, please **open an issue**. If you get errors, that **doesn't** show blue screen, please **open an issue**.

### System errors  
If you have suspicion that DebiOS is not working properly, such as missing colors or Windows command line errors, check that you have all files installed in system. Most of files can be replaced after installation(only change file suffix from ".debiins" or ".debisysins" to ".debi"), but files in data folder CAN'T be replaced and you must remove DebiOS and install it again. If you are sure, that you have all files in directories, please **open an issue**.

## Changelog  

**Beta 14.3.29a:**   
-Booting and shutdown  
-Added shutdown, time, date and username features  

**Beta 14.3.29b:**   
-Added "restart" feature   

**Beta 14.3.30:**   
-Faster shutdown  
-Upgraded color user interface  
-Removed useless files  

**Full 14.5.24:**  
-Removed useless files  
-Reduced size  

**Beta 14.8.05:**  
-New booting screen  
-Added calculator feature  

**DebiOS REVOLUTION:**  
-Calculator repaired  
-Added DebiOS market feature  
-Booting errors repaired  

**DebiOS 4.1.17U**  
-Recoded kernel  
-Installation is needed to use DebiOS  
-Color user interface setting  
-Date feature error fixed  
-Improved booting and shutdown time  
-New filesystem (.debi, .debiins, .debisys) *RenEngine 1.0*  
-Systeminfo  
-Improved calculator  
  
**DebiOS 24.4.17U**  
-unlocking    
   
**DebiOS 4.5.17U**  
-Some changes in UI  
-Username feature  
-Fixed bugs  

**DebiOS 16.7.18-dev**  
-Improved installation (detection of errors)  
-RenEngine 1.1 filesystem  
-Data storing improved  

**DebiOS 15.9.18-dev**  
-Translation to english  
-Improved installation mechanism  
-Data storing improved  
-iRE filesystem  

**DebiOS 16.9.18-dev**  
-Translations and glitches fixed  

**DebiOS 18.9.18-dev**  
-Fixed some bugs   
-AUTOMATIC UPDATE SYSTEM (if update is available, system notifies user, update via command)   

**DebiOS 24.9.18-dev**  
-Fixed some bugs   
-Added NOTEPAD feature  
-Notepad will be downloaded automatically   

**DebiOS 15.10.18-dev**  
-You can now change your color user interface with command "color change"     
-Improved CUI settings  
-Removed background color settings  
-Some bug fixes  
-Improved startup system  

**DebiOS 09.12.18-dev**  
-Install and startup is now open - no compiler used(system is now fully in batch)    
  
**DebiOS 10.12.18-dev**  
-Install & startup bugfix  

**DebiOS 08.09.19-dev**  
-Updated what events are being logged - DebiAPPs install, UI color changes etc.   
-Basic bugfixes   
TODO: systeminfo->debiapp, advanced log system - you can select what you want to log, more apps/maybe games coming soon-at least one in next update  

**DebiOS 10.9.19-dev**  
-Bugfix - commands with spaces no longer crashes system   
-Some more bugfixes  
-About command  
-Added "Snake" game - Command "snake" or "snake game"  
-Systeminfo is now DebiAPP (DebiAPPs are updated separately on every start of system)  
-When starting debiapps, the system checks if they are in core folder, if not, it tries to download them  

**DebiOS 11.9.19-dev**  
-Fixed display error in help command  
-DebiAPPs check system bugfix  
-Known bug: Updating from this version breaks entire system  
  
**DebiOS 12.9.19-dev**   
-Update system bugfixes    
  
**DebiOS 01.2.20-dev**  
-Installation bugfixes   
  
**DebiOS 25.5.20-dev**  
-Minor bugfixes  
-Installation redesign and updates  
  
**DebiOS 26.5.20-dev**  
-Ton of bugfixes  
-System files optimalization                            
-Language fixes                                     
-DebiAPP: Notepad - updated with bugfixes and read feature (delete the original notepad.debiapp from /core/ if updating from older version)  
-DebiAPP: Snake - game over screen updated   
-DebiAPP: SystemInfo - bugfixes, new info recorded   

**DebiOS 31.5.20-dev**  
-Minor changes in update system    

**DebiOS 11.10.21-dev**  
-A bit of code polishing      
-Many bugfixes (e.g. DebiAPP update system)      
-Help command was modified  
-Boot time was reduced     
-DebiAPP: Snake - game was modified (Game Over screen)   
-DebiAPP: Notepad - now saves files in UTF-8     
    
## TODO  

iRE 2.0 (centralised filesystem)  
Multimedia functions  
Fully customizable CUI **✓**    
Advanced logging    
Advanced update system **✓**  
Multilanguage support  
Mouse control support  
Create GUI for DebiOS  
  
## DebiOS Structure and future interfaces  
<iframe src="https://imgur.com/a/07bJDdK"> </iframe>  
