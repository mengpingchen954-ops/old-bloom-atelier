@echo off
cd /d "%~dp0"
call npm install
start "" http://127.0.0.1:5198
call npm run dev
