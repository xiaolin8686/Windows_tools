@echo off
echo.&echo.
set /p fn=�ļ���·��(�����Ͻ���):
echo.&echo.
set /p it=��ע����:
attrib %fn%\desktop.ini -s -h
del %fn%\desktop.ini
echo [.ShellClassInfo]>%fn%\desktop.ini
echo InfoTip=%it%>>%fn%\desktop.ini
attrib %fn%\desktop.ini +h +s
attrib %fn% +s
echo �ļ��б�ע����ӡ�
pause