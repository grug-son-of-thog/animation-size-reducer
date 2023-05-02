@echo off
setlocal EnableDelayedExpansion
for %%A in (input\*.gif) do (
    if exist "%%~A" (
        mkdir "%%~dpnA"
        mkdir "output"
        bin\ffmpeg.exe -i "%%~A" "%%~dpnA\%%~nA-%%05d.png"
        for /f "delims=" %%a in ('bin\ffprobe.exe -v error -select_streams v:0 -show_entries stream^=height -of default^=noprint_wrappers^=1:nokey^=1 "%%A"') do (
            set "resolution=%%a"
        )
        bin\gifski.exe --fps 24 -H !resolution! -o "output\%%~nA.gif" "%%~dpnA"\*
        rmdir /q /s "%%~dpnA"
    ) else (
        echo %%~A does not exist.
    )
)
endlocal