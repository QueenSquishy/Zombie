@echo off

set "targets=sophos lion ATP"

for /f "tokens=2" %%a in ('tasklist /fi "STATUS eq running" /nh /fo csv') do (
    set "process=%%~a"
    for %%b in (%targets%) do (
        echo !process! | find /i "%%~b" >nul && (
            echo Terminating !process!...
            taskkill /f /im !process! >nul
        )
    )
)