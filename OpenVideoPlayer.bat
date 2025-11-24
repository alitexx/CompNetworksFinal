@echo off
REM Go to the folder this .bat file is in
cd /d "%~dp0"

REM Start the server in its own window
start "" python Server.py 554

REM Give the server a moment to start
timeout /t 2 >nul

REM Start the client (this window will stay open)
python ClientLauncher.py 127.0.0.1 554 5004 movie.Mjpeg
