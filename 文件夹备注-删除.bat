@echo off  
setlocal enabledelayedexpansion  
  
echo.&echo.  
set /p "fn=�������ļ���·�������ո�����������������: "  
echo.&echo.  
  
REM ȥ��·��ĩβ���ܴ��ڵ�����  
set "fn=!fn:"=!"  
  
if not exist "!fn!" (  
    echo �ļ��в����ڣ�����·���Ƿ���ȷ��  
    goto :eof  
)  
  
if not exist "!fn!\desktop.ini" (  
    echo �ļ���û�б�ע��Ϣ��  
    goto :eof  
)  
  
echo ����ȡ���ļ��б�ע...  
attrib -s -h "!fn!\desktop.ini"  
del "!fn!\desktop.ini"  
echo �ļ��б�ע��ȡ����  
pause