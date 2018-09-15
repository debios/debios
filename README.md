![DebiOS Logo](http://downloadings.sweb.cz/debioaslogo.png)

**DebiOS** - Operating system in batch!


# About
**DebiOS** is simulation of operating system, developed completely in **batch**. Whole system is based on few files that interact with each others. This simulator DOESN'T affect your computer, it CAN'T communicate with internet, so don't worry about losing data, infecting your computer, etc.

## History of DebiOS
First version of **DebiOS** (beta14.3.29a, lost) was created on *March, 29 2014*. It was simple and only things that it could was boot, shutdown, show time, username and date and... that was all. It had only **12kB** and it was written completely in batch. All texts were in *czech* language and it was kinda boring. Last update was in **October, 2014** and then we started creating new system from the scratch. We called it "**One**" and previous versions kernel were called "**OpenTail**". But development was stopped and for another *two years* there was no updates. On the beginning of 2017 i started developing **DebiOS** again in my free time and now I'm presenting **translated version** with **new kernel and mechanisms**. Whole system is written in **batch** (only some parts, such as installation, is compiled).

## Installation

Installation is very easy. Start "**DebiOS Install.exe**" file in directory and follow steps.

## Using DebiOS

You can turn on system by **DebiOS.exe** file. System is automatically turned on after installation. After booting, you can use **DebiOS command line** (use **help** to show list of commands). If you are exiting DebiOS or any of its programs, **please use shutdown command** in command line/program. If you don't use this way, on next boot there can be some glitches in DebiOS ;)

## Fixing errors

### Installation errors
If there is some error on install process, you get **blue screen** with informations about errors. Mostly it is missing files - just download them and place them in folder where they belongs. If you are sure, that you have all files in directories, please **open an issue**. If you get errors, that **doesn't** show blue screen, please **open an issue**.

### System errors
If you have suspicion that DebiOS is not working properly, such as missing colors or Windows command line errors, check that you have all files installed in system. Most of files can be replaced after installation(only change file suffix from ".debiins" or ".debisysins" to ".debi"), but files as core/col.debi and data folder CAN'T be replaced and you must remove DebiOS and install it again. If you are sure, that you have all files in directories, please **open an issue**.

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
