@echo off
echo.&echo.
set /p fn=文件夹路径(可以拖进来):
echo.&echo.
set /p it=备注内容:
attrib %fn%\desktop.ini -s -h
del %fn%\desktop.ini
echo [.ShellClassInfo]>%fn%\desktop.ini
echo InfoTip=%it%>>%fn%\desktop.ini
attrib %fn%\desktop.ini +h +s
attrib %fn% +s
echo 文件夹备注已添加。
pause