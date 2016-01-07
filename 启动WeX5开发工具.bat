@echo off
title WeX5开发工具
@echo 正在启动WeX5开发工具...
cd /d %~dp0
set JRE_HOME=""
set JAVA_HOME=""
set CLASSPATH=""
set PATH=%windir%;%windir%\System32;%PATH%
set startDir=%cd%

echo %startDir%|findstr /ibe "[0-9a-z:\\\~\!\@\#\$\(\)\_\+\`\-\=\;\'\.\,]*">nul&&goto run||goto error

:error
echo 错误：不要把版本解压放在包含有中文、空格和特殊字符的目录！
pause
goto end

:run
cd "%startDir%\studio"
start studio.exe

rem 延迟关闭
ping 127.0.0.1 > nul

:end
