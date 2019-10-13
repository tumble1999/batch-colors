@echo off
setlocal EnableDelayedExpansion
rem %1: color
rem %2: text

rem create backspace key
for /f "tokens=1 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%z in (1) do rem"') do (set BS=%%a)
rem create tempory  file with contents of the backspace key
set /p "a=%BS%" 0<nul 1>"%~2"
rem find file that isnt empty between files: file just created and nul file
findstr /v /a:%1 /r "^$" "%~2" nul
rem delete tempory file
del "%~2">nul 2>&1