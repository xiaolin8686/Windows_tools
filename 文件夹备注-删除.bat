@echo off  
setlocal enabledelayedexpansion  
  
echo.&echo.  
set /p "fn=请输入文件夹路径（带空格请用引号括起来）: "  
echo.&echo.  
  
REM 去除路径末尾可能存在的引号  
set "fn=!fn:"=!"  
  
if not exist "!fn!" (  
    echo 文件夹不存在，请检查路径是否正确。  
    goto :eof  
)  
  
if not exist "!fn!\desktop.ini" (  
    echo 文件夹没有备注信息。  
    goto :eof  
)  
  
echo 正在取消文件夹备注...  
attrib -s -h "!fn!\desktop.ini"  
del "!fn!\desktop.ini"  
echo 文件夹备注已取消。  
pause