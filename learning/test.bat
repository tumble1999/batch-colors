SETLOCAL EnableDelayedExpansion
set color=4F
set text="Hello World"

rem set prompt to #(backspace)#(Esc key)#
rem show command operations
rem 
rem prompt #$H#$E# & echo on & for %%b in (1) do rem
rem output: #(backspace)#(Esc key)# rem

rem produces a table
rem #|    1(%%a)     |  2(%%b)   | 3(%%c)
rem -|---------------|-----------|--------
rem 1|  [backspace]  | (Esc key) |  rem

for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
    set "DEL=%%a"
    )

set /p ".=%DEL%" 0<nul 1>%text%
rem outputs (filename):(filecontents) but the file contents is a backspace so it removes the colon
findstr /a:%color% /R "^$" %text% nul
del %text%
goto :eof