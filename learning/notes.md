documentation by tumble
# nul
The null device is a special file that discards all data written to it, but reports that the write operation succeeded.

# <nul set /p ".=%DEL%" > "%~2"
```bat
        <nul set /p ".=%DEL%" > "%~2"
```
same as...
```bat
        set /p ".=%DEL%" 0<nul 1>"%~2"
```        
put the contents of file "nul" into variable `%.%` and
put the value of `%DEL%` into file called "%~2"


# findstr /v /a:%1 /R "^$" "%~2" nul
look at files "%~2" and "nul" and look for files that don't contain start of line (^) and end of line ($) `/R "^$" "%~2"` and output file names in color `/a:%1`
outputs `(filename):(filecontents)` but the file contents is a backspace so it removes the colon

# del "%~2" > nul 2>&1
delete file "%~2" and send output to file "nul" and send any errors to file "nul"


