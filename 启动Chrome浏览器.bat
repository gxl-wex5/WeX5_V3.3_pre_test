@echo off
title Chrome�����
@echo ��������Chrome�����...

cd /d %~dp0
set startDir=%cd%
cd "%startDir%\tools\chromium\32"
start chrome.exe --disable-infobars

rem �ӳٹر�
ping 127.0.0.1 > nul
