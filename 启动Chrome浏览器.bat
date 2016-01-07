@echo off
title Chromeä¯ÀÀÆ÷
@echo ÕýÔÚÆô¶¯Chromeä¯ÀÀÆ÷...

cd /d %~dp0
set startDir=%cd%
cd "%startDir%\tools\chromium\32"
start chrome.exe --disable-infobars

rem ÑÓ³Ù¹Ø±Õ
ping 127.0.0.1 > nul
